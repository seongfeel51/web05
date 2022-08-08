use myshop;
select * from member;

create table board(seq int primary key,
title varchar(50) not null,
content varchar(500),
bgimage varchar(500) not null,
regdate date);

alter table board modify seq int auto_increment;

create table FAQ(qno int primary key,
tag varchar(20),
qcon varchar(200),
acon varchar(500));

insert into goods(gname, gimg, gsize, weight, texture, gcate)
values("축구공", "", "100", "50", "pp", "football");

select * from goods where gcate;