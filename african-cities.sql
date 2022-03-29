--https://www.hackerrank.com/challenges/african-cities/problem?isFullScreen=true

select 
city_join.name
from city city_join
inner join country country_join on country_join.code = city_join.countrycode
where country_join.continent = 'Africa'
