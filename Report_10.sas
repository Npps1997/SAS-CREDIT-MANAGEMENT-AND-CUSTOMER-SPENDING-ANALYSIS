/* Who are the highest paying 10 customers? */

PROC SQL OUTOBS=10;
CREATE TABLE TopPayingCustomers AS
SELECT c.CUSTOMER, SUM(s.Amount) AS TotalSpending
FROM PROJECT.CUSTOMER c
INNER JOIN PROJECT.Spend s
ON c.Customer = s.Customer
GROUP BY c.Customer
ORDER BY TotalSpending DESC;
QUIT;

PROC PRINT DATA=WORK.TOPPAYINGCUSTOMERS;
TITLE "Top 10 Paying Customers";
RUN;

PROC SGPLOT DATA=TopPayingCustomers;
VBAR Customer / RESPONSE=TotalSpending Datalabel;
TITLE "Top 10 Paying Customers";
RUN;

