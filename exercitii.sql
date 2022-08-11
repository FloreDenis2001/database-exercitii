select * from masina
--> selecteaza toate masinile din tabel

select marca from masina;
--> selecteaza marca din tabel

select marca,culoare from masina;
-->selecteaza marca si culoarea din tabel

select marca as Denis from masina;
-->setez alias Denis coloanei marca din tabel 

select marca from masina where id>10;
-->selecteaza marca dupa o conditia id>10 din tabel;

select marca from masina where culoare = 'orange';
--> selecteaza masinile care au culoarea orange;

select marca from masina where culoare !='orange';
select marca from masina where culoare <> 'orange';
--> selecteaza masinile care nu au culoarea orange;

update masina set marca = 'audi';
--> modifica marca tuturor masinilor in audi ;

update masina set marca = 'audi',id=1;
-->modifica marca si id tuturor masinilor in audi respectiv 1;


update masina set marca = 'audi' where id<6;
-->modifica marca tuturor masinilor cu id mai mic decat 6 in audi ;

delete from masina;




-->sterge tabelul masina;

delete from masina where id=6;

-->sterge toate masinile cu id egal cu 6;

select student.id from student
inner join enrolment on student.id=enrolment.studentId;
--> formez o relatie intre id-ul studentului si studentId enrolmentului;

select course.id from course
inner join enrolment on course.id = enrolment.courseId;
--> formez o relatie intre id-ul cursului si courseId-ul enrolmentului;

select student.id from student
         inner join book on book.student_id = student.id
         inner join enrolment on enrolment.studentId = studentId
 --> formeaza relatii multiple 


 select student.id  ,courseId from student
 left join enrolment e on student.id = e.studentId
where  courseId is null
--> arata toti studentii inclusiv cei care nu au un curs ;


SELECT store FROM mall_south WHERE type = "restaurant"
    UNION 
SELECT store FROM mall_north WHERE type = "restaurant";

-->imi returneaza toate restaurantele , fara de cele comune ! 


select distinct name from course
where course.id  in  (select enrolment.courseId from enrolment );

--> imi afiseara toate cursurile din enrolment ! 


"           SELECT  IFNULL(resource_rid,origin_mainobject) FROM interactions where " +
            " ( resource_type is not null and  resource_type not in ('wbsElements', 'workPackages') " +
            " and resource_rid not in ( select rid from orders union select rid from order_items )) " +
            " or (resource_type is null and origin_mainobject_type not in ('wbsElements', 'workPackages')   and origin_mainobject not in " +
            "(select rid from orders union select rid from order_items  union select rid from umbrella_projects)) "


--#1 afiseaza cursurile la care este inscris studentul 7
select studentId,courseId from enrolment
where studentId=7;

--#2 afiseaza cartile in ordine alfabetica
select book_name from book
order by book_name asc ;

--#3 cursurile la care ii inscris studentul
select enrolment.studentId ,enrolment.courseId from enrolment
right join course c on enrolment.courseId = c.id
where enrolment.studentId=10;

--#4 toate cursurile studentului 20
select course.id ,course.name,course.department from course
inner join enrolment e on course.id = e.courseId
where e.studentId=20;


--#5 afiseaza studenti mai mari decat 21 ani
select student.firstName,student.lastName from student
where student.age>21;

--#6 schimba numele cartii
update book  set book_name='Jupiter' where book_name='21-87';

--#7 afiseaza cartile aparute dupa 22-11-2021

select * from book
where book.create_at>'2021-11-22'
order by create_at asc;

--#8 afiseaza toti studenti care au ctiti cartea Harry Poter

select * from book
inner join student s on s.id=book.student_id
where book_name='Harry Poter';

--#9 afiseaza cartile in ordine descrescatoare dupa nume
select * from book
order by book_name desc;

--#10 afiseaza stundeti la care numele incepe cu D
select * from student
where lastName regexp '^b';

--#11 afiseaza cartile care se termina in t
select book_name from book
where book_name regexp 't$';

--#12 afiseaza cursurile care incep cu r sau h , sau contin p
select * from course
where course.department regexp '^r|p|^h';

--#13 limit pentru organizarea datelor studentilor
select * from student
limit 21;

--#14 limit clause age
select * from student
order by age desc
limit 5;

--#15 like method
select * from book where book_name like 'Harry Poter';


--#16 sterge toate cursurile care incep cu a
delete from course where name regexp '^a';

--#17 ordoneaza descrescator toate departamentele - business

select * from course
where name='business'
order by department desc;

--#18 update department

update course set department='managment'
where course.id=6;

--#19 delete where age >22
delete from student where student.age>22;

--#20 rename statement
rename table book to books;

--#21 distinct book
select distinct book_name
from book;

--#22 count courses
select count (id) as totalCoursese from course;

--#23 stundeti care sunt inscrisi la cursul 10
select enrolment.studentId ,enrolment.courseId from enrolment
right join course c on enrolment.courseId = c.id
where c.Id=10;

