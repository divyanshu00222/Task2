--SetOperations--

-- select customer_name from customers where customer_id in (select customer_id from orders where extract(year from order_date)=2022

-- intersect

-- select customer_id from orders where extract(year from order_date)=2023);



-- select p.product_id,p.product_name from orders o 
-- join order_items oi on o.order_id=oi.order_id
-- join products p on oi.product_id=p.product_id 
-- where extract(year from order_date)=2022

-- except

-- select p.product_id,p.product_name from orders o 
-- join order_items oi on o.order_id=oi.order_id
-- join products p on oi.product_id=p.product_id
-- where extract(year from order_date)=2023



-- select supplier_city from products 

-- except

-- select city from customers 




-- select supplier_city from products 

-- union 

-- select city from customers 




-- select distinct p.product_name from orders o
-- join order_items oi on o.order_id=oi.order_id
-- join products p on p.product_id=oi.product_id
-- where extract(year from order_date)=2023

-- intersect 

-- select distinct p.product_name from orders o
-- join order_items oi on o.order_id=oi.order_id
-- join products p on p.product_id=oi.product_id
-- where extract(year from order_date)=2023;