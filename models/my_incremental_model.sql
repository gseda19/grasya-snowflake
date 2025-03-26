{{ config(materialized='incremental', unique_key='id', schema='analytics')}}
select *
from {{ ref('my_first_dbt_model') }}