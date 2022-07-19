create table user (
	name varchar(30) not null,
	id varchar(30) not null primary key,
	email varchar(30) not null,
	password varchar(30) not null,
	tel varchar(30) not null
);

create table qna (
                     id bigint auto_increment primary key,
                     title varchar(100) not null,
                     text varchar(255) not null,
                     write_date datetime not null,
                     user_id int,
                     foreign key(user_id) references user (id) on delete cascade
)
