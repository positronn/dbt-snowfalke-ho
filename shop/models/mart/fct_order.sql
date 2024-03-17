--
--

select
    o.order_id,
    o.customer_id,
    o.order_date,
    o.status,
    c.postal_code as customer_postal_code
from
    {{ ref('orders') }} as o
left join
    {{ ref('dim_customer')}} as c
    on o.customer_id = c.customer_id
