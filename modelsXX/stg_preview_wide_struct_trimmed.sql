with base as (

select

'grp_' || cast(mod(offset, 50) as string) as key1,

'sub_' || cast(mod(offset, 5) as string) as key2,

struct(

offset as id,

repeat('x', 500) as s001,

repeat('y', 500) as s002

) as payload

from unnest(generate_array(0, 500000)) as offset

),

nested as (

select

key1, key2,

array_agg(payload) as payload_rows

from base

group by key1, key2

)

select *

from nested