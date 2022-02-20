select distinct subscriber_type
from {{ source ('austin_bikeshare','bikeshare_trips')}}