{{ config(materialized='view', tags=['repro_failcount'], static_analysis='off') }}
-- Fails at runtime (division by zero). No upstream deps, so it runs in the first wave.
select 1 / 0 as boom
