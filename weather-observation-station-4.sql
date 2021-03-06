--link: https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true

DECLARE @Total INT;
DECLARE @TotalDistinct INT; 
DECLARE @Diff INT;

SET @Total = (ISNULL((SELECT COUNT(*) 
                    FROM STATION), 0))

SET @TotalDistinct = (ISNULL((SELECT COUNT(DISTINCT CITY) 
                             FROM STATION), 0))
                        
SET @Diff = @Total - @TotalDistinct;
select @Diff;
