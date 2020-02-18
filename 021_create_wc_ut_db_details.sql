-- Author: Adrian Ward
-- Date: Feb 2020
-- Desc: Used to store the DB detail rows
CREATE TABLE WC_UT_DB_DETAILS 
   (	
   	ID                   NUMBER(10,0), 
	LOGICAL_QUERY_ID     VARCHAR2(50 BYTE) , 
	QUERY_TEXT           VARCHAR2(1024 BYTE) , 
	QUERY_BLOB           CLOB , 
	TIME_SEC             NUMBER(10,0), 
	ROW_COUNT            NUMBER(20,0), 
	START_TS             DATE,
	START_DT             DATE, 
	START_DT_WID         NUMBER(10,0), 
	START_HOUR_MIN       CHAR(5 BYTE) , 
	END_TS               DATE, 
	END_DT               DATE, 
	END_HOUR_MIN         CHAR(5 BYTE) , 
	HASH_ID              VARCHAR2(128 BYTE) , 
	PHYSICAL_HASH_ID      VARCHAR2(128 BYTE) COLLATE USING_NLS_COMP
   )
   ;
