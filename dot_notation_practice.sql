use shul;
use school;
select * from teachers;

-- same as

use shul;
select school.teachers.salary from school.teachers;