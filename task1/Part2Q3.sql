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

insert into students(firstName,lastName,DOB,gender,address,nationality,course,
contact_Number,email,special_needs,category)
values('Robert','Hank','1990-12-04','Male','220,Dundas street,Hurontario',
'Canadian','Business Studies','999-999-999','Robert@gmail.com','First Floor','Undergraduate');
insert into students(firstName,lastName,DOB,gender,address,nationality,course,
contact_Number,email,special_needs,category)
values('Ross','Won','1991-10-14','Male','220,Tallon gate,Brampton',
'Canadian','Business Studies','989-989-989','Ross@gmail.com','Second Floor','Undergraduate');
insert into students(firstName,lastName,DOB,gender,address,nationality,course,
contact_Number,email,special_needs,category)
values('Alina','Max','1992-09-07','Female','129,Boulevard Rd,Brampton',
'Canadian','Economics','777-777-777','Alina@gmail.com','Ground Floor','Undergraduate');
insert into students(firstName,lastName,DOB,gender,address,nationality,course,
contact_Number,email,special_needs,category)
values('Meera','Patel','1993-03-02','Female','110,Max street,Caledon',
'Canadian','Computer Science','666-666-666','MeeraPatel@gmail.com','Second Floor','Undergraduate');
insert into students(firstName,lastName,DOB,gender,address,nationality,course,
contact_Number,email,special_needs,category)
values('Misha','Kapoor','1993-05-06','Female','140,Wiston Rd.,Cambridge',
'Indian','Hotel Management','333-111-997','Misha@gmail.com','Third Floor','Undergraduate');
delete from Students where Student_id=9;
update Students set Student_id=10 where Student_id=11;
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

insert into Advisor(Full_Name,Position_Name,Department_Name,contact_Number,office_Location )
values('Peter Berg','Clerk','Science','999-123-123','Administrative Office');
insert into Advisor(Full_Name,Position_Name,Department_Name,contact_Number,office_Location )
values('Bear grill','Accountant','Medical Science','11-222-333','Administrative Office');
insert into Advisor(Full_Name,Position_Name,Department_Name,contact_Number,office_Location )
values('Dave omar','Librarian','computer Science','888-123-123','Administrative Office');
insert into Advisor(Full_Name,Position_Name,Department_Name,contact_Number,office_Location )
values('Sanket Patel','Professor','Science','222-123-123','Administrative Office');
insert into Advisor(Full_Name,Position_Name,Department_Name,contact_Number,office_Location )
values('Priyanka Chatterjee','Professor','Space Engg.','345-567-554','Administrative Office');
update Advisor set office_Location='Administrative Office' where Advisor_id>=1 and Advisor_id<=5;
select * from Advisor;
drop table Advisor;

create table Contacts
(
	Contact_id  int not null auto_increment,
	Contact_Number varchar(45),
    SSN_Number varchar(45),
    Name_of_Relative varchar(45),
    Relationship varchar(45),
    Address varchar(45),
    primary key(contact_id)
);
insert into Contacts(Contact_Number,SSN_Number,Name_of_Relative,Relationship,Address)
values('012-234-456','890-234-2134','Steven Hank','Father','220,Dundas street,Hurontario');
insert into Contacts(Contact_Number,SSN_Number,Name_of_Relative,Relationship,Address)
values('011-224-556','990-224-2234','Tim Hane','Father','210,Indian Road,Mississauga');
insert into Contacts(Contact_Number,SSN_Number,Name_of_Relative,Relationship,Address)
values('010-204-555','878-114-2674','Sarika Patel','Mother','110,Max street,Caledon');
insert into Contacts(Contact_Number,SSN_Number,Name_of_Relative,Relationship,Address)
values('015-104-105','660-834-2132','Serena Will','Mother','110,Tallon Gate,Brampton');
insert into Contacts(Contact_Number,SSN_Number,Name_of_Relative,Relationship,Address)
values('446-472-5608','147-269-0987','Goldy Khatkar','Sister','223,Tallon Gate.,Brampton');

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
insert into Courses(Course_Name,Duration,Instructor,Department_Name)values('Macro Economics','2 Year','Proff. Smith Joey','Business Studies');
insert into Courses(Course_Name,Duration,Instructor,Department_Name)values('Finance Management','2 Year','Proff. Alisha Bejoy','Business Studies');
insert into Courses(Course_Name,Duration,Instructor,Department_Name)values('Computer Administrator','3 Year','Proff. Jeniffer Steph','Computer Science');
insert into Courses(Course_Name,Duration,Instructor,Department_Name)values('Information Technology','2 Year','Proff. Steve Winferrey','IT dept');
insert into Courses(Course_Name,Duration,Instructor,Department_Name)values('Electronics Engg','4 Year','Proff. Peter Bane','Electronics Department');

