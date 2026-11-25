{{ config(materialized='table', tags=['repro_failcount'], static_analysis='off') }}
select * from this_table_does_not_exist_xyz