with table_1 as (
    select 1 as col_1
    union all
    select 2
),

table_2 as (
    select 
        2 as col_1,
        'matched' as col_2
)

select
    table_1.col_1,
    table_2.*
from table_1
left join table_2
    on table_1.col_1 = table_2.col_1