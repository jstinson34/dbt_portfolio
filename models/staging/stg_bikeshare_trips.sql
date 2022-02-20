select 
  subscriber_type,
  start_station_id as station_id,
  start_station_name as station_name,
  duration_minutes
from {{source('austin_bikeshare','bikeshare_trips')}}