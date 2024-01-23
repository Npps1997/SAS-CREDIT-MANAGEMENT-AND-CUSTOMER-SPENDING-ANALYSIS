/* Monthly Profit For Bank From Each Customer */

DATA Monthly_Profit;
MERGE WORK.monthly_spend WORK.Monthly_Repayment WORK.Monthly_Interest;
BY CUSTOMER YEAR MONTH;
MonthlyProfit = COALESCE(MonthlyRepayment,0) + COALESCE(MonthlyInterest,0) - COALESCE(MonthlySpend,0);
RUN;

PROC PRINT DATA= WORK.MONTHLY_PROFIT;
Title "Monthly Profit For Bank From Each Customer";
RUN;

PROC SQL;
Title "Monthly Profit For Bank From Each Customer";
Select DISTINCT * FROM WORK.MONTHLY_PROFIT;
QUIT;