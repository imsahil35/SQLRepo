show databases; --It shows all the names present in the database

--Update method is used to update the values present in the table...
update rgm set name = "sreenu" where Contact_no = 987900;

--To insert multiple values inside the table we can use the following command...
update  rgm set name = "ravi", address = "che" where session = "django";

--To copy the data from one table to another empty table we can use the following command...
insert into test select * from student;
example----
create table copystudent (
stu_id int,
stu_name varchar(20),
stu_marks int
);
insert into copystudent select * from student;
select * from copystudent;

--Truncate method is used to delete the contents of the table not the complete table(with columns and all)....
truncate table copystudent;

--To delete a row in the table we use delete command....
delete from student where stu_name = "mani";

-- to delete the entire table without any existence we use drop command..
drop table copystudent;

--To alter the table or change the column names we can use the alter command...
alter table student rename column  stu_name  to name;
--we can also rename the table name by using the alter command...
alter table student rename student  to rgm_student;

--update is used to change the row data and alter is used to change the column level data and column names...

--To add the a new coliumn to an existing table we can use the following command---
alter table rgm_student add address varchar(30);

--To add data to new column we use the following command---
update rgm_student set address  = "hyd" where name = "sreenu";

--To change the size of the datatype or to change the datatype of particular column we can use modify command....
alter table rgm_student modify address varchar(40);
alter table rgm_student modify marks float;

--To drop a column we can use the following command...
alter table rgm_student drop column address;

-- To drop multiple columns we cna use the following command...
alter table rgm_student drop column stu_id, drop column name;

--Bulit in functions...(aggregate functions)
select min(stu_marks) from rgm_student;
select max(stu_marks) from rgm_student;
select avg(stu_marks) from rgm_student;
select sum(stu_marks) from rgm_student;

create database excercise;
create table customer(Id int primary key, name varchar(20),city varchar(20),grade int, salesman_id int);
insert into customer values (100, "sahil","mumbai",98,200),
(101, "naveen","chennai",87,201),
(102, "ravi","bangalore",85,202),
(103, "suresh","lucknow",99,203),
(104, "prashanth","kolkata",60,204),
(105, "tarak","hyderabad",75,205),
(106, "yogi","ahmedabad",88,206),
(107, "hari","amritsar",85,207);
select * from customer;
select * from customer where grade > 90;
select * from customer where grade >= 90;
select * from customer where grade >= 90 order by grade;
select * from customer where city = "hyderabad" and grade>=60;
select * from customer where city = "mumbai" or not grade > 100;
