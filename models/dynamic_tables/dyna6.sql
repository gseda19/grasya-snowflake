{{ config(
    materialized="dynamic_table",
    target_lag="downstream",
    snowflake_warehouse="WAREHOUSE2",
    refresh_mode="AUTO", 

) }}
select * from my_first_dbt_model