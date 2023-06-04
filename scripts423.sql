select *
from students s
         left join faculties f on s.faculty_id = f.id;

select s.*
from students s
         inner join avatars a on a.student_id = s.id;