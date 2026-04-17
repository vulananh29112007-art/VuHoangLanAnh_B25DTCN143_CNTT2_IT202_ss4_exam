create database ShopManager;
use ShopManager;

create table Categories (
category_id int auto_increment primary key,
category_name varchar(30) not null
);

create table Products (
product_id int auto_increment primary key,
product_name varchar(50) not null,
price decimal(10, 2) check(price >= 0) not null,
stock int check(stock >= 0) not null,
category_id int,
foreign key (category_id) references Categories(category_id)
);

insert into Categories(category_name)
values
('Điện tử'),
('Thời trang');

insert into Products (product_name, price, stock, category_id)
values 
('iPhone 15', '25000000 ', '10 ', 1),
('Samsung S23', '20000000',  '5', 1),
('Áo sơ mi nam', '500000', '50', 2),
('Giày thể thao', '1200000', '20', 2);


update Products
set price = 26000000
where product_name = 'iPhone 15';

update Products
set stock = stock + 10;


delete from Products
where product_id = 4;

delete from Products
where price <= 1000000;

select * from Products;

select * from Products
where stock > 15;
