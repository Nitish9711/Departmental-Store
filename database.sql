CREATE DATABASE IF NOT EXISTS testing;

USE testing;

CREATE TABLE users(
	username varchar(50) not null, 
	password varchar(100) not null, 
	enabled int not null default 0, 
	user_role varchar(20) not null,
	primary key (username)
);

CREATE TABLE customer(
	username varchar(50) not null, 
	fName varchar(100) not null,
	lName varchar(100) not null, 
	email varchar(100) not null,
	contact bigint not null, 
	age int not null,
	houseNo varchar(50) not null,
	street varchar(50) not null,
	locality varchar(50) not null,
	primary key (username),
	foreign key (username) references users(username) on delete cascade
);

CREATE TABLE activation_codes(
	username varchar(50) not null,
	code varchar(20) not null,
	primary key (code),
	foreign key (username) references customer(username) on delete cascade
);

CREATE TABLE vendor(
	username varchar(50) not null,
	name varchar(100) not null,
	companyName varchar(80) not null,
	email varchar(100) not null,
	contact bigint not null,
	primary key (username),
	foreign key (username) references users(username) on delete cascade
);

CREATE TABLE courier(
	username varchar(50) not null,
	courierCompanyName varchar(80) not null,
	email varchar(100) not null,
	primary key (username),
	foreign key (username) references users(username) on delete cascade
);

CREATE TABLE category(
	categoryName varchar(50) not null,
	description varchar(1000),
	primary key (categoryName)
);

CREATE TABLE product(
	productId int not null auto_increment,
	productName varchar(100) not null,
	price int not null,
	categoryName varchar(50),
	product_url varchar(500),
	primary key (productId),
	foreign key (categoryName) references category(categoryName) on delete cascade
);

CREATE TABLE cart(
	username varchar(50) not null,
	productId int not null,
	quantity int not null,
	primary key (username, productId),
	foreign key (username) references customer(username) on delete cascade,
	foreign key (productId) references product(productId) on delete cascade
);

CREATE TABLE vendor_proposal(
	username varchar(50) not null,
	productId int not null,
	price int not null,
	status int not null default 0,
	primary key (username, productId),
	foreign key (username) references vendor(username) on delete cascade,
	foreign key (productId) references product(productId) on delete cascade
);

CREATE TABLE feedback(
	feedbackId int not null auto_increment,
	contact_info varchar(50) not null,
	subject varchar(500) not null,
	details varchar(1000),
	primary key (feedbackId),
	foreign key (contact_info) references users(username) on delete cascade
);

CREATE TABLE all_orders(
	orderId int auto_increment,
	username varchar(50) not null,
	status varchar(20) not null default "Packaging",
	courierId varchar(50),
	primary key(orderId),
	foreign key (username) references customer(username) on delete cascade,
	foreign key (courierId) references courier(username) on delete set null
);

CREATE TABLE order_info(
	orderId int not null,
	productId int not null,
	quantity int not null,
	primary key(orderId, productId),
	foreign key (orderId) references all_orders(orderId) on delete cascade,
	foreign key (productId) references product(productId)
);

CREATE TABLE bill(
	orderId int not null,
	dateOfIssue date not null,
	paymentMethod varchar(100) default "Cash on Delivery",
	shipping_address varchar(500) not null,
	primary key (orderId),
	foreign key (orderId) references all_orders(orderId) on delete cascade
);

insert into users values('admin', '$2a$10$o0B.smrTF3cm9/6DCLnswOnDjITNq2SN5y072TmLZ5QBpEQpsYGTa', 1 , 'ROLE_ADMIN');
insert into users values('khushiagr', '$2a$10$o0B.smrTF3cm9/6DCLnswOnDjITNq2SN5y072TmLZ5QBpEQpsYGTa', 1, 'ROLE_USER');
insert into users values('manoj', '$2a$10$o0B.smrTF3cm9/6DCLnswOnDjITNq2SN5y072TmLZ5QBpEQpsYGTa', 1, 'ROLE_VENDOR');
insert into users values('courier1', '$2a$10$o0B.smrTF3cm9/6DCLnswOnDjITNq2SN5y072TmLZ5QBpEQpsYGTa', 1, 'ROLE_COURIER');
insert into users values('simran', '$2a$10$H2j5T28uB59TR/2nYqK.8eMVKFjEy5J4lpzhJ18gJ.lBvrkOrUqwK', 1, 'ROLE_USER');







insert into customer values('khushiagr', 'Khushi', 'Agrawal', 'khushia.cd.cse17@itbhu.ac.in', 8604673216, 20, 'Room No 533', 'New IIT Girls Hostel', 'BHU');
insert into customer values('simran', 'Simran', 'Jaiswal', 'simranjaiswal95@gmail.com', 7985763158, 24, 'D63/25 A-1', 'Fatman Road', 'Mahmoorganj');
insert into vendor values('manoj', 'Manoj', 'ServeFresh', 'manojverma@gmail.com', 9415353235);
insert into courier values('courier1', 'Bluedart', 'bluedartofficial@gmail.com');






insert into category values('Vegetables', 'All fresh vegetables.');
insert into product values(1, 'Bell Pepper', 100, 'Vegetables', '/resources/images/product-1.jpg');
insert into product values(2, 'Green Peas', 200, 'Vegetables', '/resources/images/product-3.jpg');
insert into product values(3, 'Tomatoes', 50, 'Vegetables', '/resources/images/product-5.jpg');
insert into product values(4, 'Onion', 80, 'Vegetables', '/resources/images/product-9.jpg');
insert into product values(5, 'Garlic', 30, 'Vegetables', '/resources/images/product-11.jpg');
insert into category values('Fruits', 'All fresh fruits.');
insert into product values(6, 'Strawberry', 220, 'Fruits', '/resources/images/product-2.jpg');
insert into product values(7, 'Apples', 90, 'Fruits', '/resources/images/product-10.jpg');
insert into category values('Juice', 'Fresh Juices available here!');
insert into product values(8, 'Mango Juice', 25, 'Juice', 'https://www.freemockupworld.com/wp-content/uploads/2019/08/Juice-Bottle-Mockup.jpg');




insert into feedback values(1, 'khushiagr', 'Stale products', 'I had ordered onions and tomatoes around a week back and upon delivery, I received stale products, clearly not suitable for cooking. Please look into the matter. I have been a regular customer and this is the first time such a thing is happening.');
insert into feedback values(2, 'simran', 'Awesome service!' , 'I absolutely love the service. It is fast and reliable. 10/10 definitely');
insert into feedback values(3, 'manoj', 'Nice Service', 'I have been a partner with your store for over a year now, and I am pretty happy with all our deals and proposals so far. Hope this continues.');
insert into feedback(contact_info, subject) values('courier1', 'Unable to contact. Please contact me soon.');




