{{ config (materialized='table') }}


with foo_data as (
    select * from {{ref('foo')}}
),
baz_data as (select * from {{ref('baz')}} )

select * from foo_data