with final as
(
    select 
        new_number as column_1, id as column_2, third_number as column_3
        from {{ref('my_first_dbt_model')}} 
        
)
select * from final