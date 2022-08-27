select status, count(1) as amount
from {{ ref('stg_orders') }}
where status = 'completed'
group by 1
having count(1) = 0

