--
--
{{
    config(
        materialized='table'
    )
}}


select
    id::integer as customer_id,
    first_name,
    last_name,
    postal_code::integer as postal_code,
    _elt_created_at::datetime as _elt_created_at,
    _elt_updated_at::datetime as _elt_updated_at
from
    {{ source('jaffleshop', 'jaffleshop__customers') }}
