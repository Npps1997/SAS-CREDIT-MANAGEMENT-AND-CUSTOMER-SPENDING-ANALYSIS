/* Monthly interest(rate=2.9) for each customer */

PROC SQL;
CREATE TABLE Monthly_Interest AS
SELECT
CUSTOMER,
Year,
Month,
MonthlySpend,
MonthlySpend * 0.029 AS MonthlyInterest
FROM
WORK.Monthly_Spend;
QUIT;

PROC PRINT DATA= WORK.Monthly_Interest;
Title "Monthly Interest For Each Customer";
RUN;

PROC SQL;
Title "Monthly Interest For Each Customer";
Select Distinct * from WORK.Monthly_Interest;
QUIT;