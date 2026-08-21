CREATE TABLE students (
    student_id INT,
    name VARCHAR(50),
    course VARCHAR(50),
    marks INT,
    city VARCHAR(50)
);
INSERT INTO students (student_id, name, course, marks, city)
VALUES
(1, 'Asha', 'Python', 85, 'Bangalore'),
(2, 'Ravi', 'SQL', 72, 'Hyderabad'),
(3, 'Priya', 'Python', 90, 'Chennai'),
(4, 'Kiran', 'SQL', 65, 'Bangalore'),
(5, 'Neha', 'Excel', 78, 'Hyderabad'),
(6, 'Arjun', 'Python', 88, 'Bangalore'),
(7, 'Sneha', 'Excel', 92, 'Chennai'),
(8, 'Rahul', 'SQL', 81, 'Bangalore');
SELECT * FROM students;
select * from students where marks > 80;
select name, city from students where city = "Bangalore";
select * from students where course = "Python";
select * from students where marks between 70 and 90;
select * from students order by marks desc;
select avg(marks) from students;
select max(marks) from students;
select count(course) from students group by course;
select avg(marks) , course from students group by course;
select avg(marks), course from students group by course having avg(marks) > 80;
CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(50),
    fee INT
);
INSERT INTO courses (course_id, course_name, fee)
VALUES
(1, 'Python', 5000),
(2, 'SQL', 4000),
(3, 'Excel', 3000);
SELECT * from courses;

select students. name , courses. fee
from students
inner join courses
on students.course = courses.course_name;
 
 select students. name , courses. course_name , fee
 from students
 left join courses 
 on students.course = courses.course_name;
 
  select students. name , courses. course_name , fee
 from students
 right join courses 
 on students.course = courses.course_name;
 
 select students. name , courses. course_name, fee 
 from students
inner join courses
on students.course = courses.course_name
where fee < 5000;

SELECT students.name, courses.course_name, fee
FROM students
INNER JOIN courses
ON students.course = courses.course_name
WHERE fee > 3000;


CREATE TABLE movies1 (
    movie_id INT PRIMARY KEY,
    movie_name VARCHAR(50),
    genre VARCHAR(30),
    language VARCHAR(30),
    rating DECIMAL(3,1),
    budget INT,
    release_year INT
);

INSERT INTO movies1 VALUES
(1, 'Leo', 'Action', 'Tamil', 8.0, 250, 2023),
(2, 'Jersey', 'Drama', 'Telugu', 8.5, 30, 2019),
(3, 'Kantara', 'Thriller', 'Kannada', 8.6, 16, 2022),
(4, 'Ratsasan', 'Crime', 'Tamil', 8.3, 5, 2018),
(5, 'Sita Ramam', 'Romance', 'Telugu', 8.6, 30, 2022),
(6, 'Kalki', 'Sci-Fi', 'Telugu', 8.0, 600, 2024),
(7, 'Drishyam', 'Crime', 'Malayalam', 8.6, 5, 2013),
(8, 'Vikram', 'Action', 'Tamil', 8.3, 110, 2022),
(9, '777 Charlie', 'Drama', 'Kannada', 8.7, 20, 2022),
(10, 'Premalu', 'Romance', 'Malayalam', 7.9, 3, 2024);
select * from movies1;
select movie_name , rating from movies1;
select movie_name, language from movies1 where language = 'Telugu';
select movie_name from movies1 where rating > 8.5;
select * from movies1 where rating > 8.5;
select * from movies1 where genre = 'Action';
select * from movies1 where release_year > 2020;
select * from movies1 where language = 'Telugu'
and release_year > 2020;
select * from movies1 where budget between 10 and 100 ;
select * from movies1 where genre !=  'Action';
select * from movies1 where (language = 'Telugu' OR language = 'Kannada' ) and release_year > 2020 and rating > 8.0;
select movie_name , genre , rating from movies1 where rating > 8.0 and budget < 100;