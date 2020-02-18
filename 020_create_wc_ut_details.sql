CREATE TABLE WC_UT_DETAILS
( 
USER_NAME		        VARCHAR2(128 BYTE),
REPOSITORY_NAME		    VARCHAR2(128 BYTE),
SUBJECT_AREA_NAME		VARCHAR2(128 BYTE),
NODE_ID		            VARCHAR2(128 BYTE),
START_TS		        DATE,
START_DT		        DATE,
START_HOUR_MIN          CHAR(5 BYTE),
END_TS		            DATE,
END_DT		            DATE,
END_HOUR_MIN            CHAR(5 BYTE),
QUERY_TEXT		        VARCHAR2(4096 BYTE),
QUERY_BLOB              CLOB,
QUERY_KEY		        VARCHAR2(128 BYTE),
SUCCESS_FLG             NUMBER(10,0),
ROW_COUNT               NUMBER(20,0),
TOTAL_TIME_SEC          NUMBER(10,0),
COMPILE_TIME_SEC        NUMBER(10,0),
NUM_DB_QUERY            NUMBER(10,0),
CUM_DB_TIME_SEC         NUMBER(10,0),
CUM_NUM_DB_ROW          NUMBER(20,0),
CACHE_IND_FLG           CHAR(1 BYTE),
QUERY_SRC_CD		    VARCHAR2(30 BYTE) ,
SAW_SRC_PATH		    VARCHAR2(250 BYTE) ,
SAW_DASHBOARD		    VARCHAR2(150 BYTE) ,
SAW_DASHBOARD_PG		VARCHAR2(150 BYTE) ,
PRESENTATION_NAME		VARCHAR2(128 BYTE) ,
ERROR_TEXT		        VARCHAR2(250 BYTE) ,
IMPERSONATOR_USER_NAME	VARCHAR2(128 BYTE) ,
NUM_CACHE_INSERTED      NUMBER(10,0) ,
NUM_CACHE_HITS          NUMBER(10,0) ,
ID		                VARCHAR2(50 BYTE),
ECID		            VARCHAR2(1024 BYTE),
TENANT_ID		        VARCHAR2(128 BYTE),
SERVICE_NAME		    VARCHAR2(128 BYTE),
SESSION_ID              NUMBER(10,0),
HASH_ID		            VARCHAR2(128 BYTE),
TOTAL_TEMP_KB 			NUMBER(20,0) , 
RESP_TIME_SEC 			NUMBER(10,0),
START_DT_WID            NUMBER(10,0),
QUERY_TYPE_WID          NUMBER(10,0),
DASHBOARD_WID           NUMBER(10,0),
DASHBOARD_PAGE_WID      NUMBER(10,0),
ANALYSIS_WID            NUMBER(10,0),
SUBJECT_AREA_WID        NUMBER(10,0),
USER_WID                NUMBER(10,0) 
 )
 NOCOMPRESS NOLOGGING;

CREATE INDEX WC_UT_DETAILS_M1 ON WC_UT_DETAILS (START_DT, START_HOUR_MIN, USER_NAME);
CREATE INDEX WC_UT_DETAILS_M3 ON WC_UT_DETAILS (USER_NAME) ;
ALTER TABLE WC_UT_DETAILS ADD CONSTRAINT WC_UT_DETAILS_PK PRIMARY KEY (ID);