select * from Courses;
drop table Courses;

create table Residence
(
	Residence_id int not null auto_increment,
    Residence_Type varchar(45),
    Linking_id int,
    primary key(Residence_id)
);
insert into Residence(Residence_Type,Linking_id)values('Hall',4);
insert into Residence(Residence_Type,Linking_id)values('Hall',5);
insert into Residence(Residence_Type,Linking_id)values('Flat',3);
insert into Residence(Residence_Type,Linking_id)values('Hall',2);
insert into Residence(Residence_Type,Linking_id)values('Flat',1);
insert into Residence(Residence_Type,Linking_id)values('Hall',1);

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
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Ryerson Hall','HR1 University south block,Hamilton','000-655-888',3,500);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Prairie Hall','HR3 University north block,Hamilton','000-903-778',2,500);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Western Wind Hall','HR4 University admin block,Hamilton','000-933-668',1,500);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Major Hall','HR2 University caffe block,Hamilton','000-111-098',4,500);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Adelaide Hall','HR1 University east block,Hamilton','000-999-228',5,500);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Axis Hall','HR1 University Main block,Hamilton','033-977-228',6,600);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Opera Hall','HR1 University east block,Hamilton','033-900-118',7,600);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Pearson Hall','HR1 University north block,Hamilton','022-977-228',11,6500);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Obey Hall','HR1 University sports block,Hamilton','086-977-333',15,600);
insert into Halls_of_Residence(Hall_Name,Address,Tel_Number,Room_number,Monthly_Rent)values('Majorwing Hall','HR1 University stadium block,Hamilton','033-977-454',16,650);

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
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 1,1st floor,near Accomodation office',3,5,2);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 2,2nd floor,University north block',2,7,2);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 3,1st floor, Accomodation office',4,5,1);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 4,2nd floor omodation office',5,5,3);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 5,3rd floor,near Administration office',4,5,1);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 6,3rd floor,near Accomodation office',6,7,1);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 7,1st floor,near Accomodation office',3,5,1);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 8,2nd floor,near Accomodation office',4,7,1);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 9,3rd floor,near Accomodation office',4,5,2);
insert into Flats(Address,Room_Number,Number_of_Rooms,Rooms_Available)values('Flat 10,3rd floor,near Accomodation office',1,6,1);

select * from Flats;
drop table Flats;

