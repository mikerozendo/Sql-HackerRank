--https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
--TODO

declare @samanthaAvg decimal(8,2) = 0;
declare @correctAvg decimal(8,2) = 0;
declare @result int = 0;

set @samanthaAvg = (select avg((convert(decimal,(replace(convert(varchar(225), salary),'0',''))))) from employees) 
set @correctAvg = (select avg(salary) from employees)
set @result = CEILING(@correctAvg - @samanthaAvg)
select @result
