-- teachers to students relationship

drop database if exists school;

create database school;
use school;

create table `teachers` (
`id` int  not null auto_increment ,
`name` varchar(100) not null, 
`address` varchar(100),
`phone_number` varchar(20) not null,
`salary` varchar(20), 
primary key (`id`)
);

create table `students` (
`id` int auto_increment not null , 
`name` varchar(100) not null, 
`grade` int ,
`seat_location` varchar(50) ,
primary key (`id`)
);


create table `teachers_students`(
`id` int auto_increment not null,
`class` varchar(20) ,
primary key (`id`),
`teacher_id` int not null,
foreign key (`teacher_id`) references `teachers` (`id`),
`students_id` int not null,
foreign key (`students_id`) references `students` (`id`), 
);


INSERT INTO `teachers` 
( `name`, `address`, `phone_number`, `salary`)
VALUES 
("Rabbi Gold", "13 pine street", "718-858-9034", "2000");


INSERT INTO `teachers` 
 (`name`, `address`, `phone_number`, `salary`)
VALUES 
("Rabbi silver", "13 forest street", "718-848-9014", "2000");


INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("binyamin", "80", "c-3");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("chaim", "70", "c-5");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("dovy", "65", "b-3");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("pinchas", "80", "c-1");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("velvy", "70", "c-4");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("eliyahu", "90", "b-1");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("shmarel", "75", "a-1");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("refael", "68", "a-2");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("gedalya", "85", "a-3");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("avromi", "75", "a-6");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("yankel", "80", "c-3");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("mordechai", "70", "c-1");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("binyamin", "80", "c-2");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("baruch", "90", "b-3");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("yehuda", "75", "a-3");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("zalman", "68", "a-6");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("chaim", "90", "a-4");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("moshe", "68", "c-3");

INSERT INTO `students` 
( `name`, `grade`, `seat_location`)
VALUES 
("ephraim", "78", "b-4");



-- Chumash Shiur
insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (1,1,"Chumash");

insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (5,1,"Chumash");

insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (19,1,"Chumash");

insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (10,1,"Chumash");

insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (11,1,"Chumash");




-- Tosfos Shiur
insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (1,2,"Tosfos");

insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (5,2,"Tosfos");

insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (19,2,"Tosfos");

insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (10,2,"Tosfos");

insert into `teachers_students` 
(`students_id`,`teacher_id`,`class`) 
values (11,2,"Tosfos");



