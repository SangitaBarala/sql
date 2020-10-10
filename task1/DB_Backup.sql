-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: university_accomodation
-- ------------------------------------------------------
-- Server version	5.7.31-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accomodation_staff`
--

DROP TABLE IF EXISTS `accomodation_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accomodation_staff` (
  `staff_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `DOB` datetime DEFAULT NULL,
  `Gender` varchar(45) DEFAULT NULL,
  `Position_Name` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomodation_staff`
--

LOCK TABLES `accomodation_staff` WRITE;
/*!40000 ALTER TABLE `accomodation_staff` DISABLE KEYS */;
INSERT INTO `accomodation_staff` VALUES (1,'Mathew Husy','24 Shoreview street,Brampton,ON','1980-09-14 00:00:00','M','Admin Clerk','Administrative Office'),(2,'Steve Johnson','265 Channel Haendel,QC','1981-01-23 00:00:00','M','Accountant','Administrative Office'),(3,'B Smith','20 Dundee Avenue,Brampton,ON','1979-02-22 00:00:00','M','Admin Clerk','Administrative Office'),(4,'M Lebel','555 Baldwin stanhope ch,QC','1978-03-15 00:00:00','M','Library Head','Library'),(5,'M Robert','22 Rue Du vision street,Caledon,ON','1980-07-11 00:00:00','M','Warden','University north block campus'),(6,'Jimmy Shawn','22,High Point drive,Milton,ON','1981-06-11 00:00:00','M','Inspection Staff','University north block campus'),(7,'Andrew Jason','110,Main and Martin st.,Milton,ON','1977-11-11 00:00:00','M','Inspection Staff','University north block campus'),(8,'Kane Rob','55,Kingston Road,Toronto,ON','1979-10-11 00:00:00','M','Librarian','University north block campus'),(9,'Avish Roy','100,Queen St. W,Toronto,ON','1981-06-11 00:00:00','M','Assistant Professor','Administrative Office'),(10,'Micheal Kale','105,City Hall East,Caledon,ON','1982-02-11 00:00:00','M','Head Clerk','Administrative Office');
/*!40000 ALTER TABLE `accomodation_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advisor`
--

DROP TABLE IF EXISTS `advisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `advisor` (
  `Advisor_id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(45) DEFAULT NULL,
  `Position_Name` varchar(45) DEFAULT NULL,
  `Department_Name` varchar(45) DEFAULT NULL,
  `contact_Number` varchar(45) DEFAULT NULL,
  `office_Location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Advisor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advisor`
--

LOCK TABLES `advisor` WRITE;
/*!40000 ALTER TABLE `advisor` DISABLE KEYS */;
INSERT INTO `advisor` VALUES (1,'Peter Berg','Clerk','Science','999-123-123','Administrative Office'),(2,'Bear grill','Accountant','Medical Science','11-222-333','Administrative Office'),(3,'Dave omar','Librarian','computer Science','888-123-123','Administrative Office'),(4,'Sanket Patel','Professor','Science','222-123-123','Administrative Office'),(5,'Rafael','Assistant Professor','mechanical','999-888-123','Administrative Office'),(6,'Ashish Raut','Assistant Professor','Civil Engg.','999-778-188','Administrative Office'),(7,'Donald Wilson','Sr. Professor','Computer Engg.','111-222-188','Administrative Office'),(8,'Cherchil Bolt','Head Clerk','Medical','111-070-444','Administrative Office'),(9,'Umesh Pandey','Senior Accountant','Medical','166-880-554','Administrative Office'),(10,'Priyanka Chatterjee','Professor','Space Engg.','345-567-554','Administrative Office');
/*!40000 ALTER TABLE `advisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `Contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `Contact_Number` varchar(45) DEFAULT NULL,
  `SSN_Number` varchar(45) DEFAULT NULL,
  `Name_of_Relative` varchar(45) DEFAULT NULL,
  `Relationship` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'012-234-456','890-234-2134','Steven Hank','Father','220,Dundas street,Hurontario'),(2,'011-224-556','990-224-2234','Tim Hane','Father','210,Indian Road,Mississauga'),(3,'010-204-555','878-114-2674','Sarika Patel','Mother','110,Max street,Caledon'),(4,'015-104-105','660-834-2132','Serena Will','Mother','110,Tallon Gate,Brampton'),(5,'098-765-432','109-283-4532','Rubina Sayed','Mother','245,Marshalo st.,Brampton'),(6,'123-456-678','139-983-4032','Wilson Marget','Brother','245,Victoria street,Caledon'),(7,'163-006-009','139-983-4032','Bear grill','Brother','101,South vaenue Rd.,Berry'),(8,'1647-116-229','169-923-4005','Venessa Backhum','Mother','101,RoadSide venue Rd.,Brampton'),(9,'446-412-5679','980-567-2365','John Biden','Father','210,Mega Pole st.,Brampton'),(10,'446-472-5608','147-269-0987','Goldy Khatkar','Sister','223,Tallon Gate.,Brampton');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `Course_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Course_Name` varchar(45) DEFAULT NULL,
  `Duration` varchar(45) DEFAULT NULL,
  `Instructor` varchar(45) DEFAULT NULL,
  `Department_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Course_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'Macro Economics','2 Year','Proff. Smith Joey','Business Studies'),(2,'Finance Management','2 Year','Proff. Alisha Bejoy','Business Studies'),(3,'Computer Administrator','3 Year','Proff. Jeniffer Steph','Computer Science'),(4,'Information Technology','2 Year','Proff. Steve Winferrey','IT dept'),(5,'Space Engg.','4 Year','Proff. Rob Mane','Aeronotics Department'),(6,'Civil Engg.','2 Year','Proff. Robia Mansion','Civil Department'),(7,'Geography.','2 Year','Proff. Wick Robert','Arts Department'),(8,'History','2 Year','Proff. Joe Dave','Archeology Department'),(9,'Political Science','2 Year','Proff. Joe Dave','Arts Department'),(10,'Electronics Engg','4 Year','Proff. Peter Bane','Electronics Department');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flats`
--

DROP TABLE IF EXISTS `flats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flats` (
  `Flat_Num` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(45) DEFAULT NULL,
  `Room_Number` int(11) DEFAULT NULL,
  `Number_of_Rooms` int(11) DEFAULT NULL,
  `Rooms_Available` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Flat_Num`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flats`
--

LOCK TABLES `flats` WRITE;
/*!40000 ALTER TABLE `flats` DISABLE KEYS */;
INSERT INTO `flats` VALUES (1,'Flat 1,1st floor,near Accomodation office',3,5,2),(2,'Flat 2,2nd floor,University north block',2,7,2),(3,'Flat 3,1st floor, Accomodation office',4,5,1),(4,'Flat 4,2nd floor omodation office',5,5,3),(5,'Flat 5,3rd floor,near Administration office',4,5,1),(6,'Flat 6,3rd floor,near Accomodation office',6,7,1),(7,'Flat 7,1st floor,near Accomodation office',3,5,1),(8,'Flat 8,2nd floor,near Accomodation office',4,7,1),(9,'Flat 9,3rd floor,near Accomodation office',4,5,2),(10,'Flat 10,3rd floor,near Accomodation office',1,6,1);
/*!40000 ALTER TABLE `flats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `halls_of_residence`
--

