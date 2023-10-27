create Database Bookstore;
use Bookstore;

-- Create the Books table
create table books (book_id int primary key, title varchar(100), author varchar(100), publication_year int, price decimal(10, 2), available_quantity int);

-- inserting values 
insert into books (book_id, title, author, publication_year, price, available_quantity) values
(1, 'The Lord of the Rings', 'J.R.R. Tolkien', 1954, 29.99, 10),
(2, 'The Hitchhiker\'s Guide to the Galaxy', 'Douglas Adams', 1979, 19.99, 5),
(3, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 1997, 14.99, 20),
(4, 'The Hunger Games', 'Suzanne Collins', 2008, 12.99, 15),
(5, 'To Kill a Mockingbird', 'Harper Lee', 1960, 11.99, 10),
(6, '1984', 'George Orwell', 1949, 9.99, 5),
(7, 'Animal Farm', 'George Orwell', 1945, 8.99, 20),
(8, 'Pride and Prejudice', 'Jane Austen', 1813, 7.99, 15),
(9, 'Moby-Dick', 'Herman Melville', 1851, 6.99, 10),
(10, "Alice's Adventures in Wonderland", 'Lewis Carroll', 1865, 5.99, 5),
(11, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 4.99, 20),
(12, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 3.99, 15),
(13, 'The Grapes of Wrath', 'John Steinbeck', 1939, 2.99, 10),
(14, 'Of Mice and Men', 'John Steinbeck', 1937, 1.99, 5),
(15, 'The Color Purple', 'Alice Walker', 1982, 0.99, 20),
(16, 'Beloved', 'Toni Morrison', 1987, 1.99, 15),
(17, 'The Handmaid\'s Tale', 'Margaret Atwood', 1985, 2.99, 10),
(18, 'The Kite Runner', 'Khaled Hosseini', 2003, 3.99, 5),
(19, 'The Book Thief', 'Markus Zusak', 2005, 4.99, 20),
(20, 'Room', 'Emma Donoghue', 2010, 5.99, 15);

update books set publication_year = 2022 where book_id IN (1, 5, 6);

-- Create the Customers table
create table customers (customer_id int primary key, first_name varchar(50), last_name varchar(50), email varchar(100), registration_date date);

