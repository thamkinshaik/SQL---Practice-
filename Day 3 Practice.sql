################ table 1
CREATE TABLE restaurants1 (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(50),
    cuisine VARCHAR(30),
    city VARCHAR(30)
);

INSERT INTO restaurants1 VALUES
(201, 'Spice Route', 'Indian', 'Bangalore'),
(202, 'Dragon Bowl', 'Chinese', 'Hyderabad'),
(203, 'Pasta House', 'Italian', 'Chennai'),
(204, 'Taco Town', 'Mexican', 'Bangalore'),
(205, 'Curry Leaf', 'Indian', 'Mumbai'),
(206, 'Sushi World', 'Japanese', 'Hyderabad'),
(207, 'Burger Hub', 'American', 'Delhi'),
(208, 'Dosa Corner', 'South Indian', 'Chennai');

select * from restaurants1;
#########  table2
CREATE TABLE orders3 (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    restaurant_id INT,
    amount INT,
    payment_mode VARCHAR(20)
);

INSERT INTO orders3 VALUES
(301, 'Rahul', 201, 650, 'UPI'),
(302, 'Priya', 203, 900, 'Card'),
(303, 'Arjun', 202, 550, 'Cash'),
(304, 'Sneha', 201, 750, 'UPI'),
(305, 'Kiran', 205, 1200, 'Card'),
(306, 'Asha', 204, 680, 'UPI'),
(307, 'Vikram', 206, 1500, 'Card'),
(308, 'Neha', 202, 800, 'Cash'),
(309, 'Ravi', 208, 450, 'UPI'),
(310, 'Meena', 205, 950, 'Cash'),
(311, 'Divya', 207, 1100, 'Card'),
(312, 'Sanjay', 201, 500, 'UPI');

select *from orders3;

select restaurants1. restaurant_name , orders3. customer_name
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id;

select orders3. customer_name , restaurants1. restaurant_name , cuisine
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id;

select orders3. customer_name , restaurants1. restaurant_name , cuisine
from restaurants1
left join orders3
on restaurants1.restaurant_id = orders3. restaurant_id;

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Chinese';

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Italian';

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Mexican';

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Korean';

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Japanese';

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Thai';

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'French';

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'American';


select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Chinese' and amount > 500;

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Chinese' and amount > 500 order by amount desc;

select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Chinese' and orders3. amount > 300 order by amount asc;


select orders3. customer_name , restaurants1. restaurant_name , orders3. amount
from restaurants1
inner join orders3
on restaurants1.restaurant_id = orders3. restaurant_id
where restaurants1. cuisine = 'Italian' and orders3. amount > 400 order by amount asc;


