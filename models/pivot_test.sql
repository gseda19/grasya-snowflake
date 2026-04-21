with pipegen_src as (
    select
        1 as dealband_calculated_amount,
        'Global Combo Company/OvA All/Month' as deal_clustering_model
),

pipegen_pivoted as (

    select *
    from pipegen_src
    pivot ( -- noqa: AL01,AL05
        sum(dealband_calculated_amount)
        for deal_clustering_model in (
            {{ dealband_clustering_model_pivot_list() }}
        )
    )

)

select * from pipegen_pivoted
