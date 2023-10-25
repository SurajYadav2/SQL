Create database Projects;
use Projects;

-- Create employees table
create table employees (employee_id int primary key, first_name varchar(50), last_name varchar(50), salary decimal(10, 2));

-- Inserting values
insert into employees values (1, 'Rahul', 'Verma', 50000), (2, 'Sneha', 'Singh', 60000), (3, 'Amit', 'Sharma', 55000), (4, 'Priya', 'Patel', 52000),
(5, 'Rajesh', 'Gupta', 48000), (6, 'Deepak', 'Kumar', 53000), (7, 'Anjali', 'Pandey', 59000), (8, 'Neha', 'Choudhury', 52000),(9, 'Ravi', 'Mishra', 60000),
(10, 'Meera', 'Yadav', 48000),(11, 'Suresh', 'Rajput', 54000), (12, 'Pooja', 'Jain', 51000), (13, 'Sanjay', 'Srivastava', 56000), (14, 'Nisha', 'Goswami', 58000),
(15, 'Vikas', 'Rawat', 54000);

-- Create customers table
create table customers (customer_id int primary key, first_name varchar(50), last_name varchar(50), address varchar(100), country varchar(50));

-- Inserting values
insert into customers values (1, 'Aishwarya', 'Chopra', '123 Main St, Anytown, India', 'India'), (2, 'Amitabh', 'Kumar', '456 Elm St, Othertown, India', 'India'),
(3, 'Ananya', 'Shukla', '789 Oak St, Another Town, India', 'India'), (4, 'Bhaskar', 'Mishra', '101 River Road, Cityville, India', 'India'),
(5, 'Chaitanya', 'Reddy', '22 Lake View, Townsville, India', 'India'), (6, 'Deepti', 'Gupta', '66 Green Lane, Villageton, India', 'India'),
(7, 'Fahad', 'Khan', '321 Park Ave, Lahore, Pakistan', 'Pakistan'), (8, 'Zara', 'Ali', '555 Beach Rd, Karachi, Pakistan', 'Pakistan'), 
(9, 'Rohan', 'Sharma', '777 Mountain View, Kathmandu, Nepal', 'Nepal'), (10, 'Suman', 'Rai', '999 Valley St, Pokhara, Nepal', 'Nepal');


-- Create products table
create table products (product_id int primary key, product_name varchar(100), supplier varchar(100), category varchar(50), price decimal(10, 2), quantity int);

-- Inserting values
insert into products values (1, 'Product A', 'Supplier X', 'Category 1', 10.00, 5), (2, 'Product B', 'Supplier Y', 'Category 2', 15.00, 0),
(3, 'Product C', 'Supplier X', 'Category 1', 20.00, 3),(4, 'Product D', 'Supplier Z', 'Category 3', 25.00, 8), (5, 'Product E', 'Supplier Y', 'Category 2', 18.00, 12),
(6, 'Product F', 'Supplier Z', 'Category 3', 22.00, 6);

-- Create orders table
create table orders (order_id int primary key, customer_id int, order_date date);

-- Inserting values
insert into orders values (1, 1, '2023-10-01'), (2, 2, '2023-10-02'), (3, 3, '2023-10-03'),
(4, 4, '2023-10-04'),(5, 5, '2023-10-05'), (6, 6, '2023-10-06');

-- Create order_details table
create table order_details (order_id int, product_id int, quantity int);

-- Inserting values
insert into order_details values (1, 1, 2), (1, 2, 1), (2, 1, 3), (2, 3, 1),
(3, 4, 4), (3, 5, 2), (4, 6, 3), (4, 2, 1), (5, 4, 2), (5, 1, 2), (6, 2, 3), (6, 3, 2);

-- Write SQL queries to solve the following problems 

-- 1. Retrieve the first and last names of all employees from the "employees" table.
select first_name, last_name from employees;

-- 2. List the names of all customers who have placed orders.
select first_name, last_name from customers where customer_id in (select distinct customer_id from orders);

-- 3. Find the total number of products in the "products" table.
select count(*) as total_products from products;

-- 4. List the names of products that are out of stock (quantity = 0).
select product_name from products where quantity = 0;

-- 5. Calculate the average price of all products in the "products" table.
select avg(price) as average_price from products;

-- 6. Retrieve the product name, supplier, and category for each product in the "products" table.
select product_name, supplier, category from products;

-- 7. Find the total revenue generated from all orders in the "orders" table.
select sum(od.quantity * p.price) as total_revenue from order_details od join products p on od.product_id = p.product_id;

-- 8. List the names and addresses of customers who are located in the India.
select first_name, last_name, address from customers where country = 'India';

-- 9. Find the highest salary in the "employees" table.
select max(salary) as highest_salary from employees;

-- 10. Calculate the total quantity of each product sold in the "order_details" table.
select product_id, sum(quantity) as total_quantity_sold from order_details group by product_id;



