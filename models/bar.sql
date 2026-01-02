select id from {{ref('foo')}}
union 
select * from {{ref('baz')}}