{{ config (materialized='table') }}

select * from {{ref('foo')}}
union all
select * from {{ref('baz')}}