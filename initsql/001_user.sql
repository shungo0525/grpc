create table if not exists users (
  id int AUTO_INCREMENT,
  name varchar(10),
  PRIMARY KEY (id)
);

insert into users (name) values ("user-1");
insert into users (name) values ("user-2");
insert into users (name) values ("user-3");
insert into users (name) values ("user-4");
insert into users (name) values ("user-5");
