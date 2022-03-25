create table customer (
	name varchar(30) not null,
	id varchar(30) not null primary key,
	email varchar(30) not null,
	password varchar(30) not null,
	tel varchar(30) not null
)

select * from customer
insert into customer(name,id,email,password,tel) values("뚱이","star","star@google.com","11111111","01012345678");
insert into customer(name,id,email,password,tel) values("스폰지밥","sponge","sponge@google.com","22222222","01112345678");

select name from customer where id="star" and password="11111111"

select password from customer where id="star" and email="star@google.com"

select * from customer

delete from customer where id="star"

select count(*) from customer where id="1";

alter table customer alter column name varchar(30) not null;

drop table customer;

select * from customer where id="rabbith" and pw="gpfusdl3";