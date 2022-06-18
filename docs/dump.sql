-- MySQL dump 10.13  Distrib 5.7.37, for Win64 (x86_64)
--
-- Host: localhost    Database: hospitalmanagement
-- ------------------------------------------------------
-- Server version	5.7.37-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `hospitalId` varchar(50) NOT NULL,
  `hospitalName` varchar(100) NOT NULL,
  PRIMARY KEY (`hospitalId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES ('4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('77f4cd50-ef10-11ec-8761-09261dcd5c39','Jawaharlal Nehru Medical College and Hospital'),('87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)');
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patient` (
  `patientId` varchar(50) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `phoneNo` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `psycId` varchar(50) DEFAULT NULL,
  `fileSrc` text,
  PRIMARY KEY (`patientId`),
  KEY `psycId` (`psycId`),
  CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`psycId`) REFERENCES `psychiatrist` (`psycId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('07033850-ef26-11ec-ac3d-9bf0b524133f','Akshita','Sector 01,Sikkim','5555555555','Akshita@gmail.com','Akshita123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570714609.jpg'),('1530fb10-ef26-11ec-ac3d-9bf0b524133f','Akshit','Sector 23,Rajasthan','5555343555','Akshit@gmail.com','Akshit123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570738428.jpg'),('1cebef30-ef27-11ec-ac3d-9bf0b524133f','Aman','Sector 50, Sikkim','1234565432','Aman@gmail.com','Aman123567','34ffda90-ef14-11ec-b66f-adcc51471e97','fileSrc_1655571180892.jpg'),('1d63f7a0-ef22-11ec-ac3d-9bf0b524133f','Priyank','bajaj Nagar,Jaipur','2222222222','Priyank@gmail.com','Priyank123567','20e57b10-ef13-11ec-b66f-adcc51471e97','fileSrc_1655569034190.jpg'),('257d9870-ef21-11ec-ac3d-9bf0b524133f','Hemendra','John Park,Punjab','4321000000','hemendra@gmail.com','Hemendra123','75c35510-ef15-11ec-b66f-adcc51471e97','fileSrc_1655568618290.jpg'),('25d22ed0-ef26-11ec-ac3d-9bf0b524133f','Akshay','Sector 40,Punjab','2222222555','Akshay@gmail.com','Akshay123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570766293.jpg'),('31def0e0-ef27-11ec-ac3d-9bf0b524133f','Arav','Sector 1, Mumbai','7654321234','Arav@gmail.com','Arav123567','34ffda90-ef14-11ec-b66f-adcc51471e97','fileSrc_1655571216041.jpg'),('38d23a20-ef26-11ec-ac3d-9bf0b524133f','Abha','Sector 45,Haryana','5656565555','Abha@gmail.com','Abha123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570798205.jpg'),('3bc474e0-ef22-11ec-ac3d-9bf0b524133f','Chanchal','bajaj Nagar,haryana','2222222222','Chanchal@gmail.com','Chanchal123567','20e57b10-ef13-11ec-b66f-adcc51471e97','fileSrc_1655569084585.jpg'),('424b31f0-ef27-11ec-ac3d-9bf0b524133f','Atharv','Sector 11, Punjab','8989898234','Athar@gmail.com','Atharv123567','34ffda90-ef14-11ec-b66f-adcc51471e97','fileSrc_1655571243592.jpg'),('44a8c670-ef26-11ec-ac3d-9bf0b524133f','Abhi','Sector 55,Haryana','1234465555','Abhi@gmail.com','Abhi123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570818063.jpg'),('47a157e0-ef24-11ec-ac3d-9bf0b524133f','Kat','Sector 26,Rajasthan','9090343434','kat@gmail.com','Kat123567','0c220a50-ef12-11ec-87d4-2383b500ea94','fileSrc_1655569964034.jpg'),('4a31ce20-ef21-11ec-ac3d-9bf0b524133f','Hemu','Malviya nagar,Punjab','9999900000','hemu@gmail.com','Hemu123567','75c35510-ef15-11ec-b66f-adcc51471e97','fileSrc_1655568679869.jpg'),('50ac2490-ef25-11ec-ac3d-9bf0b524133f','Aparna','adarsh vihar,kolkata','1900003434','Aparna@gmail.com','Aparna123567','504ac550-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570408723.jpg'),('53f4a790-ef1f-11ec-9c7d-39d43b334d69','kanchan','John vally, Mumbai','1212343434','Kanchan@gmail.com','Kanchan1234','f38ce960-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655567837232.jpg'),('5d761c20-ef26-11ec-ac3d-9bf0b524133f','Mosh','Sector 155,Mumbai','1454545454','Mosh@gmail.com','Mosh123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570859645.jpg'),('5da10ea0-ef24-11ec-ac3d-9bf0b524133f','Komal','Sector 39,Rajasthan','9456783456','komal23@gmail.com','Komal123567','0c220a50-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570000966.jpg'),('629bbc30-ef23-11ec-ac3d-9bf0b524133f','Komal','Boriwali,Mumbai','6848484838','Komal@gmail.com','Komal123567','262c9390-ef15-11ec-b66f-adcc51471e97','fileSrc_1655569579783.jpg'),('65199f60-ef21-11ec-ac3d-9bf0b524133f','Alka','Vivek nagar,Punjab','4567887654','Alka@gmail.com','ALka123567','75c35510-ef15-11ec-b66f-adcc51471e97','fileSrc_1655568722916.jpg'),('66156f10-ef22-11ec-ac3d-9bf0b524133f','Charvi','Raja park, Jaipur','4444444222','Charvi@gmail.com','Charvi123567','25408d40-ef12-11ec-87d4-2383b500ea94','fileSrc_1655569155658.jpg'),('6eed68c0-ef1f-11ec-9c7d-39d43b334d69','keshav','John vally, Mumbai','8989898989','Keshav@gmail.com','Keshav1234','f38ce960-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655567882445.jpg'),('71d469d0-ef24-11ec-ac3d-9bf0b524133f','Dev','Sector 9,Rajasthan','5678956789','Dev@gmail.com','Dev123567','0c220a50-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570034856.jpg'),('76c72f80-ef20-11ec-aafa-059386e6bbaf','Jay','John Road 1,Chennai','6789678967','Jay@gmail.com','Jay123456','f38ce960-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655568325168.jpg'),('83d3a6f0-ef24-11ec-ac3d-9bf0b524133f','Devendra','Bajaj Nagar,Rajasthan','1200120012','Devendra@gmail.com','Devendra123567','0c220a50-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570065028.jpg'),('8a00e110-ef23-11ec-ac3d-9bf0b524133f','Kuldeep','Road no 10,Chennai','101010101010','Kuldeep@gmail.com','Kuldeep123567','065d8040-ef17-11ec-beda-59445ba7bf9f','fileSrc_1655569645916.jpg'),('8f9c30e0-ef21-11ec-ac3d-9bf0b524133f','Anju','Vivek nagar,Punjab','6787887654','Anju@gmail.com','Anju123567','75c35510-ef15-11ec-b66f-adcc51471e97','fileSrc_1655568796330.jpg'),('8fa42ab0-ef22-11ec-ac3d-9bf0b524133f','Apoorva','Raja park,Jaipur','9999988888','Apoorva@gmail.com','Apoorva123567','25408d40-ef12-11ec-87d4-2383b500ea94','fileSrc_1655569225876.jpg'),('91b30620-ef25-11ec-ac3d-9bf0b524133f','Arjun','Sector 23,kolkata','4567456745','Arjun@gmail.com','Arjun123567','504ac550-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570517783.jpg'),('9df4db90-ef1e-11ec-9c7d-39d43b334d69','Sonam','Raja Park, Jaipur','2323232323','sonam@gmail.com','Sonam1234','f83d9270-ef11-11ec-87d4-2383b500ea94','file_src_1655567531909.jpg'),('9e548e20-ef26-11ec-ac3d-9bf0b524133f','Joe','Sector 75,Mumbai','2222545454','Joe@gmail.com','Joe123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570968509.jpg'),('a07b4610-ef23-11ec-ac3d-9bf0b524133f','John','Sector 20,Chennai','2020202002','John@gmail.com','John123567','065d8040-ef17-11ec-beda-59445ba7bf9f','fileSrc_1655569683628.jpg'),('a2200a80-ef25-11ec-ac3d-9bf0b524133f','Amar','Sector 53,kolkata','1002002002','Amar@gmail.com','Amar123567','504ac550-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570545379.jpg'),('a3c659c0-ef20-11ec-ac3d-9bf0b524133f','Manan','Road 2,Chennai','3456789012','Manan@gmail.com','Manan123456','f38ce960-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655568400323.jpg'),('a4466260-ef24-11ec-ac3d-9bf0b524133f','Chahat','Vivek Nagar,Rajasthan','1400140014','Chahat@gmail.com','Chahat123567','0c220a50-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570119488.jpg'),('afb373f0-ef23-11ec-ac3d-9bf0b524133f','Mary','Sector 26,Chennai','3030303030','Mary@gmail.com','Mary123567','065d8040-ef17-11ec-beda-59445ba7bf9f','fileSrc_1655569709163.jpg'),('b245ccb0-ef25-11ec-ac3d-9bf0b524133f','Rahul','Sector 53,Rajasthan','1002002999','Rahul@gmail.com','Rahul123567','504ac550-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570572400.jpg'),('b544b1a0-ef21-11ec-ac3d-9bf0b524133f','Atul','Vivek nagar,Sikkim','1000000011','Atul@gmail.com','Atul123567','20e57b10-ef13-11ec-b66f-adcc51471e97','fileSrc_1655568859507.jpg'),('c43640f0-ef1e-11ec-9c7d-39d43b334d69','Ritiks','Raja Park, Mumbai','1212121212','Ritika@gmail.com','Ritika1234','f83d9270-ef11-11ec-87d4-2383b500ea94','file_src_1655567596034.jpg'),('ca1decf0-ef25-11ec-ac3d-9bf0b524133f','Pankaj','Sector 10,Sikkim','1999999999','Pankaj@gmail.com','Pankaj123567','504ac550-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570612474.jpg'),('d6bdc410-ef22-11ec-ac3d-9bf0b524133f','Vijay','Boriwali,Mumbai','4567778888','vijay@gmail.com','Vijay123567','262c9390-ef15-11ec-b66f-adcc51471e97','fileSrc_1655569345163.jpg'),('d6c83640-ef20-11ec-ac3d-9bf0b524133f','ShreyaS','MOngo valley,Mumbai','3456789000','shreya@gmail.com','Shreya123456','065d8040-ef17-11ec-beda-59445ba7bf9f','fileSrc_1655568486237.jpg'),('daa39450-ef23-11ec-ac3d-9bf0b524133f','Sonia','Sector 26,Rajasthan','3434343434','Sonia@gmail.com','Sonia123567','0c220a50-ef12-11ec-87d4-2383b500ea94','fileSrc_1655569781198.jpg'),('dc3f06c0-ef21-11ec-ac3d-9bf0b524133f','Prachi','Malviya nagar,Sikkim','1111111111','prachi@gmail.com','Prachi123567','20e57b10-ef13-11ec-b66f-adcc51471e97','fileSrc_1655568924719.jpg'),('df516f80-ef24-11ec-ac3d-9bf0b524133f','Ankit','adarsh nagar,kolkata','1900190000','Ankit@gmail.com','Ankit123567','504ac550-ef12-11ec-87d4-2383b500ea94','fileSrc_1655570218547.jpg'),('e336ae10-ef26-11ec-ac3d-9bf0b524133f','Jatin','Sector 6, Sikkim','2000095454','Jatin@gmail.com','Jatin123567','34ffda90-ef14-11ec-b66f-adcc51471e97','fileSrc_1655571084052.jpg'),('e6462d70-ef25-11ec-ac3d-9bf0b524133f','Palak','Sector 10,Sikkim','8888888888','Palak@gmail.com','Palak123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570659629.jpg'),('ed11ee50-ef20-11ec-ac3d-9bf0b524133f','Ridhima','Raja Park,Jaipur','9876565656','ridhima@gmail.com','Ridhims123456','065d8040-ef17-11ec-beda-59445ba7bf9f','fileSrc_1655568523631.jpg'),('f5acc8e0-ef26-11ec-ac3d-9bf0b524133f','ketty','Sector 20, Sikkim','5656595454','Ketty@gmail.com','Ketty123567','34ffda90-ef14-11ec-b66f-adcc51471e97','fileSrc_1655571115049.jpg'),('f8b01340-ef25-11ec-ac3d-9bf0b524133f','Hetal','Sector 22,Sikkim','5555555555','Hetal@gmail.com','Hetal123567','d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','fileSrc_1655570690608.jpg'),('fa4c5060-ef20-11ec-ac3d-9bf0b524133f','Ridhi','Raja Park,Chennai','4321432143','ridhi@gmail.com','Ridhi123456','065d8040-ef17-11ec-beda-59445ba7bf9f','fileSrc_1655568545644.jpg');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `psychiatrist`
--

DROP TABLE IF EXISTS `psychiatrist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `psychiatrist` (
  `psycId` varchar(50) NOT NULL,
  `firstName` varchar(10) NOT NULL,
  `lastName` varchar(10) DEFAULT NULL,
  `phoneNo` int(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `hospitalId` varchar(50) DEFAULT NULL,
  `hospitalName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`psycId`),
  KEY `hospitalId` (`hospitalId`),
  CONSTRAINT `psychiatrist_ibfk_1` FOREIGN KEY (`hospitalId`) REFERENCES `hospital` (`hospitalId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `psychiatrist`
--

LOCK TABLES `psychiatrist` WRITE;
/*!40000 ALTER TABLE `psychiatrist` DISABLE KEYS */;
INSERT INTO `psychiatrist` VALUES ('065d8040-ef17-11ec-beda-59445ba7bf9f','Raghav','Gupta',676767676,'Chennai',888888,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('0a4d54e0-ef13-11ec-b66f-adcc51471e97','Micky','M',611100066,'Sikkim',444455,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('0ab7f630-ef16-11ec-b66f-adcc51471e97','Ram','Kapoor',122222222,'Rajasthan',222222,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('0c220a50-ef12-11ec-87d4-2383b500ea94','Rohan','Shekhar',1111111,'Rajasthan',121212,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('0c467ae0-ef15-11ec-b66f-adcc51471e97','Nidhi','Verma',167835512,'Mumbai',303666,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('11fe0fd0-ef14-11ec-b66f-adcc51471e97','Mohit','Solanki',167890563,'Haryana',303031,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('20e57b10-ef13-11ec-b66f-adcc51471e97','Mary','Yarn',665100066,'Sikkim',444415,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('25408d40-ef12-11ec-87d4-2383b500ea94','Ram','Verma',8888888,'Rajasthan',123232,'77f4cd50-ef10-11ec-8761-09261dcd5c39','Jawaharlal Nehru Medical College and Hospital'),('262c9390-ef15-11ec-b66f-adcc51471e97','Dinesh','Kumar',167000002,'Mumbai',303886,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('2a1b4800-ef17-11ec-beda-59445ba7bf9f','Pooja','Singh',878787876,'Rajasthan',232323,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('30138c40-ef12-11ec-87d4-2383b500ea94','Ramesh','kumar',8888882,'Rajasthan',123211,'77f4cd50-ef10-11ec-8761-09261dcd5c39','Jawaharlal Nehru Medical College and Hospital'),('31965ee0-ef16-11ec-b66f-adcc51471e97','Ram','Nath',333333222,'Rajasthan',222212,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('34ffda90-ef14-11ec-b66f-adcc51471e97','Keshav','Solanki',167890113,'Sikkim',303111,'77f4cd50-ef10-11ec-8761-09261dcd5c39','Jawaharlal Nehru Medical College and Hospital'),('3c2d3c10-ef12-11ec-87d4-2383b500ea94','Ramesh','kumar',8888882,'Rajasthan',123211,'77f4cd50-ef10-11ec-8761-09261dcd5c39','Jawaharlal Nehru Medical College and Hospital'),('3e5ac310-ef15-11ec-b66f-adcc51471e97','Shreya','Chaauhan',167999992,'Chennai',308080,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('3f19e270-ef17-11ec-beda-59445ba7bf9f','Poonam','Sharma',123123126,'Rajasthan',232355,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('429d0b30-ef16-11ec-b66f-adcc51471e97','Ritika','Kumari',444455555,'Rajasthan',222223,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('48410300-ef13-11ec-b66f-adcc51471e97','Jyoti','Kanwar',665108886,'Rajasthan',449090,'77f4cd50-ef10-11ec-8761-09261dcd5c39','Jawaharlal Nehru Medical College and Hospital'),('504ac550-ef12-11ec-87d4-2383b500ea94','Ayush','Jain',8999999,'Kolkata',888888,'77f4cd50-ef10-11ec-8761-09261dcd5c39','Jawaharlal Nehru Medical College and Hospital'),('53521fa0-ef17-11ec-beda-59445ba7bf9f','Prerna','Jain',765433126,'Rajasthan',232456,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('61769060-ef13-11ec-b66f-adcc51471e97','Anjali','Sharma',665108006,'Chennai',444444,'77f4cd50-ef10-11ec-8761-09261dcd5c39','Jawaharlal Nehru Medical College and Hospital'),('6315af80-ef15-11ec-b66f-adcc51471e97','Shreya','Chopra',161111992,'Mumbai',304440,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('63a62520-ef14-11ec-b66f-adcc51471e97','Karan','Kapoor',167834343,'Mumbai',303888,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('67066e80-ef11-11ec-9808-3bd11e13a769','Rupal','Yadav',867676767,'Raipur',111113,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('6a244190-ef17-11ec-beda-59445ba7bf9f','Kevin','Kala',756561265,'Mumbai',111116,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('70b08870-ef12-11ec-87d4-2383b500ea94','Sangeeta','Singhavi',56565656,'Chennai',777777,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('75c35510-ef15-11ec-b66f-adcc51471e97','shinny','Chopra',161117792,'Punjab',308880,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('79bbc2f0-ef16-11ec-beda-59445ba7bf9f','Ritik','jain',444466666,'Rajasthan',222234,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('804a3740-ef12-11ec-87d4-2383b500ea94','Sangeeta','Panwar',5999999,'Punjab',555555,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('871f5f40-ef13-11ec-b66f-adcc51471e97','Anju','Verma',665155555,'Sikkim',442233,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('8bc79c80-ef11-11ec-87d4-2383b500ea94','Nidhi','Singh',12121212,'Rajasthan',222222,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('8bf602b0-ef15-11ec-b66f-adcc51471e97','Bhanu','Kumar',1111192,'Rajasthan',565656,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('8d73f780-ef12-11ec-87d4-2383b500ea94','Sambhav','Jain',5999339,'Punjab',552222,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('9164e3f0-ef16-11ec-beda-59445ba7bf9f','Ram','jain',888888666,'Mumbai',555534,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('988be760-ef15-11ec-b66f-adcc51471e97','Hemant','Kumar',111156566,'Rajasthan',565656,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('a93eb940-ef13-11ec-b66f-adcc51471e97','Manan','Gupta',667070707,'Punjab',4343434,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('aa4c4e20-ef12-11ec-87d4-2383b500ea94','Raj','Kundra',666656566,'Mumbai',444444,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('aa5dfa00-ef15-11ec-b66f-adcc51471e97','Sandeep','Jaat',111999956,'Rajasthan',565616,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('b56e6ca0-ef14-11ec-b66f-adcc51471e97','Kamya','Kotahwala',167831212,'Rajasthan',303122,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('b8f6d770-ef11-11ec-87d4-2383b500ea94','Neha','Singh',23232323,'Kolkata',333333,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('b9ce2f30-ef12-11ec-87d4-2383b500ea94','Rocky','Kumar',666600066,'Mumbai',444422,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('c7710fb0-ef15-11ec-b66f-adcc51471e97','Sandeep','Meena',222299956,'Rajasthan',121216,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('c8d99d30-ef11-11ec-87d4-2383b500ea94','Divya','Singh',24242424,'Rajasthan',444444,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('d1cb3fc0-ef16-11ec-beda-59445ba7bf9f','Saroj','Kumari',999990000,'Mumbai',555500,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('d7ed4bc0-ef14-11ec-b66f-adcc51471e97','Kamya','Singh',167834412,'Haryana',303123,'87992a80-ef10-11ec-8761-09261dcd5c39','Indira Gandhi Institute of Medical Sciences (IGIMS)'),('da53a4c0-ef11-11ec-87d4-2383b500ea94','Divyansh','Nopany',9909090,'Kolkata',999999,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('e32f91e0-ef15-11ec-b66f-adcc51471e97','Sandy','Mangal',111111116,'Haryana',999999,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('f0290540-ef13-11ec-b66f-adcc51471e97','Manav','Vyas',11111107,'Haryana',303030,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals'),('f38ce960-ef16-11ec-beda-59445ba7bf9f','Somya','Gupts',888888777,'Chennai',888800,'4274d170-ef10-11ec-8761-09261dcd5c39','AIIMS - All India Institute Of Medical Science'),('f83d9270-ef11-11ec-87d4-2383b500ea94','Rahul','Sharma',77777777,'Chennai',666666,'683d8460-ef10-11ec-8761-09261dcd5c39','Apollo Hospitals');
/*!40000 ALTER TABLE `psychiatrist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-18 23:40:34
