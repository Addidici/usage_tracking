--Create the users table

-- STart with the Column defintions as per SA System instructions

CREATE TABLE SA_SYSTEM_USER   
(   
EMAIL               VARCHAR2(100),   
EMAIL_PRIORITY      VARCHAR2(10) DEFAULT 'HNL',   
EMAIL_TYPE          VARCHAR2(50) DEFAULT 'html',   
CELL_PHONE          VARCHAR2(40),   
CELL_PHONE_PRIORITY VARCHAR2(20),   
PAGER               VARCHAR2(20),   
PAGER_PRIORITY      VARCHAR2(30),   
HANDHELD            VARCHAR2(20),   
HANDHELD_PRIORITY   VARCHAR2(30),   
TIMEZONE            VARCHAR2(100),   
GROUP_NAME          VARCHAR2(20),   
LOGON               VARCHAR2(50) NOT NULL,   
DISPLAY_NAME        VARCHAR2(100),   
LOCALE              VARCHAR2(20) DEFAULT 'en',   
LANGUAGE            VARCHAR2(20) DEFAULT 'en'  
);
