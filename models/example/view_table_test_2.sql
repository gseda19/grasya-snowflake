{{
    config(
        materialized="view"
    )
}}
select * 
from {{ source('DBT_GSEDA', 'MY_FIRST_DBT_MODEL') }}