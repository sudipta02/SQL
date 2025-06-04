# Write your MySQL query statement below
select round(sum(customer_pref_delivery_date = order_date)*100.0/count(*),2) immediate_percentage
from (
    select customer_id, order_date, customer_pref_delivery_date 
    from delivery d
    where order_date = (
        select min(order_date)
        from delivery
        where customer_id = d.customer_id
    )
) first_orders
