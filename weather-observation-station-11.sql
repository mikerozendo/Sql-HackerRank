--link: https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true

SELECT distinct City 
FROM STATION 
WHERE City NOT LIKE '[A,E,I,O,U]%[A,E,I,O,U]'
