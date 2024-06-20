
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

with source_data as (
    select 1 as id,
    0 as new_number,
    6 as third_number,
    4 as fourth_number
)

select *
from source_data