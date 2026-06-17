{{ config(materialized='ephemeral') }}

select
  1                 as id,
  'foo'             as status,
  current_timestamp as updated_at
