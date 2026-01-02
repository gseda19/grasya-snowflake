select id from {{ref('foo')}}
union 
select id from {{ref('baz')}}