create table Leases
(
	Lease_Number int not null auto_increment,
    Duration varchar(45),
    Student_id int,
    Student_Name varchar(45),
    Place_Number int,
    Room_Number varchar(45),
    Address varchar(45),
    joining_Date date,
    Leaving_Date date,
    primary key(Lease_Number)
);  
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('2 quarter',1,'Robert Hank',4,7,'Flats','2019-03-07','2020-05-09');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('2 year',2,'Ross Won',3,1,'Halls of residence','2019-01-10','2021-01-10');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('1 quarter',4,'Meera Patel',2,6,'Halls of residence','2020-02-04','2020-06-04');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('2 quarter',5,'Sara Hane',1,5,'Halls of residence','2020-02-04','2020-06-04');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('1 quarter',6,'Sayesha Berg ',2,2,'Flat','2019-03-10','2021-09-24');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('1 quarter',3,'Alina Max ',4,4,'Flat','2019-03-20','2021-10-24');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('2 year',8,'Victor Bey ',6,4,'Flat','2019-03-10','2021-09-24');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('1 year',9,'Catty Perry ',9,3,'Flat','2019-03-22','2020-03-24');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('1 quarter',7,'Mathew Worn ',10,4,'Flat','2020-03-11','2020-07-24');
insert into Leases(Duration,Student_id,Student_Name,Place_Number,Room_Number,Address,joining_Date,Leaving_Date) 
values('1 quarter',10,'Misha Kapoor ',9,7,'Flat','2019-03-10','2022-09-24');

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
insert into Invoices(Lease_Number,Semester,Payment_Due,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(2,'first',300,'Hana Andrew',11,'Flat',4,2,'Flat2,2nd floor','2020-01-03','Cash',1);
insert into Invoices(Lease_Number,Semester,Payment_Due,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(3,'second',200,'Sara Hane',5,'Hall Residence',3,1,'HR1,Ryeson Hall','2020-01-10','Debit card',1);
insert into Invoices(Lease_Number,Semester,Payment_Due,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(4,'first',150,'Dave Omar',12,'Flat',3,2,'Flat2,3nd floor','2020-05-23','Credit card',1);
insert into Invoices(Lease_Number,Semester,Payment_Due,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(5,'Fourth',100,'Ross Won',2,'Flat',5,1,'Flat1,2nd floor','2020-03-03','E-transfer',1);
insert into Invoices(Lease_Number,Semester,Payment_Due,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(8,'third',110,'Meera Patel',4,'Hall Residence',1,1,'Aledaile Hall','2020-03-05','Cash',1);
insert into Invoices(Lease_Number,Semester,Payment_Due,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(9,'First',200,'Misha Kapoor',10,'Flat',1,2,'Flat2,1st floor','2020-03-05','Cash',1);
insert into Invoices(Lease_Number,Semester,Payment_Due,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(11,'third',200,'Alina Max',3,'Flat',1,2,'Flat2,1st floor','2020-04-03','Cash',1);
insert into Invoices(Lease_Number,Semester,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(12,'third','Sayesha Berg',6,'Flat',1,2,'Flat2,3rd floor','2020-11-05','Cash',1);
insert into Invoices(Lease_Number,Semester,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(6,'First','Victor Bey',8,'Flat',1,2,'Flat2,2nd floor','2020-03-25','Debit Card',1);
insert into Invoices(Lease_Number,Semester,Student_Name,Student_id,Residence_Type,Linking_id,Room_Number,Address,Date_of_Payment,Method_of_Payment,Reminder_Sent) 
values(1,'Second','Mathew Worn',7,'Hall Residence',1,1,'South Hall','2020-03-15','E-transfer',1);

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
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('Mathew Husy','24 Shoreview street,Brampton,ON','1980-09-14','M','Admin Clerk','Administrative Office');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('Steve Johnson','265 Channel Haendel,QC','1981-01-23','M','Accountant','Administrative Office');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('B Smith','20 Dundee Avenue,Brampton,ON','1979-02-22','M','Admin Clerk','Administrative Office');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('M Lebel','555 Baldwin stanhope ch,QC','1978-03-15','M','Library Head','Library');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('M Robert','22 Rue Du vision street,Caledon,ON','1980-07-11','M','Warden','University north block campus');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('Jimmy Shawn','22,High Point drive,Milton,ON','1981-06-11','M','Inspection Staff','University north block campus');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('Andrew Jason','110,Main and Martin st.,Milton,ON','1977-11-11','M','Inspection Staff','University north block campus');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('Kane Rob','55,Kingston Road,Toronto,ON','1979-10-11','M','Librarian','University north block campus');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('Avish Roy','100,Queen St. W,Toronto,ON','1981-06-11','M','Assistant Professor','Administrative Office');
insert into Accomodation_Staff(Name,Address,DOB,Gender,Position_Name,Location)
values('Micheal Kale','105,City Hall East,Caledon,ON','1982-02-11','M','Head Clerk','Administrative Office');

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
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Mason Joe','2019-11-01',1,'good');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Robinson Matt','2019-12-30',1,'Satisfactory');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Benjamin Durro','2020-04-11',1,'good');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Stephen Hank','2019-02-15',1,'good');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Willian Jones','2019-05-16',1,'good');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Andrew Jason','2019-06-14',1,'good');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Micheal Kale','2019-06-19',1,'Satisfactory');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Max Robert','2019-06-22',1,'good');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Jimmy Shawn','2019-07-21',0,'Poor');
insert into Inspection_Staff(Inspector_Name,Inspection_Date,is_Report_Satisfactory,Status_Report )
values('Kylen Rob','2019-06-20',1,'great');

select * from Inspection_Staff;
drop table Inspection_Staff;
