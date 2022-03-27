--link:https://www.hackerrank.com/challenges/more-than-75-marks/problem?isFullScreen=true

--#TODO ************8

SELECT STUDENTS.Name as Name, STUDENTS.ID as Id INTO #t_names 
FROM STUDENTS WHERE Marks > 75 
ORDER BY SUBSTRING(Name, LEN(Name) - 3, LEN(Name))


CASE WHEN
(SELECT COUNT(*) FROM #t_names
GROUP BY SUBSTRING(Name, LEN(Name) - 3, LEN(Name)))
THEN (SELECT Name FROM #t_names
ORDER BY SUBSTRING(Name, LEN(Name) - 3, LEN(Name)), Id)
ELSE
    (SELECT Name FROM #t_names) END
