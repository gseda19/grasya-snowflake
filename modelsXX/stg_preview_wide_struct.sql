with hundred_rows as (
  select
    seq4() + 1 as id,
    'item_' || to_varchar(seq4() + 1) as label
  from table(generator(rowcount => 10000))
)
select *
from hundred_rows