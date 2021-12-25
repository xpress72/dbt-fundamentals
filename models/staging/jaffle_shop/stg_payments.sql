with payments as (

    select id, 
           orderid as order_id,
           paymentmethod as payment_method,
           "status",
           {{ cents_to_dollars('amount') }} as amount,
           created
    from {{ source('stripe', 'payment') }}

)

select * from payments

{{ dev_limitation('created', 10000)}}