-- Inserting values in customer table
insert into customers (customer_id, first_name, last_name, email, registration_date) values
(1, 'John', 'Doe', 'john.doe@email.com', '2023-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '2023-02-20'),
(3, 'Robert', 'Johnson', 'robert.johnson@email.com', '2023-03-10'),
(4, 'Emily', 'Brown', 'emily.brown@email.com', '2023-04-05'),
(5, 'Michael', 'Williams', 'michael.williams@email.com', '2023-05-12'),
(6, 'Sarah', 'Davis', 'sarah.davis@email.com', '2023-06-18'),
(7, 'James', 'Martinez', 'james.martinez@email.com', '2023-07-21'),
(8, 'Linda', 'Anderson', 'linda.anderson@email.com', '2023-08-09'),
(9, 'William', 'Taylor', 'william.taylor@email.com', '2023-09-26'),
(10, 'Karen', 'Thomas', 'karen.thomas@email.com', '2023-10-03'),
(11, 'Richard', 'Harris', 'richard.harris@email.com', '2023-11-14'),
(12, 'Patricia', 'Walker', 'patricia.walker@email.com', '2023-12-29'),
(13, 'David', 'King', 'david.king@email.com', '2024-01-07'),
(14, 'Susan', 'Young', 'susan.young@email.com', '2024-02-11'),
(15, 'Charles', 'Green', 'charles.green@email.com', '2024-03-19'),
(16, 'Amanda', 'Scott', 'amanda.scott@email.com', '2024-04-22'),
(17, 'George', 'Hall', 'george.hall@email.com', '2024-05-30'),
(18, 'Elizabeth', 'White', 'elizabeth.white@email.com', '2024-06-02'),
(19, 'Thomas', 'Brown', 'thomas.brown@email.com', '2024-07-17'),
(20, 'Jennifer', 'Clark', 'jennifer.clark@email.com', '2024-08-28');

-- Create the Orders table
create table orders (order_id int primary key, customer_id int, order_date date, total_amount decimal(10, 2), 
foreign key (customer_id) references customers(customer_id));

-- Inserting values into the Orders table
insert into orders (order_id, customer_id, order_date, total_amount) values
(1, 1, '2023-01-10', 50.00),
(2, 2, '2023-02-15', 75.50),
(3, 3, '2023-03-20', 42.25),
(4, 4, '2023-04-25', 60.80),
(5, 5, '2023-05-30', 90.10),
(6, 6, '2023-06-05', 35.75),
(7, 7, '2023-07-10', 65.30),
(8, 8, '2023-08-15', 120.40),
(9, 9, '2023-09-20', 55.20),
(10, 10, '2023-10-25', 70.90),
(11, 11, '2023-11-30', 80.60),
(12, 12, '2023-12-05', 45.75),
(13, 13, '2024-01-10', 95.20),
(14, 14, '2024-02-15', 110.30),
(15, 15, '2024-03-20', 64.50),
(16, 16, '2024-04-25', 75.90),
(17, 17, '2024-05-30', 50.25),
(18, 18, '2024-06-05', 70.10),
(19, 19, '2024-07-10', 85.75),
(20, 20, '2024-08-15', 92.40);

insert into orders (order_id, customer_id, order_date, total_amount) values
(21, 1, '2019-01-10', 40.00),
(22, 2, '2019-02-15', 65.50),
(23, 3, '2019-03-20', 32.25),
(24, 4, '2019-04-25', 55.80),
(25, 5, '2020-01-10', 70.10),
(26, 6, '2020-02-15', 45.75),
(27, 7, '2020-03-20', 88.30),
(28, 8, '2020-04-25', 120.40),
(29, 9, '2021-01-10', 35.20),
(30, 10, '2021-02-15', 70.90);

select * from orders;

-- Create the Order_Details table
create table order_details (order_id int, book_id int, quantity int, subtotal decimal(10, 2),
 foreign key (order_id) references orders(order_id), 
 foreign key (book_id) references books(book_id));
 
 -- Inserting values into the Order_Details table
insert into order_details (order_id, book_id, quantity, subtotal) values
(1, 1, 3, 89.97),
(2, 2, 2, 39.98),
(3, 3, 5, 74.95),
(4, 4, 4, 51.96),
(5, 5, 1, 11.99),
(6, 6, 2, 19.98),
(7, 7, 3, 26.97),
(8, 8, 4, 31.96),
(9, 9, 2, 13.98),
(10, 10, 3, 17.97),
(11, 11, 1, 4.99),
(12, 12, 2, 7.98),
(13, 13, 4, 11.96),
(14, 14, 3, 5.97),
(15, 15, 2, 1.98),
(16, 16, 1, 1.99),
(17, 17, 5, 14.95),
(18, 18, 2, 7.98),
(19, 19, 3, 14.97),
(20, 20, 4, 23.96);

### Write SQL queries to solve the following problems ###

-- 1.Retrieve a list of books (book title and author) published in the year 2022.
select title, author from Books where publication_year = 2022;


-- 2.Calculate the total revenue generated by the bookstore in the year 2023.
select sum(total_amount) as total_revenue_2023 from Orders where extract(year from order_date) = 2023;
## The above query calculates the total revenue generated in the year 2023 by summing the "total_amount" from the "Orders" table and assigns it an alias "total_revenue_2022."

-- 3.Find the top 5 bestselling books (based on the total quantity sold) in descending order
select b.title, b.author, sum(od.quantity) as total_quantity_sold from books b join order_details od on b.book_id = od.book_id
group by b.title, b.author order by total_quantity_sold desc limit 5;
## The above query retrieves the top 5 bestselling books by summing the quantity sold from the "order_details" table,
## grouping the results by book title and author, and presenting them in descending order of total quantity sold.

-- 4. determine the customer who made the highest total purchase amount and the total amount they spent
select c.first_name, c.last_name, sum(o.total_amount) as total_purchase_amount from customers c join orders o on c.customer_id = o.customer_id
group by c.first_name, c.last_name order by total_purchase_amount desc limit 1;
## the query identifies the customer with the highest total purchase amount by summing the total amount spent from the "orders" table, 
## grouping the results by the customer's first name and last name, and presenting the customer with the highest spending.

-- 5. Calculate the average price of books published before the year 2010
select avg(price) as average_price from books where publication_year < 2010;
## the query computes the average price of books published before the year 2010 by selecting those books from the "books" table and calculating the mean price.

-- 6. Identify the customer(s) who registered in 2023.
select customer_id, first_name, last_name, registration_date from customers where extract(year from registration_date) = 2023;
## This query retrieves customers who registered in the year 2023 by filtering the registration dates from the "customers" table.

-- 7. Calculate the total number of orders placed in the database.
select count(*) as Total_Orders from orders;
## This query calculates the total number of orders placed in the database by counting the records in the "orders" table.

-- 8. Find the book(s) with the lowest available quantity in stock.
select title, author, available_quantity from books where available_quantity = (select min(available_quantity) from books);
## The query identifies the book(s) with the lowest available quantity in stock by comparing the available quantities in the "books"table with the minimum available quantity.

-- 9. Calculate the total revenue for each year from 2020 to 2022.
select extract(year from order_date) as Order_Year, sum(total_amount) as Total_Revenue from orders
where extract(year from order_date) between 2020 and 2022 group by Order_Year;
## This query calculates the total revenue for each year from 2020 to 2022 by extracting the year from order dates, 
## summing the total amounts, and grouping the results by the order year.

-- 10. Determine the customer(s) with the most orders placed.
select c.first_name, c.last_name, count(o.order_id) as Total_Orders_Placed from customers c
join orders o on c.customer_id = o.customer_id group by c.first_name, c.last_name order by total_orders_placed desc limit 1;
## This query identifies the customer(s) with the most orders placed by counting the number of orders associated with each customer, 
## grouping the results by the customer's first name and last name, and selecting the customer with the highest order count.
