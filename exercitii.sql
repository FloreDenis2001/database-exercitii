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
