--link: https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true

SELECT distinct City 
FROM STATION 
WHERE City NOT LIKE '%[A,E,I,O,U]'
