-- Joins --

-- create table customers(customer_id serial primary key,customer_name varchar,city varchar,phone_number bigint,email varchar unique,
-- registration_date date);

-- create table orders(order_id serial primary key,customer_id int references customers(customer_id),order_date date,order_amount int,
-- delivery_city varchar,payment_mode varchar);

-- create table products(product_id serial primary key,product_name varchar,category varchar,price int,stock_quantity int,
-- supplier_name varchar,supplier_city varchar,supply_date date);


-- create table order_items(order_item_id serial primary key,order_id int references orders(order_id),
-- product_id int references products(product_id),quantity int,total_price int);


-- select c.customer_name,c.city,o.order_date from customers c
-- join orders o on c.customer_id=o.customer_id
-- where extract(year from order_date) =2023


-- select p.product_name,p.category,oi.total_price from customers c
-- join orders o on c.customer_id=o.customer_id
-- join order_items oi on o.order_id=oi.order_id
-- join products p on oi.product_id=p.product_id
-- where c.city='Mumbai';


-- select c.customer_name,o.order_date,oi.total_price from customers c
-- join orders o on c.customer_id=o.customer_id
-- join order_items oi on o.order_id=oi.order_id
-- where o.payment_mode='Credit Card';


-- select p.product_name,p.category,oi.total_price from orders o
-- join order_items oi on o.order_id=oi.order_id
-- join products p on oi.product_id=p.product_id
-- where order_date between '2023-01-01' and '2023-06-30';


-- select c.customer_name,sum(oi.quantity) total_products_ordered from customers c
-- join orders o on c.customer_id=o.customer_id
-- join order_items oi on o.order_id=oi.order_id
-- group by c.customer_name;