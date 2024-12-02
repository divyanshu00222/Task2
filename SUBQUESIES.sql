--Subqueries --

-- select customer_name from customers where customer_id in (select o.customer_id from orders o 
-- join order_items oi on o.order_id = oi.order_id 
-- where oi.total_price > (select avg(total_price)from order_items));


-- select product_name from products where product_id in 
-- (select product_id from order_items group by product_id having count(*)>1);


-- select product_name from products where product_id in 
-- (select product_id from order_items oi join orders o on oi.order_id = o.order_id
-- join customers c on o.customer_id=c.customer_id where c.city='Pune');


-- select order_id,payment_mode,delivery_city from orders where order_id in
-- (select order_id from order_items group by order_id order by sum(total_price) desc limit 3)


-- select customer_name from customers where customer_id in (
-- select customer_id from orders o join order_items oi on o.order_id=oi.order_id
-- join products p on oi.product_id=p.product_id where p.price > 30000
-- );