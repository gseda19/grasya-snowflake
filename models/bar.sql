{{ config(materialized='table') }}
select
    foo.id
from {{ ref('foo') }} as foo
inner join {{ ref('baz') }} as baz
    on foo.id = baz.id