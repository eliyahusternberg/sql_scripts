/*select * from <table>
inner join <table that you want to join>
on <id of the first table> = <id of 2nd table>;
```

```
select * from <first table>
inner join <table that you want to join>
on <first table>.<foreign key> = <second table>.<primary key>;
```
*/


select school.students.name,teachers.name from school.students 
inner join school.teachers
on school.students.teacher_id = school.teachers.id
;
