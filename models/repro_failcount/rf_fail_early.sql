{{ config(materialized='view', tags=['repro_failcount']) }}
-- Every filler test depends on this, so they all run after the failure has happened.
select 1 as id
