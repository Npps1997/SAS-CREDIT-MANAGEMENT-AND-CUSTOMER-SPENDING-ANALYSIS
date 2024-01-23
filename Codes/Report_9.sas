/* People in which segment are spending more money */

PROC SQL;
CREATE TABLE SpendingBySegment AS
SELECT c.Segment, SUM(s.Amount) AS TotalSpending
FROM PROJECT.Customer c
INNER JOIN PROJECT.Spend s
ON c.Customer = s.Customer
GROUP BY c.Segment
ORDER BY TotalSpending DESC;
QUIT;

PROC PRINT DATA=WORK.SpendingBySegment;
TITLE "SPENDING BY SEGMENT";
RUN;

PROC SGPLOT DATA=WORK.SpendingBySegment;
VBAR Segment / RESPONSE= TOTALSPENDING DATALABEL;
TITLE "SPENDING BY SEGMENT";
RUN;
