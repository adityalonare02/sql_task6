select * from customer 

select * from sales 

select * from product 
	
INNER JOIN
	
select 
    c.customer_id,
    c.customer_name,
    c.segment,
    c.age,
    c.country,
    c.city,
    c.state,
    c.postal_code,
    c.region,
    c.first_name,
    c.last_name,
    s.order_line,
    s.order_id,
    s.order_date,
    s.ship_date,
    s.ship_mode,
    s.product_id,
    s.sales,
    s.quantity,
    s.discount,
    s.profit
from
    customer c
inner join 
    sales s
on 
    c.customer_id = s.customer_id

LEFT JOIN 

select 
    c.customer_id,
    c.customer_name,
    c.segment,
    c.age,
    c.country,
    c.city,
    c.state,
    c.postal_code,
    c.region,
    c.first_name,
    c.last_name,
    s.order_line,
    s.order_id,
    s.order_date,
    s.ship_date,
    s.ship_mode,
    s.product_id,
    s.sales,
    s.quantity,
    s.discount,
    s.profit
from
    customer c
left join 
    sales s
on 
    c.customer_id = s.customer_id

RIGHT JOIN 

select 
    c.customer_id,
    c.customer_name,
    c.segment,
    c.age,
    c.country,
    c.city,
    c.state,
    c.postal_code,
    c.region,
    c.first_name,
    c.last_name,
    s.order_line,
    s.order_id,
    s.order_date,
    s.ship_date,
    s.ship_mode,
    s.product_id,
    s.sales,
    s.quantity,
    s.discount,
    s.profit
from
    customer c right join  
    sales s
on 
    c.customer_id = s.customer_id 

FULL OUTER JOIN 

select 
    c.customer_id,
    c.customer_name,
    c.segment,
    c.age,
    c.country,
    c.city,
    c.state,
    c.postal_code,
    c.region,
    c.first_name,
    c.last_name,
    s.order_line,
    s.order_id,
    s.order_date,
    s.ship_date,
    s.ship_mode,
    s.product_id,
    s.sales,
    s.quantity,
    s.discount,
    s.profit
from
    customer c 
full outer join
    sales s
on 
    c.customer_id = s.customer_id 

SELECT 
    c.customer_id,
    c.customer_name,
    SUM(s.sales) AS total_sales
from
    customer c
inner join
    sales s
on  
    c.customer_id = s.customer_id
group by
    c.customer_id, c.customer_name
	
3 table join product,sales,customer
	
SELECT 
    c.customer_id,
    c.customer_name,
    c.segment,
    c.age,
    c.country,
    c.city,
    c.state,
    c.postal_code,
    c.region,
    c.first_name,
    c.last_name,
    s.order_line,
    s.order_id,
    s.order_date,
    s.ship_date,
    s.ship_mode,
    s.sales,
    s.quantity,
    s.discount,
    s.profit,
    p.product_id,
    p.category,
    p.sub_category,
    p.product_name
FROM 
    customer c
INNER JOIN 
    sales s
ON 
    c.customer_id = s.customer_id
INNER JOIN 
    product p
ON 
    s.product_id = p.product_id





