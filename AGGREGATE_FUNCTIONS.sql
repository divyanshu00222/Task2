-- Aggregate function --

-- select count(order_id) from orders;


-- select sum(order_amount) from orders where payment_mode='UPI';


-- select avg(price) from products;


-- select min(total_price),max(total_price) from order_items oi
-- join orders o on oi.order_id=o.order_id
-- where extract(year from order_date)=2023;


-- select product_id, sum(quantity) from order_items group by product_id;