{{ config(tags=['repro_failcount']) }}
-- Always passes. Depends on rf_gate so it runs after rf_fail_early.
select * from {{ ref('rf_gate') }} where 1 = 0
