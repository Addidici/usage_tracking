accept odi_user char prompt 'Enter ODI user: '
accept apex_user char prompt 'Enter APEX user: '
prompt Enter password for user '&odi_user': 
conn &odi_user;

grant select on snp_lp_inst to &apex_user;
grant select on snp_lpi_run to &apex_user;
grant select on snp_lpi_step to &apex_user;
grant select on snp_lpi_step_log to &apex_user;
grant select on snp_sess_task to &apex_user;
grant select on snp_sess_task_log to &apex_user;