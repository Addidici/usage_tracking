-- AS BIPLATFORM Owner

GRANT SELECT ON S_NQ_ACCT       TO &dw_user;
GRANT SELECT ON S_NQ_DB_ACCT    TO &dw_user;
GRANT SELECT ON S_NQ_INITBLOCK  TO &dw_user;


-- AS DW Owner
create synonym S_NQ_ACCT for &biplatform_user.S_NQ_ACCT;
create synonym S_NQ_DB_ACCT for &biplatform_user.S_NQ_DB_ACCT;
create synonym S_NQ_INITBLOCK for &biplatform_user.S_NQ_INITBLOCK;

-- Create a synonym to your Dashboards table
create synonym WC_UT_DASHBOARDS for DMS_MD_RP_DASHBOARDS;
--SELECT * FROM WC_UT_DASHBOARDS;  

-- Create a synonym to your Date table
--If you have no DAY table then run 010_greate_g_date
create synonym WC_UT_DAY for D_DAY;
--SELECT * FROM WC_UT_DAY;  
