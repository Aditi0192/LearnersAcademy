create database academy;

use academy;

create table class(
class_id int primary key,
class_name varchar(50)
);

create table subjects(
subject_id int primary key,
subject_name varchar(50),
class_id int,
FOREIGN KEY (class_id) REFERENCES class(class_id)
);
alter table subjects drop foreign key subjects_ibfk_1;
alter table subjects drop column class_id;
select * from subjects;

create table class_subjects(
class_id int,
subject_id int,
foreign key (class_id) references class(class_id),
foreign key(subject_id) references subjects(subject_id)
);

alter table class_subjects add column teacher_id int;
alter table class_subjects add foreign key(teacher_id) references teachers(teacher_id);
insert into class_subjects(teacher_id) values (1001);
select * from class_subjects;
delete from class_subjects where teacher_id = 1001;
update class_subjects set teacher_id = 1001 where class_id = 1 and subject_id = 101;
update class_subjects set teacher_id = 1002 where class_id = 1 and subject_id = 102;
update class_subjects set teacher_id = 1001 where class_id = 1 and subject_id = 104;
update class_subjects set teacher_id = 1002 where class_id = 1 and subject_id = 105;

update class_subjects set teacher_id = 1002 where class_id = 2 and subject_id = 101;
update class_subjects set teacher_id = 1001 where class_id = 2 and subject_id = 102;
update class_subjects set teacher_id = 1003 where class_id = 2 and subject_id = 103;
update class_subjects set teacher_id = 1001 where class_id = 2 and subject_id = 105;
update class_subjects set teacher_id = 1003 where class_id = 2 and subject_id = 115;

update class_subjects set teacher_id = 1004 where class_id = 3 and subject_id = 106;
update class_subjects set teacher_id = 1005 where class_id = 3 and subject_id = 107;
update class_subjects set teacher_id = 1004 where class_id = 3 and subject_id = 110;
update class_subjects set teacher_id = 1005 where class_id = 3 and subject_id = 111;

update class_subjects set teacher_id = 1003 where class_id = 4 and subject_id = 103;
update class_subjects set teacher_id = 1004 where class_id = 4 and subject_id = 112;
update class_subjects set teacher_id = 1005 where class_id = 4 and subject_id = 114;
update class_subjects set teacher_id = 1001 where class_id = 4 and subject_id = 115;

update class_subjects set teacher_id = 1001 where class_id = 5 and subject_id = 108;
update class_subjects set teacher_id = 1002 where class_id = 5 and subject_id = 109;
update class_subjects set teacher_id = 1003 where class_id = 5 and subject_id = 113;
update class_subjects set teacher_id = 1004 where class_id = 5 and subject_id = 106;
update class_subjects set teacher_id = 1005 where class_id = 5 and subject_id = 107;



create table students(
student_id int primary key,
student_name varchar(50),
class_id int,
FOREIGN KEY (class_id) REFERENCES class(class_id)
);

create table teachers(
teacher_id int primary key,
teacher_name varchar(50),
class_id int,
subject_id int,
FOREIGN KEY (class_id) REFERENCES class(class_id),
FOREIGN KEY (subject_id) REFERENCES subjects(subject_id)
);

select * from teachers;
alter table teachers drop foreign key teachers_ibfk_1;
alter table teachers drop foreign key teachers_ibfk_2;
alter table teachers drop column class_id;
alter table teachers drop column subject_id;

select * from class;
insert into class_subjects(class_id,subject_id) values(1, 101),(1,102),(1,104),(1,105);
select * from class_subjects;
insert into class_subjects(class_id,subject_id) values(2, 101),(2,102),(2,103),(2,105),(2,115);
insert into class_subjects(class_id,subject_id) values(3, 106),(3,107),(3,110),(3,111);
insert into class_subjects(class_id,subject_id) values(4, 103),(4,112),(4,114),(4,115);
insert into class_subjects(class_id,subject_id) values(5, 108),(5,109),(5,113),(5,106),(5,107);

# joining all tables

select c.class_id, c.class_name, s.student_id, s.student_name, t.teacher_name, sb.subject_name 
from students s join class c on s.class_id = c.class_id
join class_subjects cs on c.class_id = cs.class_id
join teachers t on cs.teacher_id = t.teacher_id
join subjects sb on cs.subject_id = sb.subject_id;




use academy;
CREATE TABLE `login` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`username`)
);

INSERT INTO `login` (`username`, `password`) VALUES ("admin", "admin");
select * from login;