{{ config(materialized='incremental', unique_key='id') }}
select *
from {{ ref('my_first_dbt_model') }}