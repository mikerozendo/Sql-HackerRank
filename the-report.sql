--https://www.hackerrank.com/challenges/the-report/problem?isFullScreen=true

select
case when tbl_grades.grade < 8 then 'NULL' else tbl_students.name end as 'Name', 
tbl_grades.grade as 'Grade',
tbl_students.marks as 'Marks'
from students tbl_students
inner join grades tbl_grades
on tbl_students.marks between tbl_grades.min_mark and tbl_grades.max_mark
order by tbl_grades.grade desc, 
tbl_students.name asc
