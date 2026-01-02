{{ config (materialized='view') }}

select * from {{ref('foo')}}
union all
select * from {{ref('baz')}}