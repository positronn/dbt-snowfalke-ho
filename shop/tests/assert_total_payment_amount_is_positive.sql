-- Refunds have a negative amount, so the total amount should always be >= 0.
-- Therefore return records where total_amount < 0 to make the test fail.
select
    order_id,
    sum(amount_usd) as total_amount_usd
from
    {{ ref('payments' )}}
group by
    order_id
having
    total_amount_usd < 0
