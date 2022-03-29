--https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true

select 
tbl_country.continent, avg(tbl_city.population) 
from country tbl_country
inner join city tbl_city on tbl_city.CountryCode = tbl_country.Code
group by tbl_country.continent
