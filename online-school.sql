use online_school_db;

-- STUDENT TABLE
create table student(
    id int auto_increment primary key,
    firstName VARCHAR(10),
    lastName VARCHAR(10),
    age int
);
select * from student;

insert into student (firstName, lastName, age) values ('Darrick', 'Pabst', 22);
insert into student (firstName, lastName, age) values ('Tessy', 'Costen', 22);
insert into student (firstName, lastName, age) values ('Mel', 'Garstang', 20);
insert into student (firstName, lastName, age) values ('Teresita', 'Truin', 22);
insert into student (firstName, lastName, age) values ('Cherie', 'Izakof', 19);
insert into student (firstName, lastName, age) values ('Madge', 'Stinson', 24);
insert into student (firstName, lastName, age) values ('Osmond', 'Yele', 22);
insert into student (firstName, lastName, age) values ('Tammy', 'Justun', 19);
insert into student (firstName, lastName, age) values ('Beverie', 'Davie', 21);
insert into student (firstName, lastName, age) values ('Nissy', 'Chivrall', 19);
insert into student (firstName, lastName, age) values ('Vannie', 'Prozescky', 19);
insert into student (firstName, lastName, age) values ('Emmott', 'Oblein', 20);
insert into student (firstName, lastName, age) values ('Elmore', 'Wathen', 20);
insert into student (firstName, lastName, age) values ('Jere', 'Gibberd', 18);
insert into student (firstName, lastName, age) values ('Marian', 'Peete', 18);
insert into student (firstName, lastName, age) values ('Thane', 'Gadsden', 19);
insert into student (firstName, lastName, age) values ('Farleigh', 'Sealand', 18);
insert into student (firstName, lastName, age) values ('Siusan', 'McKew', 18);
insert into student (firstName, lastName, age) values ('Killie', 'Dalrymple', 22);
insert into student (firstName, lastName, age) values ('Leann', 'Buske', 18);
insert into student (firstName, lastName, age) values ('Stormy', 'Dowty', 21);
insert into student (firstName, lastName, age) values ('Fee', 'Bernardino', 18);


-- BOOK TABLE
delete  from book;

create table book(
    id int auto_increment primary key,
    student_id int not null,
    book_name varchar(40) not null ,
    create_at date not null ,
    foreign key (student_id) references student(id)
);

select student.id from student
inner join book on student.id = book.student_id;

insert into book (student_id, book_name, create_at) VALUE (2,'Harry Poter','2022-10-09');
insert into book (student_id, book_name, create_at) values (5, 'Retreat', '2022-07-17');
insert into book (student_id, book_name, create_at) values (2, 'Nina Frisk', '2022-05-31');
insert into book (student_id, book_name, create_at) values (10, 'Cruel Story of Youth', '2021-11-28');
insert into book (student_id, book_name, create_at) values (7, 'Happy-Go-Lucky', '2022-01-21');
insert into book (student_id, book_name, create_at) values (15, 'Slender Thread, The', '2022-06-13');
insert into book (student_id, book_name, create_at) values (13, 'North by Northwest', '2021-11-22');
insert into book (student_id, book_name, create_at) values (17, 'Far from Heaven', '2022-01-12');
insert into book (student_id, book_name, create_at) values (13, 'Cradle 2 the Grave', '2022-01-02');
insert into book (student_id, book_name, create_at) values (2, 'Runaway', '2022-01-20');
insert into book (student_id, book_name, create_at) values (14, 'Colt 38 Special Squad', '2021-10-31');
insert into book (student_id, book_name, create_at) values (3, '21-87', '2021-08-10');
insert into book (student_id, book_name, create_at) values (8, 'Oxford Blues', '2021-12-02');
insert into book (student_id, book_name, create_at) values (7, 'Sergio', '2022-04-03');
insert into book (student_id, book_name, create_at) values (5, 'Momo', '2022-05-16');
insert into book (student_id, book_name, create_at) values (18, 'Hot to Trot', '2022-03-15');
insert into book (student_id, book_name, create_at) values (7, 'Dirty Pictures', '2022-06-03');
insert into book (student_id, book_name, create_at) values (2, 'Wild Heritage', '2022-04-15');
insert into book (student_id, book_name, create_at) values (15, 'Crossworlds', '2021-09-16');

