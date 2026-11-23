{{ config(materialized='table') }}
select pk_account, fk_agency from {{ source('raw', 'accounts') }}