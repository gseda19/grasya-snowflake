{{ config (materialized='table') }}

select foo.id, baz.id2 from {{ref('foo')}} as foo
join {{ref('baz')}} as baz
on foo.id = baz.id2