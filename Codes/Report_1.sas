/* Monthly Spend for Each Customer */

PROC SQL;
CREATE TABLE Monthly_Spend AS
SELECT
CUSTOMER,
YEAR(MONTH) AS Year,
MONTH(MONTH) AS Month,
SUM(AMOUNT) AS MonthlySpend
FROM
PROJECT.SPEND
GROUP BY
CUSTOMER, YEAR(MONTH), MONTH(MONTH);
QUIT;

PROC PRINT DATA= WORK.monthly_spend;
Title "Monthly Spend For Each Customer";
RUN;

PROC SQL;
TITLE "Monthly Spend For Each Customer";
SELECT DISTINCT * FROM WORK.MONTHLY_SPEND;
QUIT;


