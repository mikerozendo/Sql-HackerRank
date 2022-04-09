--https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

select *
from (select 'result' = (case
                        when (((A + B) < C)) then 'Not A Triangle' 
                        when (((A + B) > C) and ( A = B and B = C) ) then 'Equilateral'
                        when (((A + B) > C) and ((A = B and B != C) or (B = C and C != A) or (C = A and A != B))) then 'Isosceles'
                        when (((A + B) > C) and (A != B and B != C and A != C)) then 'Scalene'  
                        else 'Not A Triangle' end) from triangles) as tabela
