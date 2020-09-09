select status from orders 
group by status;

select status, COUNT(*) as 'So luong'
from orders
group by status;

SELECT status, SUM(quantityOrdered * priceEach) AS amount
FROM orders
INNER JOIN orderdetails ON orders.ordernumber = orderdetails.ordernumber
GROUP BY status;

select orderNumber, sum(quantityOrdered * priceEach) as total
from orderdetails
group by orderNumber;

select year(orderDate) as year, sum(quantityOrdered * priceEach) as total
from orders 
inner join orderdetails on orders.orderNumber = orderdetails.orderNumber
where status = 'shipped'
group by year
having year > 2003

