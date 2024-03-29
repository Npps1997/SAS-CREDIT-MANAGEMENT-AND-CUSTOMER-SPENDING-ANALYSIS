/* Data Importing */

PROC IMPORT DATAFILE='/home/u63723197/Project_Library/Dataset.xls'
	DBMS=Xls REPLACE
	OUT= PROJECT.CUSTOMER;
	SHEET= "Customer Acqusition";
	GETNAMES=YES;
	INFORMAT LIMIT INR12.;
RUN;

PROC PRINT DATA = PROJECT.CUSTOMER;
FORMAT LIMIT INR12.;
RUN;


PROC IMPORT DATAFILE='/home/u63723197/Project_Library/Dataset.xls'
	DBMS=Xls REPLACE
	OUT= PROJECT.SPEND;
	SHEET= "Spend";
	GETNAMES=YES;
	INFORMAT AMOUNT INR12.;
RUN;

PROC PRINT DATA = PROJECT.SPEND;
FORMAT AMOUNT INR9.;
RUN;


PROC IMPORT DATAFILE='/home/u63723197/Project_Library/Dataset.xls'
	DBMS=Xls REPLACE
	OUT= PROJECT.REPAYMENT;
	SHEET= "Repayment";
	GETNAMES=YES;
	INFORMAT AMOUNT INR12.;
RUN;

PROC PRINT DATA = PROJECT.REPAYMENT;
FORMAT AMOUNT INR9.;
RUN;