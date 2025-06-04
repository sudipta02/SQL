-- Write your PostgreSQL query statement below
select product_id
from products p
where p.low_fats = 'Y' AND p.recyclable = 'Y';