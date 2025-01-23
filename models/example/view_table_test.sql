{{
    config(
        materialized="table",
        post_hook=[
            "ALTER TABLE DBT_GSEDA.view_table_test ADD Email varchar(255);"
            ],
    )
}}
select * 
from {{ source('DBT_GSEDA', 'MY_FIRST_DBT_MODEL') }}