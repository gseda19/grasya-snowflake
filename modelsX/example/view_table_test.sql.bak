{{
    config(
        materialized="table",
    )
}}
select * 
from {{ source('DBT_GSEDA', 'MY_FIRST_DBT_MODEL') }}