--https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

select 
occupation as 'occupation', 
count(occupation) as 'occupation_count'
into #t_occupations_count
from occupations 
group by occupation

select 
concat(name,'(',substring(occupation,1,1),')')
from occupations
order by name

select
concat('There are a total of ',occupation_count, ' ',lower(occupation),'s.')
from #t_occupations_count
order by occupation_count

drop table #t_occupations_count
