with trips as (
    select *
    from {{ ref('stg_bikeshare_trips') }}
)

select *
from trips