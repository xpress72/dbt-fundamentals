with 

t as (
    select
        order_id,
        sum(amount) as total_amount
    from {{ ref('stg_payments') }}
    group by 1
)

select * from t
where not(t.total_amount >= 0)