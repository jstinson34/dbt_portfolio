with stations as (
    select *
    from {{ ref('stg_bikeshare_stations') }}
),

trips as (
    select *
    from {{ ref('fct_bikeshare_trips') }}
),

start_austin_bikeshare as (
    select 
      stations.station_name,
      trips.subscriber_type,
      trips.duration_minutes,
    from trips
    inner join stations using (station_id)
),

final as (
select
  subscriber_type,
  station_name, 
  avg(duration_minutes) as avg_duration
from start_austin_bikeshare
group by subscriber_type, station_name
order by station_name)

select *
from final