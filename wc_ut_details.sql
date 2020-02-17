CREATE TABLE WC_UT_DETAILS
( 
USER_NAME		        VARCHAR2(128 BYTE),
REPOSITORY_NAME		    VARCHAR2(128 BYTE),
SUBJECT_AREA_NAME		VARCHAR2(128 BYTE),
NODE_ID		            VARCHAR2(100 BYTE),
START_TS		        DATE,
START_DT		        DATE,
START_HOUR_MIN          CHAR(5 BYTE),
END_TS		            DATE,
END_DT		            DATE,
END_HOUR_MIN            CHAR(5 BYTE),
QUERY_TEXT		        VARCHAR2(1024 BYTE),
QUERY_BLOB              CLOB,
QUERY_KEY		        VARCHAR2(128 BYTE),
SUCCESS_FLG             NUMBER(10,0),
ROW_COUNT               NUMBER(20,0),
TOTAL_TIME_SEC          NUMBER(10,0),
COMPILE_TIME_SEC        NUMBER(10,0),
NUM_DB_QUERY            NUMBER(10,0),
CUM_DB_TIME_SEC         NUMBER(10,0),
CUM_NUM_DB_ROW          NUMBER(20,0),
CACHE_IND_FLG           CHAR(1 BYTE) DEFAULT ‘N’ NOT NULL ENABLE,
QUERY_SRC_CD		    VARCHAR2(30 BYTE) DEFAULT ”,
SAW_SRC_PATH		    VARCHAR2(250 BYTE) DEFAULT ”,
SAW_DASHBOARD		    VARCHAR2(150 BYTE) DEFAULT ”,
SAW_DASHBOARD_PG		VARCHAR2(150 BYTE) DEFAULT ”,
PRESENTATION_NAME		VARCHAR2(128 BYTE) DEFAULT ”,
ERROR_TEXT		        VARCHAR2(250 BYTE) DEFAULT ”,
IMPERSONATOR_USER_NAME	VARCHAR2(128 BYTE) DEFAULT ”,
NUM_CACHE_INSERTED      NUMBER(10,0) DEFAULT NULL,
NUM_CACHE_HITS          NUMBER(10,0) DEFAULT NULL,
ID		                VARCHAR2(50 BYTE),
ECID		            VARCHAR2(1024 BYTE),
TENANT_ID		        VARCHAR2(128 BYTE),
SERVICE_NAME		    VARCHAR2(128 BYTE),
SESSION_ID              NUMBER(10,0),
HASH_ID		            VARCHAR2(128 BYTE)
 );
 
CREATE INDEX WC_UT_DETAILS_M1 ON WC_UT_DETAILS (START_DT, START_HOUR_MIN, USER_NAME);
CREATE INDEX WC_UT_DETAILS_M3 ON WC_UT_DETAILS (USER_NAME) ;
ALTER TABLE WC_UT_DETAILS ADD CONSTRAINT WC_UT_DETAILS_PK PRIMARY KEY (ID);


