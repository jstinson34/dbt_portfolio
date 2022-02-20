with stations as (
    select *
    from {{ref('stg_bikeshare_stations')}}
)

select *
from stations