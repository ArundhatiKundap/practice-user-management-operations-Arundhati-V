insert into users (username, firstName, lastName, age)
values  ('bdoe', 'Bob', 'Doe', 33),
 ('cjohnson', 'Charlie', 'Johnson', 41),
 ('dlee', 'David', 'Lee', 19),
 ('ejones', 'Eve', 'Jones', 30),
 ('fkim', 'Frank', 'Kim', 15),
 ('gwhite', 'Grace', 'White', 22),
 ('hwang', 'Henry', 'Wang', 19),
 ('ijones', 'Ivy', 'Jones', 50),
 ('jdoe', 'John', 'Doe', 65),
 ('klee', 'Kevin', 'Lee', 62),
 ('lchen', 'Linda', 'Chen', 24),
 ('mlee', 'Michael', 'Lee', 29),
 ('nkim', 'Nancy', 'Kim', 18),
 ('ojohnson', 'Oscar', 'Johnson', 40),
 ('pchen', 'Peter', 'Chen', 55),
 ('qwang', 'Quincy', 'Wang', 28),
 ('rjones', 'Rachel', 'Jones', 37),
 ('slee', 'Sam', 'Lee', 21),
 ('tkim', 'Tina', 'Kim', 26);
 
SET SQL_SAFE_UPDATES = 0;

UPDATE users 
SET firstName = 'Jane', lastName = 'Doe' 
WHERE username = 'jdoe';

SET SQL_SAFE_UPDATES = 1;
SET SQL_SAFE_UPDATES = 0;
delete from users where username = 'jdoe';
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM testdb.users;

select firstName, lastName from users where lastName = 'Doe';

select * from users where lastName = 'Kim' and firstName = 'Frank';

select * from users where lastName = 'Doe' and not firstName = 'John';
select * from users where lastName = 'Doe' and (firstName = 'John' or firstName = 'Jane');

select firstName as First, lastName as Last from users;

select username, age + 10 as ageIn10Years from users;
select concat(firstName, ' ', lastName) as fullName from users;
select * from users order by age desc;

select * from users order by lastName asc, firstName asc;

select * from users limit 5;

select * from users limit 5 offset 5;

select * from users order by lastName asc limit 10 offset 20;