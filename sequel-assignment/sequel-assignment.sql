
# 1. Print out the number of orders per customer

SELECT count(*) as order_count, customer_id
FROM orders
GROUP BY customer_id;

# 2. Print out the top 5 customers (placed the most orders)

SELECT count(*) as order_count, customer_id
FROM orders
GROUP BY customer_id
ORDER BY order_count desc
LIMIT 5;

# 3. Print out the total amount per order

SELECT id, total_amount
FROM orders
ORDER BY id;

# 4. Print out the emails that have placed more than 6 orders

SELECT DISTINCT c.email as email,
        count(o.id) as order_count
        FROM orders o
        JOIN customers c on c.id = o.customer_id
        GROUP BY c.email
        HAVING count(o.id) > 6;



# 5. Delete the last 5 orders
DELETE from orders
where id in (SELECT id FROM orders
  ORDER BY id desc
  LIMIT 5);

# 6. Copy all the orders to a CSV file
# done.
