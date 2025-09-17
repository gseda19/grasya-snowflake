{{ config(
    materialized='incremental',
    unique_key='id',
    incremental_strategy='merge'
) }}

select
    id
from {{ ref('my_first_dbt_model') }}

{% if is_incremental() %}
  -- Only process new or updated records
  where updated_at > (select max(updated_at) from {{ this }})
{% endif %}