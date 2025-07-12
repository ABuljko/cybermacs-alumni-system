CREATE DATABASE  IF NOT EXISTS `alumni_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alumni_db`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: alumni_db
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrator` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `role` enum('Admin','EventManager','JobManager') NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (1,'Morly Cremen','EventManager'),(2,'Janey Penelli','EventManager'),(3,'Lauralee Persse','JobManager'),(4,'Meris Naper','JobManager'),(5,'Carmelle Stickler','EventManager'),(6,'Terrie Gossipin','JobManager'),(7,'Solly Toffts','Admin'),(8,'Penni Itscovitz','JobManager'),(9,'Morty Tampen','JobManager'),(10,'Florian Moogan','EventManager');
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alumni`
--

DROP TABLE IF EXISTS `alumni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumni` (
  `alumni_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) DEFAULT NULL,
  `date_of_birth` date NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `contact_information` varchar(255) NOT NULL,
  `current_location` varchar(100) DEFAULT NULL,
  `graduation_year` year NOT NULL,
  `mobility_track` varchar(100) DEFAULT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `current_job_title` varchar(100) DEFAULT NULL,
  `skills_certifications` text,
  `profile_visibility` enum('Public','Private') DEFAULT 'Public',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `linkedin_profile` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`alumni_id`),
  UNIQUE KEY `contact_information` (`contact_information`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumni`
--

LOCK TABLES `alumni` WRITE;
/*!40000 ALTER TABLE `alumni` DISABLE KEYS */;
INSERT INTO `alumni` VALUES (1,'Cheslie Connor','1953-09-22','Argentina','cconnor0@bbb.org','0 Charing Cross Terrace',2002,'',NULL,'','Fraud Detection','Public','Inactive','https://www.linkedin.com/q+'),(2,'Brewer Adamowicz','1988-07-09','China','badamowicz1@yellowbook.com','7264 Merry Park',1992,'','Art History','','','Public','Inactive','https://www.linkedin.com/_+'),(3,'Lilyan Daal','1968-10-01','Vietnam','ldaal2@t-online.de','052 Village Alley',2012,'Global Exchange Program','Computer Science','','','Private','Active',''),(4,'Cris Tremmil','1996-05-12','Nigeria','ctremmil3@slate.com','86 Bartelt Plaza',2010,'Cultural Immersion Program','Computer Science','Office Assistant III','Oceanography','Private','Inactive','https://www.linkedin.com/Z+'),(5,'Shanta Rix','1969-10-11','Poland','srix4@cpanel.net','',2012,'Language Study Abroad Program','Psychology','Nurse','X-ray','Public','Active',''),(6,'Laurens Aloshkin','1990-04-01','Ireland','laloshkin5@bbc.co.uk','',1995,'',NULL,'Chief Design Engineer','cPanel','Public','Active','https://www.linkedin.com/K+'),(7,'Rabi Belfelt','1998-06-03','Malaysia','rbelfelt6@typepad.com','3337 Hermina Hill',2009,'Research Collaboration Program',NULL,'Help Desk Operator','RC','Private','Active','https://www.linkedin.com/-+'),(8,'Cathi Pocklington','1962-01-24','Russia','cpocklington7@nba.com','209 Forest Dale Avenue',2006,'Research Collaboration Program',NULL,'','','Public','Active',''),(9,'Roosevelt Cianni','1960-01-11','Thailand','rcianni8@imdb.com','',2007,'Research Collaboration Program','Business','Editor','Overhead Cranes','Private','Active','https://www.linkedin.com/0+'),(10,'Parry Treasure','1950-01-02','South Africa','ptreasure9@youtube.com','',2006,'International Internship Program',NULL,'','LGBT Rights','Public','Active','https://www.linkedin.com/7+'),(11,'Grissel Skea','1954-02-09','China','gskeaa@archive.org','',2006,'Language Study Abroad Program',NULL,'Human Resources Assistant I','WUFI','Public','Inactive',''),(12,'Dorette Upham','1964-11-23','Brazil','duphamb@mit.edu','04372 Gale Circle',1994,'Global Exchange Program','Computer Science','','FSL','Public','Inactive','https://www.linkedin.com/_+'),(13,'Nickola Raund','1973-12-23','Indonesia','nraundc@wikimedia.org','53323 Springview Junction',1985,'Language Study Abroad Program',NULL,'','','Private','Active','https://www.linkedin.com/o+'),(14,'Kerwinn Andrey','1987-01-19','Canada','kandreyd@psu.edu','4 Hudson Avenue',2006,'Language Study Abroad Program',NULL,'Nurse Practicioner','FBCB2','Private','Inactive','https://www.linkedin.com/-+'),(15,'Laraine Alesbrook','1969-11-30','Madagascar','lalesbrooke@gizmodo.com','36402 Warbler Street',1999,'Global Exchange Program',NULL,'','Justice','Public','Inactive',''),(16,'Reggis Smedmore','1988-03-05','China','rsmedmoref@tinyurl.com','7 Pankratz Court',2012,'Global Exchange Program','Art History','','MRM','Private','Inactive','https://www.linkedin.com/h+'),(17,'Bendick Ramsier','1970-01-21','Russia','bramsierg@163.com','',2008,'Language Study Abroad Program','Art History','','DNS Administration','Private','Inactive','https://www.linkedin.com/f+'),(18,'Karia Adamovsky','1976-11-24','China','kadamovskyh@house.gov','4022 Goodland Center',2009,'','Art History','','Criminal Justice','Private','Active',''),(19,'Mathilde Draayer','1974-03-25','Indonesia','mdraayeri@t.co','83 Debs Alley',2010,'Global Exchange Program',NULL,'','','Private','Active',''),(20,'Davie Georg','1972-08-11','Iran','dgeorgj@time.com','8 Ryan Lane',2008,'',NULL,'','','Public','Inactive','https://www.linkedin.com/1+'),(21,'Gwenneth Lethby','1955-06-19','Russia','glethbyk@buzzfeed.com','4300 Schiller Alley',1986,'','Computer Science','','','Public','Inactive','https://www.linkedin.com/1+'),(22,'Hanan Wallman','1957-05-10','United Arab Emirates','hwallmanl@microsoft.com','',2002,'Cultural Immersion Program','Psychology','Librarian','Golf','Private','Inactive','https://www.linkedin.com/h+'),(23,'Walker Sturney','1952-07-15','China','wsturneym@yandex.ru','',2012,'Language Study Abroad Program',NULL,'Programmer Analyst III','','Public','Inactive','https://www.linkedin.com/0+'),(24,'Maude Moylane','1957-06-14','Philippines','mmoylanen@craigslist.org','19297 Beilfuss Pass',1996,'International Internship Program','Computer Science','','McAfee Antivirus','Private','Active',''),(25,'Emlynne Roubottom','1958-12-25','Pakistan','eroubottomo@over-blog.com','',2008,'Language Study Abroad Program',NULL,'Quality Engineer','Go','Private','Inactive',''),(26,'Cassie Baston','1955-07-09','Belarus','cbastonp@theguardian.com','3795 Warbler Hill',1998,'Cultural Immersion Program',NULL,'','RNA Isolation','Public','Inactive',''),(27,'Gunar Filipychev','1968-04-16','Vietnam','gfilipychevq@hibu.com','14 Haas Street',2011,'International Internship Program','Psychology','','PVCS','Public','Active',''),(28,'Nertie Faherty','1998-12-04','Thailand','nfahertyr@joomla.org','',2009,'Research Collaboration Program','Engineering','','','Public','Active','https://www.linkedin.com/2+'),(29,'Derrik Dechelle','1950-04-21','Pakistan','ddechelles@businesswire.com','1179 Oriole Center',2009,'','Computer Science','Chief Design Engineer','DXX','Private','Inactive','https://www.linkedin.com/5+'),(30,'Constantia Duiged','1964-04-26','Indonesia','cduigedt@bing.com','405 Sunbrook Parkway',1998,'Research Collaboration Program','Art History','','MBE','Private','Active',''),(31,'Ulrick Semmens','1976-03-15','Czech Republic','usemmensu@house.gov','',2001,'Cultural Immersion Program','Psychology','Design Engineer','Consumer Electronics','Public','Inactive','https://www.linkedin.com/_+'),(32,'Rex Duffus','1968-09-15','Greece','rduffusv@people.com.cn','',1990,'Research Collaboration Program',NULL,'','','Private','Active','https://www.linkedin.com/t+'),(33,'Monica Garlicke','1975-05-31','China','mgarlickew@ucsd.edu','',2002,'Global Exchange Program',NULL,'','Sh','Public','Active',''),(34,'Ellsworth Jerosch','1969-04-01','Indonesia','ejeroschx@xinhuanet.com','962 Carpenter Trail',2005,'International Internship Program','Engineering','Help Desk Operator','CCENT','Public','Inactive','https://www.linkedin.com/b+'),(35,'Shaine Geany','1955-06-08','Kazakhstan','sgeanyy@gov.uk','',2005,'Cultural Immersion Program','Computer Science','','Illustrator','Public','Inactive',''),(36,'Tressa Jarman','1978-01-06','Afghanistan','tjarmanz@typepad.com','8 Spohn Court',2007,'Cultural Immersion Program','Biology','','NCIC','Private','Active','https://www.linkedin.com/O+'),(37,'Dixie Dominec','1955-04-02','Indonesia','ddominec10@bbc.co.uk','',2000,'','Business','','Athletic Performance','Private','Active',''),(38,'Franz Edelmann','1991-09-29','China','fedelmann11@nps.gov','',1992,'Research Collaboration Program','Art History','','Process Efficiency','Public','Active',''),(39,'Jose Stickels','1997-03-03','China','jstickels12@unicef.org','781 Eagle Crest Road',2000,'','Art History','Database Administrator II','VMware ESX','Public','Active','https://www.linkedin.com/R+'),(40,'Granville Fairfoot','1985-02-11','United Kingdom','gfairfoot13@barnesandnoble.com','672 Ohio Circle',1995,'International Internship Program','Biology','Account Coordinator','','Private','Active','https://www.linkedin.com/x+'),(41,'Felicdad Helwig','1999-11-14','Argentina','fhelwig14@reference.com','72182 Cambridge Circle',2004,'International Internship Program',NULL,'','Python','Private','Inactive','https://www.linkedin.com/-+'),(42,'Shantee Delatour','1972-01-23','China','sdelatour15@privacy.gov.au','97859 Northport Plaza',1995,'Research Collaboration Program',NULL,'','Shopping Centers','Public','Inactive',''),(43,'Jaymie Plaistowe','1981-01-31','Portugal','jplaistowe16@ucoz.ru','',2009,'International Internship Program','Biology','VP Product Management','','Public','Inactive',''),(44,'Lyndsay Gadeaux','1993-12-15','Sweden','lgadeaux17@phpbb.com','16 Quincy Alley',1993,'',NULL,'Programmer III','Title IV','Private','Active',''),(45,'Idell Camacho','1950-09-19','Indonesia','icamacho18@goo.ne.jp','1 Prentice Avenue',1998,'','Psychology','Paralegal','','Public','Inactive',''),(46,'Jannelle Croney','1970-07-30','China','jcroney19@t.co','',2010,'Research Collaboration Program','Computer Science','','','Public','Inactive','https://www.linkedin.com/_+'),(47,'Ibby McGrotty','1997-03-07','United States','imcgrotty1a@comcast.net','607 Milwaukee Point',2003,'',NULL,'Web Designer IV','MTT','Public','Active','https://www.linkedin.com/3+'),(48,'Rubetta Devas','1961-12-20','Thailand','rdevas1b@noaa.gov','0749 Vahlen Road',1992,'Language Study Abroad Program',NULL,'Physical Therapy Assistant','Current Affairs','Public','Active',''),(49,'Khalil Bamb','1995-03-15','Portugal','kbamb1c@oakley.com','',1995,'Cultural Immersion Program',NULL,'Engineer IV','CMC','Public','Active','https://www.linkedin.com/-+'),(50,'Cami Ughini','1997-08-08','Indonesia','cughini1d@dedecms.com','256 Bluestem Drive',2003,'Cultural Immersion Program',NULL,'','','Private','Active',''),(51,'John Doe','1990-04-15','United States','john.doe@example.com','New York',2012,'Global Exchange Program','Computer Science','Software Engineer','Certified in Python','Public','Active','https://www.linkedin.com/in/johndoe'),(52,'Jane Smith','1988-07-22','Canada','jane.smith@example.com','Toronto',2010,'International Internship Program','Business','Marketing Manager','MBA in Digital Marketing','Private','Active','https://www.linkedin.com/in/janesmith'),(53,'Alice Johnson','1995-03-10','Germany','alice.johnson@example.com','Berlin',2018,'Research Collaboration Program','Engineering','Mechanical Engineer','Certified in AutoCAD','Public','Inactive','https://www.linkedin.com/in/alicejohnson'),(54,'Robert Brown','1992-06-05','United Kingdom','robert.brown@example.com','London',2015,'Language Study Abroad Program','Biology','Lab Technician','Research in Microbiology','Public','Active','https://www.linkedin.com/in/robertbrown'),(55,'Emily Wilson','1993-09-25','France','emily.wilson@example.com','Paris',2014,'Cultural Immersion Program','Psychology','Clinical Psychologist','Certified in Cognitive Therapy','Private','Inactive','https://www.linkedin.com/in/emilywilson'),(56,'Michael Davis','1991-12-12','Australia','michael.davis@example.com','Sydney',2013,'Global Exchange Program','Art History','Museum Curator','Art Restoration Certification','Public','Active','https://www.linkedin.com/in/michaeldavis'),(57,'Laura Martinez','1996-01-30','Spain','laura.martinez@example.com','Madrid',2019,'International Internship Program','Business','Finance Analyst','CFA Level 1 Certified','Public','Active','https://www.linkedin.com/in/lauramartinez'),(58,'David Garcia','1987-11-18','Mexico','david.garcia@example.com','Mexico City',2009,'Research Collaboration Program','Computer Science','AI Engineer','Machine Learning Specialist','Private','Active','https://www.linkedin.com/in/davidgarcia'),(59,'Sophia Anderson','1994-05-08','Italy','sophia.anderson@example.com','Rome',2016,'Cultural Immersion Program','Engineering','Civil Engineer','Structural Analysis Expert','Public','Inactive','https://www.linkedin.com/in/sophiaanderson'),(60,'James Wilson','1990-08-14','Netherlands','james.wilson@example.com','Amsterdam',2011,'Language Study Abroad Program','Psychology','Behavioral Therapist','Licensed Therapist','Public','Active','https://www.linkedin.com/in/jameswilson');
/*!40000 ALTER TABLE `alumni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employer`
--

DROP TABLE IF EXISTS `employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employer` (
  `employer_id` int NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `industry` varchar(100) DEFAULT NULL,
  `contact_information` varchar(255) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`employer_id`),
  UNIQUE KEY `company_name` (`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employer`
--

LOCK TABLES `employer` WRITE;
/*!40000 ALTER TABLE `employer` DISABLE KEYS */;
INSERT INTO `employer` VALUES (1,'Howe, Huel and Green','entertainment','mpargiter0@amazon.co.uk','97 2nd Street\r'),(2,'Keeling, Gottlieb and Boehm','retail','fbrame1@geocities.com','66651 Morning Trail\r'),(3,'Schmidt, McClure and Muller','agriculture','jrofe2@skype.com','85 Veith Circle\r'),(4,'Bergstrom-Kuhn','agriculture','rjuster3@parallels.com','275 Swallow Junction\r'),(5,'Pouros, Purdy and Lind','fashion','fimlacke4@hc360.com','18 Stang Court\r'),(6,'Mohr-Steuber','technology','dsmooth5@hc360.com','0633 Namekagon Place\r'),(7,'Kuhn, Leffler and Gusikowski','fashion','igrimster6@unblog.fr','0852 Graedel Road\r'),(8,'Gottlieb-Aufderhar','healthcare','vaberkirder7@yandex.ru','33 Mccormick Park\r'),(9,'Stiedemann, Larson and Hartmann','transportation','gandrassy8@netlog.com','195 Acker Trail\r'),(10,'Wisozk Group','healthcare','rreneke9@uol.com.br','09 Arapahoe Crossing\r'),(11,'Ondricka Inc','education','sblazia@latimes.com','32 Cody Hill\r'),(12,'Gislason, Watsica and Ondricka','healthcare','kgentricb@infoseek.co.jp','53599 Johnson Park\r'),(13,'Collier-Lowe','transportation','ioneillc@fema.gov','941 Melrose Road\r'),(14,'Kertzmann, Boehm and Tremblay','education','gallcroftd@trellian.com','3 Katie Alley\r'),(15,'Luettgen-Cormier','hospitality','tmaccaffertye@alexa.com','1 Kim Street\r'),(16,'Kerluke LLC','automotive','pellsef@reddit.com','1 Buell Drive\r'),(17,'Cronin and Sons','energy','aennalsg@cbsnews.com','2143 Trailsway Road\r'),(18,'Roberts LLC','hospitality','ctoffolonih@google.it','36 Pleasure Terrace\r'),(19,'Yundt and Sons','agriculture','rliquorishi@nsw.gov.au','58326 Brentwood Pass\r'),(20,'Bins-Nienow','construction','tpielej@alexa.com','02 4th Circle\r'),(21,'Ortiz Group','fashion','bpinnerek@hao123.com','57 Muir Crossing\r'),(22,'Lemke-Beahan','agriculture','hcastelluzzil@cam.ac.uk','848 Heffernan Center\r'),(23,'Schumm-Dibbert','technology','aweddeburnscrimgeourm@forbes.com','38 Stuart Terrace\r'),(24,'Macejkovic Group','technology','mcockmann@google.com.br','7378 Commercial Pass\r'),(25,'Dach, Predovic and Nader','technology','parmisteado@fc2.com','47 Magdeline Point\r'),(26,'Mertz-Thiel','technology','ltissierp@slashdot.org','281 Petterle Parkway\r'),(27,'Macejkovic-Crona','hospitality','mruncieq@unesco.org','130 Ohio Avenue\r'),(28,'Watsica-Lubowitz','entertainment','nbeertr@ow.ly','4 Clyde Gallagher Avenue\r'),(29,'Labadie LLC','telecommunications','hgurnells@blog.com','3 Laurel Way\r'),(30,'MacGyver-Schamberger','automotive','wtanswellt@shop-pro.jp','5 School Point\r'),(31,'McCullough, Labadie and Zboncak','healthcare','dlougheadu@hp.com','269 American Ash Street\r'),(32,'Hilpert-Armstrong','agriculture','aizakofv@tripadvisor.com','4 Petterle Alley\r'),(33,'Strosin Inc','healthcare','bbolanw@theguardian.com','19440 Autumn Leaf Way\r'),(34,'Abshire, Klocko and Klein','energy','lduggetx@jiathis.com','27543 Graceland Alley\r'),(35,'Ernser LLC','retail','sharrildy@rediff.com','6973 Muir Point\r'),(36,'Schoen and Sons','fashion','wgoedez@google.de','17 5th Plaza\r'),(37,'Schoen Inc','technology','shakewell10@imgur.com','03674 Carpenter Park\r'),(38,'Durgan, Thiel and Krajcik','healthcare','ahafner11@smugmug.com','41942 Dovetail Trail\r'),(39,'Gottlieb LLC','healthcare','rmacgilrewy12@ehow.com','59 Everett Junction\r'),(40,'Prosacco Group','fashion','cmilmore13@cdbaby.com','5 Armistice Avenue\r'),(41,'Simonis Group','telecommunications','ekeesman14@opensource.org','254 Brown Point\r'),(42,'Kirlin Group','education','earman15@qq.com','2 Ludington Crossing\r'),(43,'Dicki, Dicki and Altenwerth','automotive','obelison16@deviantart.com','2 Arapahoe Plaza\r'),(44,'Hodkiewicz, Heidenreich and Gusikowski','retail','nhotton17@mit.edu','5940 Charing Cross Road\r'),(45,'Ruecker, Feest and Cronin','fashion','hflexman18@prweb.com','46 Valley Edge Crossing\r'),(46,'Batz, Rempel and Raynor','energy','bthreadkell19@jugem.jp','8015 Shopko Street\r'),(47,'Satterfield, Wiza and Baumbach','fashion','acozens1a@sitemeter.com','3509 Evergreen Circle\r'),(48,'Hoppe, Kozey and Toy','energy','tpieterick1b@altervista.org','79614 Oakridge Place\r'),(49,'Brakus-Sanford','education','rcoldridge1c@fotki.com','549 Lakeland Road\r'),(50,'Gerlach-Hermiston','retail','hloveland1d@123-reg.co.uk','6801 Bultman Trail\r');
/*!40000 ALTER TABLE `employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employment_history`
--

DROP TABLE IF EXISTS `employment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employment_history` (
  `employment_id` int NOT NULL AUTO_INCREMENT,
  `alumni_id` int NOT NULL,
  `employer_id` int NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `job_posting_id` int DEFAULT NULL,
  PRIMARY KEY (`employment_id`),
  KEY `alumni_id` (`alumni_id`),
  KEY `employer_id` (`employer_id`),
  KEY `job_posting_id` (`job_posting_id`),
  CONSTRAINT `employment_history_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`alumni_id`) ON DELETE CASCADE,
  CONSTRAINT `employment_history_ibfk_2` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`) ON DELETE CASCADE,
  CONSTRAINT `employment_history_ibfk_3` FOREIGN KEY (`job_posting_id`) REFERENCES `job_posting` (`job_posting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employment_history`
--

LOCK TABLES `employment_history` WRITE;
/*!40000 ALTER TABLE `employment_history` DISABLE KEYS */;
INSERT INTO `employment_history` VALUES (1,47,6,'Associate Professor','2020-06-22',NULL,50),(2,4,1,'Sales Representative','2019-01-04',NULL,27),(3,31,30,'Financial Analyst','2020-01-04',NULL,48),(4,14,31,'Administrative Assistant II','2016-03-08',NULL,48),(5,20,23,'Marketing Manager','2016-11-15',NULL,32),(6,30,26,'Environmental Specialist','2016-01-09','2023-02-28',2),(7,21,49,'Professor','2020-11-11',NULL,40),(8,37,14,'Computer Systems Analyst III','2018-05-09',NULL,NULL),(9,7,48,'Senior Developer','2022-01-29',NULL,10),(10,32,50,'Software Consultant','2021-04-24','2022-11-14',24),(11,29,10,'Analog Circuit Design manager','2017-09-17','2022-09-17',42),(12,39,47,'Analog Circuit Design manager','2017-05-22',NULL,2),(13,18,28,'Nuclear Power Engineer','2022-01-24','2020-04-06',19),(14,1,15,'Information Systems Manager','2018-04-27','2022-04-15',34),(15,14,24,'Editor','2021-07-01',NULL,19),(16,27,18,'Financial Analyst','2022-06-03','2022-06-29',21),(17,32,12,'Senior Sales Associate','2018-03-23','2020-03-15',48),(18,17,27,'Financial Analyst','2018-03-24','2022-09-03',32),(19,23,19,'Civil Engineer','2020-09-19',NULL,39),(20,13,45,'Assistant Manager','2019-03-21',NULL,NULL),(21,32,25,'Financial Advisor','2022-03-24',NULL,NULL),(22,16,19,'Financial Advisor','2016-08-16','2022-05-19',36),(23,43,10,'Programmer I','2018-03-11','2022-04-14',47),(24,44,23,'Pharmacist','2018-02-17',NULL,50),(25,8,8,'Community Outreach Specialist','2020-09-25',NULL,5),(26,35,13,'GIS Technical Architect','2021-01-22',NULL,24),(27,11,39,'Teacher','2019-04-17','2021-12-05',18),(28,23,25,'Editor','2018-03-08',NULL,44),(29,1,21,'Accounting Assistant IV','2017-06-07',NULL,15),(30,30,16,'Analog Circuit Design manager','2019-12-06',NULL,36),(31,31,10,'Nurse','2017-02-09','2021-03-06',37),(32,28,28,'VP Sales','2022-11-11',NULL,33),(33,13,36,'Nuclear Power Engineer','2021-10-25','2021-10-27',NULL),(34,26,42,'Senior Financial Analyst','2018-04-01','2020-03-27',46),(35,14,7,'Environmental Tech','2015-06-04','2020-06-17',NULL),(36,14,7,'Senior Developer','2020-04-03','2021-09-27',NULL),(37,43,9,'Nurse','2018-04-14','2021-03-15',NULL),(38,18,22,'Research Nurse','2016-01-20','2024-03-16',30),(39,7,40,'Assistant Manager','2016-04-09',NULL,NULL),(40,49,31,'Clinical Specialist','2020-06-04','2023-05-26',12),(41,2,48,'Programmer Analyst I','2020-12-05','2024-10-07',45),(42,4,47,'Quality Control Specialist','2017-07-11','2024-04-03',26),(43,41,28,'Account Representative I','2021-11-09','2024-07-13',41),(44,6,27,'Environmental Specialist','2018-01-14','2021-09-09',NULL),(45,11,23,'Civil Engineer','2018-02-01',NULL,31),(46,43,20,'Senior Financial Analyst','2017-03-24',NULL,NULL),(47,47,13,'Geologist II','2016-09-09',NULL,38),(48,47,25,'VP Product Management','2018-04-13',NULL,3),(49,36,46,'Speech Pathologist','2020-09-25','2023-02-24',18),(50,31,8,'Web Developer II','2015-03-04','2022-11-10',43),(51,51,5,'Marketing Specialist','2025-06-15',NULL,51),(52,52,8,'Software Developer','2025-07-01',NULL,52),(53,53,3,'Financial Analyst','2025-05-20',NULL,53),(54,54,7,'HR Coordinator','2025-08-15',NULL,54),(55,55,6,'Project Manager','2025-09-10',NULL,55),(56,56,15,'Data Engineer','2025-07-15',NULL,52),(57,57,10,'Backend Developer','2025-06-20',NULL,51),(58,58,25,'SEO Specialist','2025-08-10',NULL,54),(59,59,30,'HR Specialist','2025-09-25',NULL,55),(60,60,20,'Financial Advisor','2025-05-20',NULL,53);
/*!40000 ALTER TABLE `employment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `admin_id` int NOT NULL,
  `event_name` varchar(100) NOT NULL,
  `event_description` text NOT NULL,
  `event_date` datetime NOT NULL,
  `event_location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `administrator` (`admin_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,1,'Annual Charity Gala','Charity fundraiser gala','2024-07-09 00:00:00','13795 Atwood Street'),(2,5,'Food Truck Festival','Product launch event','2025-10-24 00:00:00','2008 Harbort Plaza'),(3,5,'Annual Charity Gala','Birthday party celebration','2020-01-12 00:00:00','89 Judy Junction'),(4,2,'Food Truck Festival','Networking mixer','2020-03-03 00:00:00','4872 Merry Avenue'),(5,1,'Summer Music Festival','Birthday party celebration','2023-07-13 00:00:00','0801 Almo Drive'),(6,1,'Tech Conference','Networking mixer','2021-06-23 00:00:00',''),(7,2,'Summer Music Festival','Networking mixer','2021-11-26 00:00:00','47219 Oriole Road'),(8,1,'Annual Charity Gala','Birthday party celebration','2022-03-04 00:00:00','73385 Rieder Alley'),(9,1,'Annual Charity Gala','Networking mixer','2022-01-25 00:00:00','2877 Elmside Junction'),(10,10,'Tech Conference','Birthday party celebration','2023-09-15 00:00:00','1 Randy Trail'),(11,5,'Summer Music Festival','Charity fundraiser gala','2023-06-15 00:00:00','1003 Annamark Way'),(12,1,'Tech Conference','Birthday party celebration','2022-09-25 00:00:00','9 Londonderry Road'),(13,10,'Annual Charity Gala','Product launch event','2020-06-04 00:00:00','50576 Southridge Plaza'),(14,1,'Art Exhibition','Product launch event','2022-05-24 00:00:00','5 Kenwood Street'),(15,2,'Summer Music Festival','Product launch event','2020-07-20 00:00:00','8 Kinsman Avenue'),(16,5,'Tech Conference','Charity fundraiser gala','2023-08-19 00:00:00','24452 Novick Alley'),(17,1,'Food Truck Festival','Charity fundraiser gala','2020-11-04 00:00:00','3 Monument Alley'),(18,10,'Annual Charity Gala','Birthday party celebration','2020-06-05 00:00:00','510 Arapahoe Center'),(19,10,'Art Exhibition','Birthday party celebration','2020-07-08 00:00:00','6 Lakewood Gardens Point'),(20,5,'Summer Music Festival','Birthday party celebration','2024-08-21 00:00:00','53775 Ridgeway Plaza'),(21,2,'Tech Conference','Birthday party celebration','2025-12-17 00:00:00',''),(22,1,'Food Truck Festival','Product launch event','2025-09-26 00:00:00',''),(23,2,'Art Exhibition','Charity fundraiser gala','2025-11-10 00:00:00',''),(24,10,'Tech Conference','Birthday party celebration','2023-10-29 00:00:00','8 Becker Trail'),(25,1,'Tech Conference','Birthday party celebration','2020-11-03 00:00:00',''),(26,10,'Food Truck Festival','Birthday party celebration','2020-04-03 00:00:00',''),(27,5,'Tech Conference','Product launch event','2023-05-13 00:00:00',''),(28,2,'Summer Music Festival','Product launch event','2022-05-05 00:00:00','5 Lien Way'),(29,2,'Tech Conference','Birthday party celebration','2022-07-05 00:00:00',''),(30,1,'Annual Charity Gala','Company team building event','2020-09-09 00:00:00','1 Roxbury Crossing'),(31,10,'Art Exhibition','Networking mixer','2021-11-17 00:00:00','83 Hoepker Point'),(32,10,'Summer Music Festival','Charity fundraiser gala','2020-02-22 00:00:00',''),(33,1,'Annual Charity Gala','Birthday party celebration','2020-04-06 00:00:00',''),(34,5,'Food Truck Festival','Product launch event','2021-03-24 00:00:00',''),(35,1,'Annual Charity Gala','Product launch event','2022-05-28 00:00:00','1 Waubesa Drive'),(36,2,'Annual Charity Gala','Birthday party celebration','2022-10-18 00:00:00','9021 Hoffman Street'),(37,1,'Summer Music Festival','Networking mixer','2023-07-28 00:00:00','857 Green Road'),(38,1,'Food Truck Festival','Product launch event','2022-04-30 00:00:00','86301 Coleman Center'),(39,2,'Summer Music Festival','Birthday party celebration','2021-11-16 00:00:00','48545 Trailsway Road'),(40,2,'Summer Music Festival','Networking mixer','2025-04-21 00:00:00',''),(41,10,'Tech Conference','Birthday party celebration','2022-12-13 00:00:00',''),(42,2,'Annual Charity Gala','Product launch event','2020-07-05 00:00:00',''),(43,1,'Summer Music Festival','Company team building event','2022-06-10 00:00:00',''),(44,1,'Food Truck Festival','Company team building event','2024-08-10 00:00:00','79 Milwaukee Road'),(45,10,'Tech Conference','Charity fundraiser gala','2020-10-31 00:00:00',''),(46,5,'Food Truck Festival','Company team building event','2021-12-12 00:00:00','6014 Northport Alley'),(47,1,'Art Exhibition','Company team building event','2023-10-13 00:00:00',''),(48,5,'Art Exhibition','Product launch event','2022-12-03 00:00:00','9 Pond Point'),(49,5,'Food Truck Festival','Product launch event','2023-03-14 00:00:00','0104 Chive Lane'),(50,2,'Food Truck Festival','Charity fundraiser gala','2024-05-06 00:00:00','3 Westend Pass');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_attendance`
--

DROP TABLE IF EXISTS `event_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_attendance` (
  `attendance_id` int NOT NULL AUTO_INCREMENT,
  `alumni_id` int NOT NULL,
  `event_id` int NOT NULL,
  `feedback_text` text,
  `rating` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`attendance_id`),
  KEY `alumni_id` (`alumni_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `event_attendance_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`alumni_id`) ON DELETE CASCADE,
  CONSTRAINT `event_attendance_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `event` (`event_id`) ON DELETE CASCADE,
  CONSTRAINT `event_attendance_chk_1` CHECK ((`rating` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_attendance`
--

LOCK TABLES `event_attendance` WRITE;
/*!40000 ALTER TABLE `event_attendance` DISABLE KEYS */;
INSERT INTO `event_attendance` VALUES (1,9,11,'Constructive criticism',2),(2,43,35,'Average performance',5),(3,2,30,'Outstanding effort',3),(4,50,42,'Average performance',1),(5,21,39,'Outstanding effort',2),(6,22,34,'Room for growth',2),(7,28,9,'Positive feedback',2),(8,43,49,'Impressive results',4),(9,33,33,'Outstanding effort',3),(10,31,6,'Great job!',5),(11,8,26,'Average performance',3),(12,20,8,'Room for growth',2),(13,14,15,'Constructive criticism',2),(14,4,12,'Great job!',1),(15,16,23,'Constructive criticism',5),(16,48,27,'Satisfactory outcome',4),(17,1,41,'Average performance',4),(18,17,16,'Constructive criticism',3),(19,10,1,'Outstanding effort',3),(20,25,3,'Room for growth',2),(21,6,10,'Satisfactory outcome',5),(22,44,44,'Satisfactory outcome',2),(23,45,26,'Constructive criticism',3),(24,22,35,'Impressive results',4),(25,10,20,'Room for growth',1),(26,17,4,'Excellent work',5),(27,37,23,'Outstanding effort',4),(28,21,10,'Impressive results',5),(29,23,50,'Impressive results',3),(30,39,43,'Impressive results',4),(31,28,4,'Room for growth',3),(32,5,5,'Constructive criticism',4),(33,20,23,'Needs improvement',5),(34,27,16,'Constructive criticism',3),(35,36,22,'Average performance',4),(36,39,9,'Impressive results',5),(37,36,39,'Excellent work',4),(38,1,4,'Room for growth',5),(39,48,39,'Great job!',3),(40,16,7,'Constructive criticism',4),(41,4,48,'Constructive criticism',4),(42,7,37,'Great job!',5),(43,16,27,'Outstanding effort',1),(44,22,43,'Impressive results',2),(45,48,30,'Impressive results',2),(46,42,11,'Great job!',4),(47,14,5,'Average performance',2),(48,28,40,'Average performance',2),(49,26,22,'Outstanding effort',2),(50,38,32,'Average performance',2);
/*!40000 ALTER TABLE `event_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_application`
--

DROP TABLE IF EXISTS `job_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_application` (
  `job_application_id` int NOT NULL AUTO_INCREMENT,
  `alumni_id` int NOT NULL,
  `job_posting_id` int NOT NULL,
  `status` enum('Pending','Accepted','Rejected') DEFAULT 'Pending',
  `submission_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `response_date` date DEFAULT NULL,
  PRIMARY KEY (`job_application_id`),
  KEY `alumni_id` (`alumni_id`),
  KEY `job_posting_id` (`job_posting_id`),
  CONSTRAINT `job_application_ibfk_1` FOREIGN KEY (`alumni_id`) REFERENCES `alumni` (`alumni_id`) ON DELETE CASCADE,
  CONSTRAINT `job_application_ibfk_2` FOREIGN KEY (`job_posting_id`) REFERENCES `job_posting` (`job_posting_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_application`
--

LOCK TABLES `job_application` WRITE;
/*!40000 ALTER TABLE `job_application` DISABLE KEYS */;
INSERT INTO `job_application` VALUES (1,8,24,'Rejected','2020-10-23 00:00:00','2020-11-07'),(2,3,47,'Accepted','2023-06-24 00:00:00','2023-07-14'),(3,7,8,'Pending','2024-05-21 00:00:00',NULL),(4,22,19,'Rejected','2025-11-07 00:00:00','2025-12-03'),(5,29,39,'Accepted','2024-07-17 00:00:00','2024-07-25'),(6,33,21,'Rejected','2024-03-05 00:00:00','2024-03-30'),(7,37,47,'Accepted','2023-10-30 00:00:00','2023-11-09'),(8,37,42,'Accepted','2021-08-19 00:00:00','2021-08-25'),(9,24,28,'Rejected','2021-08-31 00:00:00','2021-09-01'),(10,8,9,'Accepted','2020-11-04 00:00:00','2020-11-23'),(11,18,33,'Accepted','2021-07-22 00:00:00','2021-07-24'),(12,31,45,'Accepted','2023-09-12 00:00:00','2023-09-25'),(13,24,18,'Pending','2023-02-14 00:00:00',NULL),(14,1,21,'Accepted','2025-09-16 00:00:00','2025-09-17'),(15,4,29,'Pending','2024-08-20 00:00:00',NULL),(16,23,41,'Accepted','2020-10-12 00:00:00','2020-11-08'),(17,25,30,'Accepted','2024-12-05 00:00:00','2024-12-15'),(18,18,48,'Accepted','2022-02-27 00:00:00','2022-03-02'),(19,30,46,'Rejected','2020-09-06 00:00:00','2020-09-18'),(20,33,9,'Pending','2024-08-01 00:00:00',NULL),(21,6,8,'Rejected','2020-06-03 00:00:00','2020-06-26'),(22,42,16,'Pending','2022-03-26 00:00:00',NULL),(23,8,8,'Accepted','2025-11-05 00:00:00','2025-11-24'),(24,42,46,'Accepted','2022-04-15 00:00:00','2022-05-12'),(25,31,16,'Pending','2021-04-01 00:00:00',NULL),(26,39,30,'Accepted','2023-10-01 00:00:00','2023-10-21'),(27,36,5,'Rejected','2021-11-18 00:00:00','2021-12-08'),(28,44,31,'Accepted','2022-10-29 00:00:00','2022-11-05'),(29,45,3,'Accepted','2025-07-28 00:00:00','2025-08-06'),(30,15,26,'Accepted','2020-02-21 00:00:00','2020-03-14'),(31,31,36,'Rejected','2024-12-03 00:00:00','2024-12-28'),(32,3,33,'Accepted','2022-01-02 00:00:00','2022-01-30'),(33,5,18,'Rejected','2020-03-03 00:00:00','2020-03-08'),(34,42,6,'Accepted','2024-01-13 00:00:00','2024-01-14'),(35,27,8,'Accepted','2022-04-18 00:00:00','2022-05-07'),(36,23,19,'Rejected','2025-02-15 00:00:00','2025-02-21'),(37,32,37,'Pending','2022-08-22 00:00:00',NULL),(38,32,4,'Pending','2022-07-10 00:00:00',NULL),(39,40,26,'Rejected','2023-07-23 00:00:00','2023-07-26'),(40,29,25,'Accepted','2023-11-18 00:00:00','2023-12-17'),(41,8,8,'Rejected','2022-06-15 00:00:00','2022-06-28'),(42,6,48,'Rejected','2021-06-28 00:00:00','2021-07-08'),(43,38,32,'Rejected','2023-07-17 00:00:00','2023-07-27'),(44,21,43,'Accepted','2020-05-25 00:00:00','2020-06-17'),(45,19,49,'Pending','2025-08-29 00:00:00',NULL),(46,3,47,'Accepted','2021-01-31 00:00:00','2021-02-25'),(47,16,32,'Rejected','2020-11-21 00:00:00','2020-12-19'),(48,34,38,'Pending','2020-01-17 00:00:00',NULL),(49,5,36,'Rejected','2023-03-28 00:00:00','2023-03-31'),(50,27,17,'Pending','2022-11-10 00:00:00',NULL),(51,51,51,'Accepted','2025-05-20 00:00:00','2025-06-10'),(52,52,52,'Accepted','2025-06-15 00:00:00','2025-07-05'),(53,53,53,'Accepted','2025-04-25 00:00:00','2025-05-15'),(54,54,54,'Accepted','2025-07-10 00:00:00','2025-07-30'),(55,55,55,'Accepted','2025-08-01 00:00:00','2025-08-20'),(56,56,52,'Accepted','2025-06-30 00:00:00','2025-07-15'),(57,57,51,'Accepted','2025-05-15 00:00:00','2025-06-01'),(58,58,54,'Accepted','2025-07-20 00:00:00','2025-08-05'),(59,59,55,'Accepted','2025-08-10 00:00:00','2025-08-30'),(60,60,53,'Accepted','2025-04-30 00:00:00','2025-05-20');
/*!40000 ALTER TABLE `job_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_posting`
--

DROP TABLE IF EXISTS `job_posting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_posting` (
  `job_posting_id` int NOT NULL AUTO_INCREMENT,
  `job_title` varchar(100) NOT NULL,
  `job_description` text,
  `job_type` enum('Full-time','Part-time','Internship','Contract') NOT NULL,
  `application_deadline` date DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `employer_id` int NOT NULL,
  PRIMARY KEY (`job_posting_id`),
  KEY `employer_id` (`employer_id`),
  CONSTRAINT `job_posting_ibfk_1` FOREIGN KEY (`employer_id`) REFERENCES `employer` (`employer_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_posting`
--

LOCK TABLES `job_posting` WRITE;
/*!40000 ALTER TABLE `job_posting` DISABLE KEYS */;
INSERT INTO `job_posting` VALUES (1,'Professor','HR Coordinator','Contract','2024-03-27','51816 Barnett Hill',1),(2,'Research Assistant IV','Software Engineer','Part-time','2022-03-03','',19),(3,'Senior Financial Analyst','Sales Manager','Part-time','2025-02-22','74181 Stang Crossing',7),(4,'Geologist II','Graphic Designer','Internship','2020-12-09','1 Vermont Crossing',24),(5,'Quality Engineer','Graphic Designer','Contract','2023-04-15','',44),(6,'Human Resources Assistant IV','Graphic Designer','Internship','2022-01-31','',2),(7,'Electrical Engineer','HR Coordinator','Internship','2024-02-14','',28),(8,'Software Consultant','HR Coordinator','Internship','2023-03-14','1 Melvin Pass',31),(9,'Administrative Officer','Software Engineer','Part-time','2022-06-25','3679 Stuart Place',8),(10,'Recruiter','Graphic Designer','Part-time','2025-08-15','92956 Jana Crossing',4),(11,'Graphic Designer','Marketing Specialist','Internship','2023-04-03','7814 Sugar Plaza',19),(12,'Marketing Assistant','HR Coordinator','Part-time','2021-12-02','',24),(13,'Design Engineer','Software Engineer','Contract','2021-07-14','096 Cottonwood Crossing',22),(14,'Geologist III','Software Engineer','Full-time','2022-11-23','',34),(15,'Senior Quality Engineer','Sales Manager','Contract','2025-10-31','',15),(16,'Chief Design Engineer','Sales Manager','Internship','2020-12-27','8383 Northland Parkway',26),(17,'Executive Secretary','HR Coordinator','Contract','2022-09-27','',46),(18,'Research Associate','Graphic Designer','Full-time','2023-06-14','37060 Anhalt Terrace',44),(19,'Desktop Support Technician','Software Engineer','Part-time','2025-07-16','5085 Caliangt Point',6),(20,'Senior Financial Analyst','Graphic Designer','Contract','2021-12-26','24 Charing Cross Court',46),(21,'Statistician I','Sales Manager','Full-time','2022-03-02','',15),(22,'Teacher','Graphic Designer','Contract','2024-04-08','3 Kim Pass',7),(23,'Registered Nurse','Sales Manager','Full-time','2021-02-06','31 Twin Pines Hill',37),(24,'Physical Therapy Assistant','Software Engineer','Internship','2023-08-17','',26),(25,'Financial Analyst','Software Engineer','Internship','2022-07-28','25 Oak Plaza',32),(26,'Software Engineer IV','HR Coordinator','Contract','2022-01-10','',1),(27,'Media Manager IV','HR Coordinator','Internship','2022-01-04','09 Luster Avenue',12),(28,'Account Representative III','Software Engineer','Part-time','2020-03-16','877 Center Street',16),(29,'Web Designer I','Software Engineer','Internship','2021-02-12','92503 Hooker Court',38),(30,'Executive Secretary','Graphic Designer','Internship','2025-07-15','433 Rutledge Circle',4),(31,'Computer Systems Analyst I','Software Engineer','Contract','2024-05-13','5 Melvin Avenue',46),(32,'Web Designer IV','Marketing Specialist','Contract','2025-02-25','1 Eastlawn Point',5),(33,'Quality Engineer','Software Engineer','Full-time','2020-11-21','8 Dakota Parkway',41),(34,'Sales Associate','Marketing Specialist','Contract','2023-11-24','5 Sutherland Center',5),(35,'Sales Associate','Marketing Specialist','Internship','2023-02-25','',17),(36,'Senior Quality Engineer','HR Coordinator','Internship','2021-12-17','',45),(37,'Human Resources Manager','Marketing Specialist','Part-time','2025-08-15','2 Westport Pass',40),(38,'Pharmacist','Sales Manager','Part-time','2021-09-20','9204 Barnett Circle',27),(39,'Chemical Engineer','Software Engineer','Internship','2024-04-07','67 Old Shore Point',8),(40,'Software Engineer I','Marketing Specialist','Internship','2021-07-24','856 Delaware Terrace',8),(41,'Health Coach II','Software Engineer','Contract','2023-02-04','84 Harbort Drive',30),(42,'VP Quality Control','Marketing Specialist','Full-time','2025-12-29','',40),(43,'Quality Engineer','Software Engineer','Internship','2023-10-27','60851 Prairieview Terrace',23),(44,'Mechanical Systems Engineer','Marketing Specialist','Part-time','2023-06-03','97143 Melrose Drive',16),(45,'Staff Scientist','Marketing Specialist','Full-time','2022-09-26','50 Porter Center',36),(46,'Senior Sales Associate','Sales Manager','Part-time','2025-06-18','92 Brown Street',44),(47,'Desktop Support Technician','Sales Manager','Contract','2021-04-06','',35),(48,'Programmer I','Sales Manager','Full-time','2020-10-23','',30),(49,'VP Sales','Software Engineer','Internship','2021-10-16','8875 Eggendart Road',4),(50,'Computer Systems Analyst IV','Graphic Designer','Contract','2021-10-13','',1),(51,'Marketing Specialist','Develops marketing strategies','Full-time','2025-06-30','Berlin',5),(52,'Software Developer','Develops web applications','Full-time','2025-07-15','Munich',8),(53,'Financial Analyst','Handles financial reports','Full-time','2025-05-20','Hamburg',3),(54,'HR Coordinator','Manages HR activities','Full-time','2025-08-10','Cologne',7),(55,'Project Manager','Oversees project progress','Full-time','2025-09-01','Frankfurt',6);
/*!40000 ALTER TABLE `job_posting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mentorship`
--

DROP TABLE IF EXISTS `mentorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mentorship` (
  `mentorship_id` int NOT NULL AUTO_INCREMENT,
  `mentor_alumni_id` int NOT NULL,
  `mentee_alumni_id` int NOT NULL,
  `mentorship_type` enum('Career Advice','Internship','General') DEFAULT NULL,
  `availability_status` enum('Available','Unavailable') NOT NULL,
  PRIMARY KEY (`mentorship_id`),
  KEY `mentor_alumni_id` (`mentor_alumni_id`),
  KEY `mentee_alumni_id` (`mentee_alumni_id`),
  CONSTRAINT `mentorship_ibfk_1` FOREIGN KEY (`mentor_alumni_id`) REFERENCES `alumni` (`alumni_id`) ON DELETE CASCADE,
  CONSTRAINT `mentorship_ibfk_2` FOREIGN KEY (`mentee_alumni_id`) REFERENCES `alumni` (`alumni_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mentorship`
--

LOCK TABLES `mentorship` WRITE;
/*!40000 ALTER TABLE `mentorship` DISABLE KEYS */;
INSERT INTO `mentorship` VALUES (1,23,46,'General','Available'),(2,32,44,'General','Unavailable'),(3,8,36,'Career Advice','Available'),(4,12,45,'Internship','Unavailable'),(5,32,32,'Career Advice','Unavailable'),(6,17,49,'Internship','Unavailable'),(7,7,18,'Internship','Unavailable'),(8,36,5,'Career Advice','Unavailable'),(9,30,30,'Career Advice','Available'),(10,27,26,'Internship','Available'),(11,11,16,'Internship','Available'),(12,2,16,'Career Advice','Available'),(13,1,30,'Career Advice','Available'),(14,24,49,'Internship','Available'),(15,33,20,'Internship','Available'),(16,26,23,'Internship','Available'),(17,41,11,'Career Advice','Unavailable'),(18,22,12,'Internship','Unavailable'),(19,41,47,'Career Advice','Unavailable'),(20,31,1,'Career Advice','Unavailable'),(21,12,38,'Internship','Available'),(22,25,11,'Internship','Available'),(23,13,7,'General','Available'),(24,19,6,'General','Unavailable'),(25,28,17,'General','Unavailable'),(26,32,1,'Career Advice','Available'),(27,24,10,'Internship','Unavailable'),(28,37,3,'General','Available'),(29,47,31,'General','Unavailable'),(30,24,39,'Internship','Available'),(31,7,17,'Internship','Available'),(32,1,21,'General','Available'),(33,3,33,'General','Unavailable'),(34,30,26,'Internship','Available'),(35,16,48,'Internship','Unavailable'),(36,44,41,'Career Advice','Available'),(37,27,25,'Career Advice','Unavailable'),(38,20,38,'General','Unavailable'),(39,24,25,'Internship','Available'),(40,35,4,'Internship','Unavailable'),(41,18,44,'Internship','Available'),(42,33,42,'Internship','Available'),(43,4,42,'Career Advice','Available'),(44,17,20,'General','Unavailable'),(45,43,8,'General','Available'),(46,29,28,'Internship','Unavailable'),(47,46,5,'General','Available'),(48,11,10,'Career Advice','Available'),(49,34,15,'Career Advice','Unavailable'),(50,42,30,'Internship','Unavailable');
/*!40000 ALTER TABLE `mentorship` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-12 10:16:11
