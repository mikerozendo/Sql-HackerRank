--https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true

select 
cast(min(lat_n) as decimal(36,4))
from station 
where lat_n > 38.7780