DROP TABLE IF EXISTS `halls_of_residence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `halls_of_residence` (
  `Place_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Hall_Name` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Tel_Number` varchar(45) DEFAULT NULL,
  `Room_Number` int(11) DEFAULT NULL,
  `Monthly_Rent` int(11) DEFAULT NULL,
  PRIMARY KEY (`Place_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halls_of_residence`
--

LOCK TABLES `halls_of_residence` WRITE;
/*!40000 ALTER TABLE `halls_of_residence` DISABLE KEYS */;
INSERT INTO `halls_of_residence` VALUES (1,'Ryerson Hall','HR1 University south block,Hamilton','000-655-888',3,500),(2,'Prairie Hall','HR3 University north block,Hamilton','000-903-778',2,500),(3,'Western Wind Hall','HR4 University admin block,Hamilton','000-933-668',1,500),(4,'Major Hall','HR2 University caffe block,Hamilton','000-111-098',4,500),(5,'Adelaide Hall','HR1 University east block,Hamilton','000-999-228',5,500),(6,'Axis Hall','HR1 University north block,Hamilton','033-977-228',6,600),(7,'Opera Hall','HR1 University east block,Hamilton','033-900-118',7,600),(8,'Pearson Hall','HR1 University north block,Hamilton','022-977-228',11,6500),(9,'Obey Hall','HR1 University sports block,Hamilton','086-977-333',15,600),(10,'Majorwing Hall','HR1 University stadium block,Hamilton','033-977-454',16,650);
/*!40000 ALTER TABLE `halls_of_residence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspection_staff`
--

DROP TABLE IF EXISTS `inspection_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inspection_staff` (
  `Inspection_id` int(11) NOT NULL AUTO_INCREMENT,
  `Inspector_Name` varchar(45) DEFAULT NULL,
  `Inspection_Date` date DEFAULT NULL,
  `is_Report_Satisfactory` tinyint(4) DEFAULT NULL,
  `Status_Report` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Inspection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_staff`
--

LOCK TABLES `inspection_staff` WRITE;
/*!40000 ALTER TABLE `inspection_staff` DISABLE KEYS */;
INSERT INTO `inspection_staff` VALUES (1,'Mason Joe','2019-11-01',1,'good'),(2,'Robinson Matt','2019-12-30',1,'Satisfactory'),(3,'Benjamin Durro','2020-04-11',1,'good'),(4,'Stephen Hank','2019-02-15',1,'good'),(5,'Willian Jones','2019-05-16',1,'good'),(6,'Andrew Jason','2019-06-14',1,'good'),(7,'Micheal Kale','2019-06-19',1,'Satisfactory'),(8,'Max Robert','2019-06-22',1,'good'),(9,'Jimmy Shawn','2019-07-21',0,'Poor'),(10,'Kylen Rob','2019-06-20',1,'great');
/*!40000 ALTER TABLE `inspection_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `Invoice_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Lease_Number` int(11) DEFAULT NULL,
  `Semester` varchar(45) DEFAULT NULL,
  `Payment_Due` int(11) DEFAULT NULL,
  `Student_Name` varchar(45) DEFAULT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Residence_Type` varchar(45) DEFAULT NULL,
  `Linking_id` int(11) DEFAULT NULL,
  `Room_Number` int(11) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Date_of_Payment` date DEFAULT NULL,
  `Method_of_Payment` varchar(45) DEFAULT NULL,
  `Reminder_Sent` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Invoice_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,2,'first',300,'Hana Andrew',11,'Flat',4,2,'Flat2,2nd floor','2020-01-03','Cash',1),(2,3,'second',200,'Sara Hane',5,'Hall Residence',3,1,'HR1,Ryeson Hall','2020-01-10','Debit card',1),(3,4,'first',150,'Dave Omar',12,'Flat',3,2,'Flat2,3nd floor','2020-05-23','Credit card',1),(4,5,'Fourth',100,'Ross Won',2,'Flat',5,1,'Flat1,2nd floor','2020-03-03','E-transfer',1),(5,8,'third',110,'Meera Patel',4,'Hall Residence',1,1,'Aledaile Hall','2020-03-05','Cash',1),(6,9,'First',200,'Misha Kapoor',10,'Flat',1,2,'Flat2,1st floor','2020-03-05','Cash',1),(7,11,'third',200,'Alina Max',3,'Flat',1,2,'Flat2,1st floor','2020-04-03','Cash',1),(8,12,'third',NULL,'Sayesha Berg',6,'Flat',1,2,'Flat2,3rd floor','2020-11-05','Cash',1),(9,6,'First',NULL,'Victor Bey',8,'Flat',1,2,'Flat2,2nd floor','2020-03-25','Debit Card',1),(10,1,'Second',NULL,'Mathew Worn',7,'Hall Residence',1,1,'South Hall','2020-03-15','E-transfer',1);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leases`
--

DROP TABLE IF EXISTS `leases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leases` (
  `Lease_Number` int(11) NOT NULL AUTO_INCREMENT,
  `Duration` varchar(45) DEFAULT NULL,
  `Student_id` int(11) DEFAULT NULL,
  `Student_Name` varchar(45) DEFAULT NULL,
  `Place_Number` int(11) DEFAULT NULL,
  `Room_Number` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `joining_Date` date DEFAULT NULL,
  `Leaving_Date` date DEFAULT NULL,
  PRIMARY KEY (`Lease_Number`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leases`
--

LOCK TABLES `leases` WRITE;
/*!40000 ALTER TABLE `leases` DISABLE KEYS */;
INSERT INTO `leases` VALUES (1,'2 quarter',1,'Robert Hank',4,'7','Flats','2019-03-07','2020-05-09'),(2,'2 year',2,'Ross Won',3,'1','Halls of residence','2019-01-10','2021-01-10'),(3,'1 quarter',4,'Meera Patel',2,'6','Halls of residence','2020-02-04','2020-06-04'),(4,'2 quarter',5,'Sara Hane',1,'5','Halls of residence','2020-02-04','2020-06-04'),(5,'1 quarter',6,'Sayesha Berg ',2,'2','Flat','2019-03-10','2021-09-24'),(6,'1 quarter',3,'Alina Max ',4,'4','Flat','2019-03-20','2021-10-24'),(7,'2 year',8,'Victor Bey ',6,'4','Flat','2019-03-10','2021-09-24'),(8,'1 year',9,'Catty Perry ',9,'3','Flat','2019-03-22','2020-03-24'),(9,'1 quarter',7,'Mathew Worn ',10,'4','Flat','2020-03-11','2020-07-24'),(10,'1 quarter',10,'Misha Kapoor ',9,'7','Flat','2019-03-10','2022-09-24');
/*!40000 ALTER TABLE `leases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residence`
--

DROP TABLE IF EXISTS `residence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residence` (
  `Residence_id` int(11) NOT NULL AUTO_INCREMENT,
  `Residence_Type` varchar(45) DEFAULT NULL,
  `Linking_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Residence_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residence`
--

LOCK TABLES `residence` WRITE;
/*!40000 ALTER TABLE `residence` DISABLE KEYS */;
INSERT INTO `residence` VALUES (1,'Hall',4),(2,'Hall',5),(3,'Flat',3),(4,'Hall',2),(5,'Flat',1),(6,'Hall',6),(7,'Hall',7),(8,'Hall',8),(9,'Flat',2),(10,'Hall',1);
/*!40000 ALTER TABLE `residence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `Student_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `nationality` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `contact_Number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `special_needs` varchar(45) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Robert','Hank','1990-12-04','Male','220,Dundas street,Hurontario','Canadian','Business Studies','999-999-999','Robert@gmail.com','First Floor','Undergraduate'),(2,'Ross','Won','1991-10-14','Male','220,Tallon gate,Brampton','Canadian','Business Studies','989-989-989','Ross@gmail.com','Second Floor','Undergraduate'),(3,'Alina','Max','1992-09-07','Female','129,Boulevard Rd,Brampton','Canadian','Economics','777-777-777','Alina@gmail.com','Ground Floor','Undergraduate'),(4,'Meera','Patel','1993-03-02','Female','110,Max street,Caledon','Canadian','Computer Science','666-666-666','MeeraPatel@gmail.com','Second Floor','Undergraduate'),(5,'Sara','Hane','1991-11-24','Female','210,Indian Road,Mississauga','Canadian','Ecnomics','555-555-555','Sara@gmail.com','Ground Floor','Undergraduate'),(6,'Sayesha','Berg','1992-10-04','Female','410,Galaxy Road,Mississauga','Canadian','Ecnomics','515-333-555','Sayesha@gmail.com','First Floor','Undergraduate'),(7,'Mathew','Worn','1991-12-24','Male','121,Tiffany st.,Hamilton','Mexican','Business Studies','515-333-666','Mathew@gmail.com','Third Floor','graduate'),(8,'Victor','Bey','1991-12-24','Male','202,Maxcoin st.,Milton','American','Business Studies','222-333-446','Victor@gmail.com','second Floor','graduate'),(9,'Catty','Perry','1993-05-06','Female','140,Bolton Rd.,Berry','Mexican','Hotel Management','222-111-777','Catty@gmail.com','second Floor','Undergraduate'),(10,'Misha','Kapoor','1993-05-06','Female','140,Wiston Rd.,Cambridge','Indian','Hotel Management','333-111-997','Misha@gmail.com','Third Floor','Undergraduate');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-06 20:12:10
