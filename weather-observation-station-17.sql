--https://www.hackerrank.com/challenges/weather-observation-station-17/problem?isFullScreen=true

select 
cast(min(long_w) as decimal(36,4))
from station
where lat_n in (
    select min(lat_n)
    from station 
    where lat_n > 38.7780)
