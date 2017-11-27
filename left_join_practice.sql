

use shul;

select * from families
left join membership
on membership.family_id = families.id;

