accept apex_user char prompt 'Enter APEX user: '
prompt Enter password for user '&apex_user': 
conn &apex_user;

create synonym snp_lp_inst for &apex_user.snp_lp_inst;
create synonym snp_lpi_run for &apex_user.snp_lpi_run;
create synonym snp_lpi_step for &apex_user.snp_lpi_step;
create synonym snp_lpi_step_log for &apex_user.snp_lpi_step_log;
create synonym snp_sess_task for &apex_user.snp_sess_task;
create synonym snp_sess_task_log for &apex_user.snp_sess_task_log;
