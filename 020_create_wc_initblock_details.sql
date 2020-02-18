-- Author: Adrian Ward
-- Date: Feb 2020
-- Desc: Used to store the DB detail rows
DROP TABLE WC_UT_INITBLOCK_DETAILS;

CREATE TABLE WC_UT_INITBLOCK_DETAILS 
   (	
    USER_NAME           VARCHAR2(128 BYTE) , 
	REPOSITORY_NAME     VARCHAR2(128 BYTE) , 
	TENANT_ID           VARCHAR2(128 BYTE) , 
	SERVICE_NAME        VARCHAR2(128 BYTE) , 
	ECID                VARCHAR2(1024 BYTE) , 
	SESSION_ID          NUMBER(10,0), 
	BLOCK_NAME          VARCHAR2(128 BYTE) , 
	START_TS            TIMESTAMP (6), 
	END_TS              TIMESTAMP (6), 
	DURATION            NUMBER(13,3), 
	NOTES               VARCHAR2(1024 BYTE),
	START_DT_WID            NUMBER(10,0),
	USER_WID                NUMBER(10,0) 
   )  
 NOCOMPRESS NOLOGGING ;