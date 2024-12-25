CREATE DATABASE Online book store management system;

CREATE TABLE book(
 ISBN VARCHAR(100)UNIQUE, 
 book_no INT,
 year INT,
 title VARCHAR(100),
 price INT,
 primary key(ISBN)
 );

CREATE TABLE author(
a_name VARCHAR(50) NOT NULL,
address VARCHAR(50),
ISBN VARCHAR(100),
a_url VARCHAR(100) NOT NULL,
a_phone VARCHAR(20),
PRIMARY KEY(a_url),
foreign key(ISBN) references book(ISBN)
);

CREATE TABLE publisher(
p_name VARCHAR(50),
address VARCHAR(50),
ISBN VARCHAR(100),
p_url VARCHAR(100),
p_phone VARCHAR(20),
primary key(p_url, p_phone),
foreign key(ISBN) references book(ISBN)
);
CREATE TABLE eustomer(
    c_name VARCHAR(50) NOT NULL,
    c_email VARCHAR(50),
	c_address VARCHAR(50),
	ISBN VARCHAR(100),
	c_phone VARCHAR(20),
	basket_id VARCHAR(20),
    primary key(c_email),
	foreign key(ISBN) references book(ISBN)
);
CREATE TABLE warehouse(
     code VARCHAR(50) UNIQUE,
	 ISBN VARCHAR(100),
     address VARCHAR(50),
      phone VARCHAR(20),
      primary key(code),
	  foreign key(ISBN) references book(ISBN),
);


CREATE TABLE shopping_basket(
    basket_id VARCHAR(20),
	c_email VARCHAR(50),
    primary key(basket_id),
	foreign key(c_email) references eustomer(c_email)
);



INSERT INTO book(ISBN, book_no, year, title, price)
VALUES
('1111222345678', 65000, 2020, 'Historical Book', 200),
('9890987123478', 50000, 2019, 'ispn', 250);

INSERT INTO author(a_name, address, ISBN, a_url, a_phone)
VALUES
('abdul rahman', 'Dhaka', '0987654321234', 'url1', '2345678901'),
('Mahruf ahmed', 'Barishal', '9890987123478', 'url2', '0987654321');

INSERT INTO publisher(p_name, address, ISBN, p_url, p_phone)
VALUES
('Saykot khandaker', 'C&B Road', '9890987123478', 'url1', '0987628292'),
('mrs Rehena', 'Syllet', '1111222345678', 'url2', '099909028292');

INSERT INTO eustomer(c_name, c_email, , c_address, ISBN, C_phone, basket_id)
VALUES
('Karim', 'male@gamil.com', 'Dhaka', '1111222345678', '09876543211', '3344');
('Sneha rahaman', 'sneha789@hotmail.com', 'jhalakati', '1111222345678', '09876543211', '3244');

INSERT INTO warehouse(code, ISBN, address, phone)
VALUES
(322, '9890987123478', '1st floor, Dhumki', '01823278907'),
(333, '0987654321234', '3rd floor, Dhumki', '01543278907'),

INSERT INTO shopping_basket(basket_id, c_email)
VALUES
(2000, 'male@gamil.com),
