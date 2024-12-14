CREATE DATABASE RetailDWH

USE RetailDWH
GO

create table Dim_Store(
    ID int identity primary key,
    storeid varchar(50),
	store_name varchar(50),
	phone varchar(50),
	address varchar(50),
	city varchar(50),
	manager_name varchar(50),
	opening_date date,
	is_current BIT
);

create table Dim_Customer(
    ID int identity primary key,
    customerid varchar(50),
	first_name varchar(50),
	last_name varchar(50),
	full_name nvarchar(101),
	email varchar(50),
	gender varchar(50),
	contact_number varchar(50),
	address varchar(50),
	city varchar(50),
	customer_since date,
	is_current BIT
);

create table Dim_Product(
    ID int identity primary key,
    productid varchar(50),
	product_name varchar(100),
	product_category varchar(50),
	unit_price numeric(18,2),
	is_current BIT
);

create table Dim_Date(
    dateid int primary key,
	full_date date,
	year int,
	quarter nvarchar(2),
	month int,
	month_name nvarchar(9),
	day int,
	day_name nvarchar(9)
);

create table Fact_Sales(
    transaction_id bigint primary key,
	date_id int foreign key references Dim_Date(dateid),
	customer_id int foreign key references Dim_Customer(ID),
	product_id int foreign key references Dim_Product(ID),
	store_id int foreign key references Dim_Store(ID),
	quantity int,
	unit_price numeric(18,2),
	total_price numeric(18,2)
);