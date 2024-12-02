--Order by --

-- select * from customers order by customer_name;


-- select * from order_items order by total_price desc;


-- select * from products order by price asc,category desc;


-- select order_id,customer_id,order_date from orders order by order_date desc;


-- select city,count(order_id) from customers c
-- join orders o on c.customer_id=o.customer_id
-- group by city order by city asc;