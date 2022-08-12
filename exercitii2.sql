--imaginile la care a dat like userul 2 
select *
from likes
         inner join photos p on likes.photo_id = p.id
where likes.user_id = 2;

--persoanele care au dat like imagini 4 
select username
from likes
         inner join users u on likes.user_id = u.id
where photo_id = 4;

--imaginea cu cele mai multe like-uri
select image_url ,count(*) as likes from photos
inner join likes l on l.photo_id = id
group by image_url
order by likes desc
limit 1;

-- ceea mai populara zi cand s-au creat conturi noi
select dayname(users.created_at) as day , count(*) as best from users
group by day
order by best desc
limit 1;

insert into orders(customer_id, ammount, order_date) VALUE (41,63.48,'2019-12-13');
insert into order_details(order_id, product_id, price, quantity) value (8,4,10.58,6);

--cel mai scump produs

select products.name,
       max(products.price) as CelMaiScump from products;

-- cel mai popular produs
select order_details.product_id ,count(product_id) as best from order_details
join products p on order_details.product_id = p.id
group by p.name
order by best desc
limit 1;

-- ziua cu cele mai multe vanzari 
select products.id,name from products
join order_details od on products.id = od.product_id
group by products.name
order by count(od.product_id) desc
limit 1;

-- ceea mai buna zi pentru vanzari 
select dayname(order_date) as day , count(orders.ammount) as bestday from orders
group by day
order by bestday desc
limit 1;