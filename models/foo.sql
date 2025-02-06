{{ config(materialized='table') }}

with source_data as (
select 2 as id,
  /*  CURRENT_TIMESTAMP() AS updated_at,
    3 as new_number,
    6 as third_number,
    4 as fourth_number,
    'uzer' as user_type
    */
)

select *
from source_data