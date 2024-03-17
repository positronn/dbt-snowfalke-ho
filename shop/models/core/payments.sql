--
--
{{
    config(
        materialized='table'
    )
}}


select
    id::integer as payment_id,
    order_id::integer as order_id,
    payment_method as order_date,
    amount::float as amount_usd,
    _elt_created_at::datetime as _elt_created_at,
    _elt_updated_at::datetime as _elt_updated_at
from
    {{ source('jaffleshop', 'jaffleshop__payments') }}
