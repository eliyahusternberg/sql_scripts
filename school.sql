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
`teacher_id`int,
primary key (`id`),
foreign key (`teacher_id`) references teachers (`id`)
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
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("binyamin", "80", "c-3", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("chaim", "70", "c-5", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("dovy", "65", "b-3", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("pinchas", "80", "c-1", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("velvy", "70", "c-4", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("eliyahu", "90", "b-1", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("shmarel", "75", "a-1", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("refael", "68", "a-2", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("gedalya", "85", "a-3", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("avromi", "75", "a-6", 1);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("yankel", "80", "c-3", 1);




INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("mordechai", "70", "c-1", 2);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("binyamin", "80", "c-2", 2);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("baruch", "90", "b-3", 2);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("yehuda", "75", "a-3", 2);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("zalman", "68", "a-6", 2);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("chaim", "90", "a-4", 2);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("moshe", "68", "c-3", 2);

INSERT INTO `students` 
( `name`, `grade`, `seat_location`, `teacher_id`)
VALUES 
("ephraim", "78", "b-4", 2);


/*```
select * from <table>
inner join <table that you want to join>
on <id of the first table> = <id of 2nd table>;
```

```
select * from <first table>
inner join <table that you want to join>
on <first table>.<foreign key> = <second table>.<primary key>;
``*/


select * from students;
select * from teachers;


select students.name,teachers.name from students 
inner join teachers
on students.teacher_id = teachers.id;




