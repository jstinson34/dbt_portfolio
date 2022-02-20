select 
  station_id,
  name as station_name,
  status,
  property_type as bike_location,
  number_of_docks
from {{source('austin_bikeshare','bikeshare_stations')}}