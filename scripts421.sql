UPDATE students
SET age = 16
WHERE age < 16;

select name, count(name)
from students
group by name
having count(id) > 1;

delete
from students
    where id in (SELECT s1.id
                 from students s1
                 inner join students s2 on s1.name = s2.name
                 where s1.id < s2.id)

ALTER TABLE students
    ADD CHECK ( age >= 16 );

ALTER TABLE students
    ADD UNIQUE (name);

ALTER TABLE students
    ALTER COLUMN name SET NOT NULL;

ALTER TABLE faculties
    ADD CONSTRAINT name_color_unique UNIQUE (name, color);

ALTER TABLE students
    ALTER COLUMN age SET DEFAULT 20;
