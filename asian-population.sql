https://www.hackerrank.com/challenges/asian-population/problem?isFullScreen=true

select sum(city_tbl.population)
from city city_tbl
inner join country country_tbl on country_tbl.code = city_tbl.CountryCode
where country_tbl.continent = 'Asia'
