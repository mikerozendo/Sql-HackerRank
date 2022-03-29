--https://www.hackerrank.com/challenges/weather-observation-station-14/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select 
cast(max(lat_n) as decimal(36,4))
from station
where lat_n < 137.2345
