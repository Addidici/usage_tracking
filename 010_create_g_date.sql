-- Created by Adrian Ward, Addidici - http://blog.obiee.info
-- This is the raw, no finese, non packaged version.

-- Drop is already exists
DROP TABLE G_DATE;

-- Create a table called G_DATE.  you call the table whatever you like!
-- Note the use of Id columns.  These are dates but in the number form using a mask of YYYYMMDD

CREATE TABLE G_DATE
(
DATE_WID     		NUMBER(8) NOT NULL,
CAL_DATE 		DATE NOT NULL,
DAY_NAME 		CHAR(10),
MONTH_NAME 		CHAR(10),
MONTH_NUMBER 		NUMBER(2),
YEAR_NUMBER		NUMBER(4),
DAY_OF_WEEK 		NUMBER(1),
DAY_OF_MONTH 		NUMBER(2),
DAY_OF_YEAR 		NUMBER(3),
WEEK_OF_YEAR 		NUMBER(2),
QUARTER_OF_YEAR 	NUMBER(1),
YEAR_AGO_DATE 		DATE,
MONTH_AGO_DATE 		DATE,
WEEK_AGO_DATE 		DATE,
DAY_AGO_DATE 		DATE,
NEXT_DAY_DATE 		DATE,
NEXT_WEEK_DATE 		DATE,
NEXT_MONTH_DATE		DATE,
NEXT_YEAR_DATE		DATE,
CUR_MONTH_FIRST_DATE	DATE,
CUR_MONTH_LAST_DATE	DATE,
CUR_YEAR_FIRST_DATE	DATE,
YEAR_MONTH		NUMBER(6),
WEEK_WID		NUMBER(6)
);



