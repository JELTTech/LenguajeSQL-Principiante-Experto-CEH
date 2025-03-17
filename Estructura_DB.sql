-- Verificar si la base de datos ya existe antes de crear
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name='CURSO_AVANZADO_SQL')
BEGIN
	CREATE DATABASE CURSO_AVANZADO_SQL;
END
GO

USE CURSO_AVANZADO_SQL;
GO

-- Crear esquema personalizado
IF NOT EXISTS (SELECT schema_name FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME ='curso')
BEGIN
	EXEC('CREATE SCHEMA curso')
END
go

-- Tabla Customers
create table curso.customers(
customer_id int identity primary key,
first_name varchar(50) not null,
last_name varchar(100) not null,
age int null check (age >= 0),
country varchar(100) null default 'No Especificado'
);
go

-- Tabla Orders
create table curso.orders(
order_id int identity primary key,
item varchar(100) not null,
amount decimal(10,2) not null,
customer_id int,
FOREIGN KEY (customer_id) REFERENCES curso.customers(customer_id) on delete set null
);
go 

-- Tabla Shipings
create table curso.shippings(
shipping_id int identity primary key,
status varchar(30) null default 'En Revision',
customer_id int,
FOREIGN KEY (customer_id) REFERENCES curso.customers(customer_id) on delete set null
);
go