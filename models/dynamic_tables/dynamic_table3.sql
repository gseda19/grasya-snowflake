{{ config(
    materialized="dynamic_table",
    target_lag="downstream",
    snowflake_warehouse="MY_WAREHOUSE",
    refresh_mode="AUTO", 

) }}
select * from my_first_dbt_model