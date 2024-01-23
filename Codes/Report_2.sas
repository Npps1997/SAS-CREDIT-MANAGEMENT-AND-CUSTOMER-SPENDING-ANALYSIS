/* Monthly Repayment for Each Customer */

PROC SQL;
CREATE TABLE Monthly_Repayment AS
SELECT
CUSTOMER,
YEAR(MONTH) AS Year,
MONTH(MONTH) AS Month,
SUM(AMOUNT) AS MonthlyRepayment
FROM
PROJECT.REPAYMENT
GROUP BY
CUSTOMER, YEAR(MONTH), MONTH(MONTH);
QUIT;

PROC PRINT DATA= WORK.Monthly_Repayment;
Title "Monthly Repayment For Each Customer";
RUN;

PROC SQL;
Title "Monthly Repayment For Each Customer";
SELECT distinct * from WORK.MONTHLY_REPAYMENT;
QUIT;