-- Doing Day 1 assignment correctly after class of Day 2 
create database chubb; 
show databases;
use chubb;
-- 1.Creating Tables
-- a. Users table
create table Users (Id int NOT NULL PRIMARY KEY,User_Name varchar(50));
-- b. Codekata table
create table Codekata (Id int NOT NULL PRIMARY KEY,problems_solved int);
-- c. Attendance table
create table Attendance (Id int NOT NULL PRIMARY KEY,Attendance_Status text);
-- d. Topics table
create table Topics (Id int,Topic_Cleared varchar(50));
-- e. Tasks Table
create table Tasks (Id int,Task_Name varchar(50));
-- f. Companies Drive table
create table Company_Drives (Id int NOT NULL PRIMARY KEY,Number_of_Companies_Attended int);
-- g. Mentors table
create table Mentors (Mentor_Id int NOT NULL PRIMARY KEY,Mentor_Name varchar(50),No_Students_Under_Mentor int );
-- h. students_activated_courses table
create table students_activated_courses (Id int,Activated_Course_Name varchar(50));
-- i. Courses Table
create table courses (Id int NOT NULL PRIMARY KEY,Course_Name varchar(50));

-- 2. Inserting minimum 5 rows in each table
-- a.
Insert into Users(Id,User_Name) Values(1,"Ram"),(2,"Shyam"),(3,"Ghanshyam"),(4,"Shivam"),(5,"Tushar");
-- b.
Insert into Codekata(Id,problems_solved)Values(1,25),(2,30),(3,27),(4,30),(5,28);
-- c.
Insert into Attendance(Id,Attendance_Status)Values(1,"Present"),(2,"Absent"),(3,"Present"),(4,"Present"),(5,"Present");
-- d.
Insert into Topics(Id,Topic_Cleared)Values(1,"Select Queries"),(1,"Creating Tables"),(2,"Joins in table"),(2,"Union of tables"),(3,"Inserting Values in Tables"),(4,"Joins in table"),(4,"Joins in table"),(5,"Select Queries");
-- e.
Insert into Tasks(Id,Task_Name)Values(1,"Select Queries"),(1,"Creating Tables"),(1,"Inserting Values in Tables"),(2,"Joins in table"),(2,"Union of tables"),(3,"Select Queries"),(3,"Creating Tables"),(3,"Inserting Values in Tables"),(4,"Joins in table"),(4,"Joins in table"),(5,"Select Queries");
-- f.
Insert into Company_Drives(Id,Number_of_Companies_Attended)Values(1,8),(2,7),(3,9),(4,6),(5,7);
-- g.
Insert into Mentors(Mentor_Id,Mentor_Name,No_Students_Under_Mentor)Values(1,"Venkat",3),(2,"Srishant",2);
-- h.
Insert into students_activated_courses(Id,Activated_Course_Name)Values(1,"Cloud"),(1,"NOSQL"),(1,"AI"),(2,"ML"),(2,"AI"),(3,"Data Science"),(3,"Cloud"),(4,"Cloud"),(4,"NOSQL"),(4,"NODE JS"),(5,"ML"),(5,"NOSQL");
-- i.
Insert into courses(Id,Course_Name)Values(1,"SQL"),(2,"SQL"),(3,"SQL"),(4,"SQL"),(5,"SQL");

-- Q3.get number problems solved in codekata by combining the users
select Users.User_name,Codekata.problems_solved from Codekata inner join Users on Users.Id=Codekata.Id;

-- Q4.display the no of company drives attended by a user
select Users.User_name,Company_Drives.Number_of_Companies_Attended from Company_Drives inner join Users on Company_Drives.Id=Users.Id;

-- Q5.combine and display students_activated_courses and courses for a specific user groping them based on the course
Select a.User_Name,b.Activated_Course_Name,c.Course_name from students_activated_courses as b join Users as a join Courses c where a.Id=b.Id And b.id=c.id group by c.Id ;

-- Q6.Listing out all mentors
select distinct(Mentor_name) from Mentors;

-- Q7.list the number of students that are assigned for a mentor
select mentor_name,no_students_under_mentor from mentors;



