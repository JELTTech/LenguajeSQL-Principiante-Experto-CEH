-- Consulta 1
SELECT c.customer_id as ID,  c.first_name as Nombre, c.last_name as Apellido, c.age as Edad, c.country as Pais,
	   o.item as Producto, o.amount as Valor, s.status as 'Estado de Pedido'
from customers c
JOIN orders o ON o.customer_id=c.customer_id
JOIN shippings s ON s.customer_id=c.customer_id;