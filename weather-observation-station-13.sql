--https://www.hackerrank.com/challenges/weather-observation-station-13/problem?isFullScreen=true&h_r=next-challenge&h_v=zen

select 
cast(sum(lat_n) as decimal(36,4))
from station
where lat_n > 38.7880 
and lat_n < 137.2345  
