--
--
{{
    config(
        materialized='table'
    )
}}


select
    id::integer as order_id,
    user_id as customer_id,
    order_date::date as order_date,
    status,
    _elt_created_at::datetime as _elt_created_at,
    _elt_updated_at::datetime as _elt_updated_at
from
    {{ source('jaffleshop', 'jaffleshop__orders') }}
