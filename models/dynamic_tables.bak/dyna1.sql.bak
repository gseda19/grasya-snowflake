{{ config(
    materialized="dynamic_table",
    target_lag="downstream",
    snowflake_warehouse="transforming",
    refresh_mode="AUTO", 

) }}
select * from my_first_dbt_model