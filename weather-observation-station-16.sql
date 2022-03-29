--https://www.hackerrank.com/challenges/weather-observation-station-16/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

select 
cast(min(lat_n) as decimal(36,4))
from station 
where lat_n > 38.7780
