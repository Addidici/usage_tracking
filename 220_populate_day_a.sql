delete from wc_ut_day_a where TRUNC(start_dt) >= TRUNC(SYSDATE)-1;
commit;

INSERT INTO wc_ut_day_a (
    start_dt_wid,
    start_dt,
    repository_name,
    CACHE_IND_FLG,
    num_users,
    num_queries,
    row_count,
    NUM_DASHBOARDS,
    total_time_sec,
    compile_time_sec,
    num_db_query,
    cum_db_time_sec,
    cum_num_db_row,
    NUM_CACHE_INSERTED,
    num_cache_hits,
    total_temp_kb,
    resp_time_sec
)
SELECT
    start_dt_wid,
    start_dt,
    repository_name,
    CACHE_IND_FLG,
    count(distinct user_name)   as num_users, 
    count(id)                   as num_queries,
    sum(row_count)              as row_count,
    sum(total_time_sec)         as total_time_sec,
    sum(compile_time_sec)       as compile_time_sec,
    sum(num_db_query)           as num_db_query,
    sum(cum_db_time_sec)        as cum_db_time_sec,
    sum(cum_num_db_row)         as cum_num_db_row,
    sum(num_cache_hits)         as num_cache_hits,
    sum(total_temp_kb)          as total_temp_kb,
    sum(resp_time_sec)          as resp_time_sec
FROM
    wc_ut_details
group by
    start_dt_wid,
    start_dt,
    repository_name,
    CACHE_IND_FLG
HAVING 
    TRUNC(start_dt) >= TRUNC(SYSDATE)-1
;
COMMIT;

UPDATE  wc_ut_day_a
SET     avg_time_sec = (total_time_sec/num_queries)
WHERE   num_queries > 0
AND     TRUNC(start_dt) > TRUNC(SYSDATE)-1;
COMMIT;
