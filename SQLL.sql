create database SQLL;
use SQLL;
create table users_tbl(
user_id int not null primary key auto_increment,
user_firstname VARCHAR(40) not null,
user_lastname VARCHAR(40) not null,
user_email VARCHAR(60) not null,
user_password VARBINARY(256)
);
create table category(
category_id int not null primary key auto_increment,
category_name VARCHAR(40) not null
);
create table product_tbl(
product_id int not null primary key auto_increment,
product_name VARCHAR(40) not null,
product_value int null,
category_id int not null
);


alter table product_tbl 
add constraint category_id
foreign key (category_id)
references category (category_id);
			
INSERT INTO SQLL.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('Andres'), UPPER('Lozano'), 'andresl0zano@gmail.com',AES_ENCRYPT
('password', '$2a$12$Br.rAKsYldTM.qZWtIRlaulIflMj.Zc4c8dN0nSKx7bJa5VzF/h4G'));
INSERT INTO SQLL.users_tbl (user_firstname, user_lastname, user_email, user_password) 
VALUES (UPPER('Petito'), UPPER('Ardila'), 'Ardila@gmail.com',AES_ENCRYPT
('andresl0zano', '$2a$12$Br.rAKsYldTM.qZWtIRlaulIflMj.Zc4c8dN0nSKx7bJa5VzF/h4G'));

SELECT *, CAST(AES_DECRYPT(user_password, '$2a$12$Br.rAKsYldTM.qZWtIRlaulIflMj.Zc4c8dN0nSKx7bJa5VzF/h4G') 
AS CHAR(50)) end_data FROM users_tbl WHERE user_id = 1;    

select * from users_tbl;
select * from category;
select * from product_tbl;

-- DROP DATABASE SQLL;