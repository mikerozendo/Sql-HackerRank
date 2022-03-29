--https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true

select 
cast(sum(lat_n) as decimal(36,2)) as 'lat',
cast(sum(long_w) as decimal(36,2)) as 'lon'
from station 
