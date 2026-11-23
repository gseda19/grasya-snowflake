{{ config(materialized='table') }}
select pk_agency, agency_name from {{ source('raw', 'agencies') }}