{{ config (materialized='table') }}

select id from {{ref('foo')}}