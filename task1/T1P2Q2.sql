/* Q2 Create the tables and their attributes (i.e., the schemas) MySQL.*/

create database University_Accomodation;
use University_Accomodation;

create table Students(
	Student_id int not null auto_increment,
    firstName varchar(45),
    lastName varchar(45),
    DOB date,
    gender varchar(45),
    address varchar(45),
    nationality varchar(45),
    course varchar(45),
    contact_Number varchar(45),
    email varchar(45),
    special_needs varchar(45),
    category varchar(45),
    primary key(Student_id)
);
select * from Students;
drop table students;

create table Advisor
(
Advisor_id int not null auto_increment,
Full_Name varchar(45),
Position_Name varchar(45),
Department_Name varchar(45),
contact_Number varchar(45),
office_Location varchar(45),
primary key(Advisor_id)
);
select * from Advisor;
drop table Advisor;

create table Contacts
(
	Contact_id  int not null auto_increment,
	Contact_Number varchar(45),
    Name_of_Relative varchar(45),
    Relationship varchar(45),
    Address varchar(45),
    primary key(contact_id)
);
select * from Contacts;
drop table Contacts;

create table Courses
(
	Course_Number int not null auto_increment,
    Course_Name varchar(45),
    Duration varchar(45),
    Instructor varchar(45),
    Department_Name varchar(45),
    primary key(Course_Number)
);
select * from Courses;
drop table Courses;

create table Residence
(
	Residence_id int not null auto_increment,
    Residence_Type varchar(45),
    Linking_id int,
    primary key(Residence_id)
);
select * from Residence;
drop table Residence;

create table Halls_of_Residence
(
	Place_Number int not null auto_increment,
    Hall_Name varchar(45),
    Address varchar(45),
    Tel_Number varchar(45),
	Room_Number int,
    Monthly_Rent int,
    primary key(Place_Number)
);
select * from Halls_of_Residence;
drop table Halls_of_Residence;

create table Flats
(	
	Flat_Num int not null auto_increment,
    Address varchar(45),
	Room_Number int,
    Number_of_Rooms int,
    Rooms_Available tinyint,
    primary key(Flat_Num)
);
select * from Flats;
drop table Flats;

create table Leases
(
	Lease_Number int not null auto_increment,
    Duration varchar(45),
    Student_id int,
    Student_Name varchar(45),
    Place_Number varchar(45),
    Room_Number varchar(45),
    Address varchar(45),
    joining_Date date,
    Leaving_Date date,
    primary key(Lease_Number)
);  

select * from Leases;
drop table Leases;

create table Invoices
(
	Invoice_Number int not null auto_increment,
    Lease_Number int,
    Semester varchar(45),
    Payment_Due int,
    Student_Name varchar(45),
    Student_id int,
	Residence_Type varchar(45),
    Linking_id int,
    Room_Number int,
    Address varchar(45),
    Date_of_Payment date,
    Method_of_Payment varchar(45),
    Reminder_Sent tinyint,
    primary key(Invoice_Number)
); 
select * from Invoices;
drop table Invoices;

create table Accomodation_Staff
(
	staff_ID int not null auto_increment,
    Name varchar(45),
    Address varchar(45),
    DOB datetime,
    Gender varchar(45),
    Position_Name varchar(45),
    Location varchar(45),
    primary key(staff_ID)
);
select * from Accomodation_Staff;
drop table Accomodation_Staff;

create table Inspection_Staff
(
	Inspection_id int not null auto_increment,
    Inspector_Name varchar(45),
    Inspection_Date date,
    is_Report_Satisfactory tinyint,
    Status_Report varchar(45),
    primary key (Inspection_id)
);
select * from Inspection_Staff;
drop table Inspection_Staff;
