
# 1. Print out the number of orders per customer
select customer_id, count(*)
from orders
group by customer_id
order by count(*) desc;

# 2. Print out the top 5 customers (placed the most orders)

SELECT o.id as order_id, sum(li.quantity * p.price)
from orders o
join line_items li on li.order_id = o.id
join products p on li.product_id = p.id
group by o.id
order by sum(li.quantity * p.price) desc;

# 3. Print out the total amount per order

SELECT id, total_amount
FROM orders
ORDER BY id;

# or

SELECT o.id, sum(li.quantity * p.price)
from orders o
join line_items li on li.order_id = o.id
join products p on li.product_id = p.id
group by o.id
order by o.id;

# 4. Print out the emails that have placed more than 6 orders

SELECT c.email as email,
        count(o.id) as order_count
        FROM orders o
        JOIN customers c on c.id = o.customer_id
        GROUP BY c.email
        HAVING count(o.id) > 6;



# 5. Delete the last 5 orders
DELETE from orders
where created_at in (SELECT created_at FROM orders
  ORDER BY created_at desc
  LIMIT 5);

# 6. Copy all the orders to a CSV file
# done.
