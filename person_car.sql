create table car (
	car_uid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	price NUMERIC(19,2) NOT NULL
);
create table person (
	hi_uid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(7) NOT NULL,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(30),
    car_uid UUID REFERENCES car (car_uid),
    Unique(car_uid),
	Unique(email)
);

insert into person (person_uid,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Lazaro', 'Titford', null, 'Female', '2020-07-15', 'Chad');
insert into person (person,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'Mathew', 'Worrell', 'mworr3@tec.com', 'male', '2020-12-12', 'Russia');
insert into person (person,first_name, last_name, email, gender, date_of_birth, country_of_birth) values (uuid_generate_v4(),'MaKI', 'Wor', 'mw@tec.com', 'male', '2020-12-12', 'USA');
insert into car (car_uid,make, model, price) values (uuid_generate_v4(),'Buick', 'Century', '489,92');
insert into car (car_uid,make, model, price) values (uuid_generate_v4(),'BMW', '6 Series', '570,78');