-- COURSE TABLE

create table course (
    id int auto_increment primary key ,
    name varchar(20) not null ,
    department varchar(20) not null
);


insert into course (name,department) value ('business','managment');
insert into course (name,department) value ('it & software','hardware');
insert into course (name,department) value ('design','web design');
insert into course (name,department) value ('marketing','digital marketing');
insert into course (name,department) value ('design','game design');
insert into course (name,department) value ('business','sales');
insert into course (name,department) value ('business','real estate');
insert into course (name,department) value ('it & software','operating systems');
insert into course (name,department) value ('design','3d & animation');
insert into course (name,department) value ('marketing','branding');
insert into course (name,department) value ('design','web design');
insert into course (name,department) value ('business','e-commerce');
insert into course (name,department) value ('business','sales');
insert into course (name,department) value ('it & software','network security');
insert into course (name,department) value ('design','game design');
insert into course (name,department) value ('marketing','digital marketing');
insert into course (name,department) value ('design','web design');
insert into course (name,department) value ('business','sales');



-- ENROLMENT TABLE
create table enrolment (

    id int auto_increment primary key,
    studentId int not null ,
    courseId int not null ,
    createAt date not null ,
    foreign key (studentId) references student(id),
    foreign key (courseId) references course(id)
);


select student.id from student
inner join enrolment on student.id=enrolment.studentId;

select course.id from course
inner join enrolment on course.id = enrolment.courseId;

insert into enrolment (studentId, courseId, createAt) values (10, 17, '2021-10-17');
insert into enrolment (studentId, courseId, createAt) values (10, 3, '2021-08-27');
insert into enrolment (studentId, courseId, createAt) values (13, 15, '2021-08-13');
insert into enrolment (studentId, courseId, createAt) values (20, 3, '2021-08-12');
insert into enrolment (studentId, courseId, createAt) values (7, 3, '2022-06-09');
insert into enrolment (studentId, courseId, createAt) values (20, 13, '2021-09-30');
insert into enrolment (studentId, courseId, createAt) values (18, 14, '2022-04-30');
insert into enrolment (studentId, courseId, createAt) values (20, 4, '2021-11-19');
insert into enrolment (studentId, courseId, createAt) values (7, 13, '2022-01-16');
insert into enrolment (studentId, courseId, createAt) values (2, 9, '2021-12-20');
insert into enrolment (studentId, courseId, createAt) values (19, 9, '2021-09-30');
insert into enrolment (studentId, courseId, createAt) values (9, 14, '2021-10-24');
insert into enrolment (studentId, courseId, createAt) values (9, 12, '2022-01-12');
insert into enrolment (studentId, courseId, createAt) values (22, 1, '2021-08-23');
insert into enrolment (studentId, courseId, createAt) values (3, 12, '2022-04-09');
insert into enrolment (studentId, courseId, createAt) values (4, 2, '2021-09-19');
insert into enrolment (studentId, courseId, createAt) values (21, 3, '2022-03-05');
insert into enrolment (studentId, courseId, createAt) values (16, 1, '2022-01-26');
insert into enrolment (studentId, courseId, createAt) values (20, 6, '2021-12-20');
insert into enrolment (studentId, courseId, createAt) values (7, 7, '2022-01-23');
insert into enrolment (studentId, courseId, createAt) values (17, 10, '2022-01-18');
insert into enrolment (studentId, courseId, createAt) values (1, 4, '2022-03-26');
insert into enrolment (studentId, courseId, createAt) values (12, 6, '2022-04-04');
insert into enrolment (studentId, courseId, createAt) values (15, 3, '2021-08-07');
insert into enrolment (studentId, courseId, createAt) values (21, 4, '2021-11-28');
insert into enrolment (studentId, courseId, createAt) values (13, 6, '2022-07-07');
insert into enrolment (studentId, courseId, createAt) values (5, 8, '2022-01-15');
insert into enrolment (studentId, courseId, createAt) values (2, 9, '2022-05-26');
insert into enrolment (studentId, courseId, createAt) values (14, 3, '2022-05-21');
insert into enrolment (studentId, courseId, createAt) values (11, 10, '2021-12-23');
insert into enrolment (studentId, courseId, createAt) values (3, 7, '2022-05-16');



