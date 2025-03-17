-- Consulta 1
select * from curso.customers;
select * from curso.orders;
select * from curso.shippings;

-- Consulta 2
SELECT c.customer_id as ID,  c.first_name as Nombre, c.last_name as Apellido, c.age as Edad, c.country as Pais
from curso.customers c;
