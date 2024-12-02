-- Limit & Offset --

-- select * from customers order by customer_name limit 10;


-- select * from products order by price desc limit 5;


-- select * from customers order by customer_id limit 10 offset 10;


-- select order_id,order_date,customer_id from orders where extract(year from order_date)=2023 order by order_date limit 5;


-- select distinct delivery_city from orders limit 10 offset 10;