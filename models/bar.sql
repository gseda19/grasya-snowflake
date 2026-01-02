select id from {{ref('foo')}}
union all
select id from {{ref('baz')}}