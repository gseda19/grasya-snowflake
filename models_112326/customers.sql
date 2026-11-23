{{ config(enabled = target.name == 'dev') }}

select
    1 as customer_id,
    'Grace' as customer_name

union all

select
    2 as customer_id,
    'Davi' as customer_name