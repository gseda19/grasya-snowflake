{{ config(materialized='table') }}
select id from {{ ref('m_a') }}