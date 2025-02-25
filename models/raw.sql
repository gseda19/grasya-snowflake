{{ config(materialized='table') }}

select 1 id, 'alice' as user_name, 'inactive' as user_status
union all
select 3 id, 'beth' as user_name, 'active' as user_status