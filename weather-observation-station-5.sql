link: https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

DECLARE @HighestRow1 VARCHAR(225);
DECLARE @HighestRow2 VARCHAR(225);
DECLARE @LowestRow1 VARCHAR(225);
DECLARE @LowestRow2 VARCHAR(225);
DECLARE @ResultHighest VARCHAR(225);
DECLARE @ResultLowest VARCHAR(225);

SELECT TOP 2 CITY as CITY INTO #t_Highest FROM STATION ORDER BY LEN(CITY) DESC
SELECT TOP 2 CITY as CITY INTO #t_Lowest FROM STATION ORDER BY LEN(CITY)

SET @HighestRow1 = (SELECT TOP 1 CITY FROM #t_Highest);
SET @LowestRow1 = (SELECT TOP 1 CITY FROM #t_Lowest);

SET @HighestRow2 = (SELECT CITY FROM 
                    (SELECT CITY, Row_Number() OVER (ORDER BY LEN(CITY) DESC) AS rowNumber
                        FROM #t_Highest) AS tbl
                        WHERE rowNumber = 2)
                    
SET @LowestRow2 = (SELECT CITY FROM 
                    (SELECT CITY, Row_Number() OVER (ORDER BY LEN(CITY) DESC) AS rowNumber
                        FROM #t_Lowest) AS tbl
                        WHERE rowNumber = 2)
                        
SET @ResultHighest = (CASE WHEN ((LEN(@HighestRow1)) = (LEN(@HighestRow2))) 
           THEN (SELECT TOP 1 CITY FROM 
                 #t_Highest ORDER BY CITY)
           ELSE @HighestRow1 END)
           
SET @ResultLowest = (CASE WHEN ((LEN(@LowestRow1)) = (LEN(@LowestRow2))) 
           THEN (SELECT TOP 1 CITY FROM 
                 #t_Lowest ORDER BY CITY)
           ELSE @LowestRow1 END)
           
SELECT @ResultLowest, LEN(@ResultLowest)
SELECT @ResultHighest, LEN(@ResultHighest)

drop table #t_Lowest, #t_Highest
