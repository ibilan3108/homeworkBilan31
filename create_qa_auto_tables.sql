create schema qauto;
create table qauto.car_brands(
	id int,
    title varchar(255)
);
create table qauto.car_models(
	id int,
    car_brand_id int,
    title varchar(255)
);
create table qauto.users(
	id int,
    firstName varchar(255),
    lastName varchar(255),
    email varchar(255),
	password varchar(255)
);
create table qauto.cars(
	id int,
    userid int,
    carBrandId int,
    carModelId int,
    mileage float,
    initialMilleage float
    );
    