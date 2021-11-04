-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: gradu
-- ------------------------------------------------------
-- Server version	8.0.21

drop database GP;
create database GP;
use GP;

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
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customer` (
  `customerID` int Not NULL auto_increment,
  `full_name` char(50) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `password` char (50) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

insert into Customer values(1, 'Mohamed Ahmed', 'mohamed@gmail.com', '11111');
insert into Customer values(2, 'Taha Mahmoud', 'taha@gmail.com', '22222');
insert into Customer values(3, 'Mariem Wafa', 'mariem@gmail.com', '33333');
insert into Customer values(4, 'Nagla Sayed', 'nagla@gmail.com', '44444');

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `reservation_id` int primary key not null auto_increment,
  `customer_name` char(150) DEFAULT NULL,
  `email` char(150) DEFAULT NULL,
  `phone` char(50) DEFAULT NULL,
  `credit_card_number` char(50) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `trip_name` char(150) DEFAULT NULL,
  `trip_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trips` (
  `trip_id` int NOT NULL,
  `trip_name` char(100) DEFAULT NULL,
  `city_1` char(50) DEFAULT NULL,
  `city_2` char(50) DEFAULT NULL,
  `trip_type1` char(50) DEFAULT NULL,
  `trip_type2` char(50) DEFAULT NULL,
  `number_of_places` int DEFAULT NULL,
  `number_of_people` int DEFAULT NULL,
  `number_of_participants` int DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `place1` char(150) DEFAULT NULL,
  `place2` char(150) DEFAULT NULL,
  `place3` char(150) DEFAULT NULL,
  `hotel_name` char(150) DEFAULT NULL,
  `restaurant` char(150) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `number_of_days` int DEFAULT NULL,
  `start_date` date default null,
  `start_end_date` text default null,
  `start_end_time` text DEFAULT NULL,
  `quality` int default null,
  `img_name` text default Null,
  `href` text default null,
  `trip_description` text default NULL,
  PRIMARY KEY (`trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


INSERT INTO trips
VALUES (1,'Pyramids(Giza)','Giza',null,'cultural',null,1,10,0,'available','pyramids',null,null,null,null,200,1,'2021-07-30','Friday, 30 jul 2021','From 9:00 AM to 4:00 PM',4,'img/trip1.jpg','1','One of the Seven Wonders of the World that puts tourism in Egypt is tourism in Giza on the top of the front page. The pyramids of Giza, which date around 25 centuries BC, are divided into 3 days, three kings of the Pharaonic state: The pyramid of Khufu is located 13 acres to the southwest, the pyramid of three other small pyramids.');

INSERT INTO trips
VALUES (2,'vally of whales (Giza)','Giza',null,'cultural',null,1,10,0,'available','vally of whales',null,null,null,null,800,1,'2021-08-01','Saturday, 1 Aug 2021','From 8:00 AM to 5:00 PM',3,'img/vally of whales.jpg','2','In the northern region of the North region, 10 beautiful structures were found. In the year 2005 AD, the Wadi Al-Hitan region was classified as a world heritage area and was chosen by UNESCO as the best world heritage area for bony whales.The whales can be seen and their importance not compromised.');

INSERT INTO trips
VALUES (3,'Saqqara step pyramid (Giza)','Giza',null,'cultural',null,1,10,0,'available','Saqqara step pyramid',null,null,null,null,250,1,'2021-08-12','Thursday, 12 Aug 2021','From 9:00 AM to 4:00 PM',3,'img/saqqara.jpg','3','The pyramid of Saqqara is famous for the pyramid of Djoser or the step pyramid in the Saqqara region, 30 km south of Cairo. Which dates back to the era of the ancient Pharaonic state. The area also includes a group of temples and monuments.');

INSERT INTO trips 
VALUES (4,'Saqqara step pyramid & Pyramids (Giza)','Giza',null,'cultural',null,2,10,0,'available','Saqqara step pyramid','Pyramids',null,null,null,400,1,'2021-08-25','Wednesday, 25 Aug 2021','From 9:00 AM to 4:00 PM',4,'img/PS.jpg','4','From 9:00 AM to 12:00 PM (Saqqara step pyramid) then From 1:00 PM to 4:00 PM (Pyramids)');

INSERT INTO trips 
VALUES (5,'Cairo Tower & Pyramids','Cairo','Giza',null,null,2,10,0,'available','Cairo Tower','Pyramids',null,null,null,450,1,'2021-09-06','Monday, 6 Sep 2021','From 9:00 AM to 6:00 PM',3,'img/P&T.jpg','5','From 9:00 AM to 12:00 PM (Pyramids , Giza) then From 1:00 PM to 6:00 PM (Cairo Tower , Cairo)');

INSERT INTO trips 
VALUES (6,'Egyption Museum & Pyramids','Cairo','Giza','cultural',null,2,10,0,'available','Egyptian Museum','Pyramids',null,null,null,400,1,'2021-10-03','Sunday, 3 Oct 2021','From 9:00 AM to 5:00 PM',5,'img/P&M.jpg','6','From 9:00 AM to 12:00 PM (Pyramids , Giza) then From 1:00 PM to 5:00 PM (Egyption Museum , Cairo)');

INSERT INTO trips 
VALUES (7,'Egyption Museum & Cairo Tower (Cairo)','Cairo',null,null,null,2,10,0,'available','Egyptian Museum','Cairo Tower',null,null,null,300,1,'2021-10-19','Tuesday,19 Oct 2021','From 9:00 AM to 7:00 PM ',3,'img/M&T.jpg','7','From 9:00 AM to 1:00 PM (Egyption Museum) then From 2:00 PM to 7:00 PM (Cairo Tower).');

INSERT INTO trips 
VALUES (8,'Cairo Tower (Cairo)','Cairo',null,'leisure',null,1,10,0,'available','Cairo Tower',null,null,null,null,200,1,'2021-11-05','Friday, 5 Nov 2021','From 10:00 AM to 7:00 PM',4,'img/tower.jpg','8','The Cairo Tower ("Al-Jazirah Tower") is a tower located in the Egyptian capital, Cairo, that was built between 1956 and 1961 of reinforced concrete in the design of the Egyptian lotus flower.One of the most prominent landmarks of Cairo is the Cairo Tower, which consists of 16 floors and the journey takes inside the elevator of the tower To reach its end 45 seconds to see when you stand on the top a complete panorama of Cairo.');

INSERT INTO trips 
VALUES (9,'Egyption Museum (Cairo)','Cairo',null,'cultural',null,1,10,0,'available','Egyptian Museum',null,null,null,null,200,1,'2021-11-29','Monday, 29 Nov 2021','From 9:00 AM to 5:00 PM',4,'img/egyption museum.jpg','9','The Egyptian Museum is one of the most famous international museums and one of the first museums in the world. , located in the Egyptian capital "Tahrir Square,Cairo" . Its establishment in 1835.Found in the tombs of the kings and the royal court of the middle family in Dahshur in 1894, the museum now houses the largest archaeological collection in the world that expresses all stages of ancient Egyptian history.');

INSERT INTO trips 
VALUES (10,'Qaitbay Castle (Alexandria)','Alexandria',null,'cultural',null,1,10,0,'available','Qaitbay Castle',null,null,null,null,350,1,'2021-07-30','Friday, 30 Jul 2021','From 9:00 AM to 5:00 PM',3,'img/trip2.jpg','10','Qaitbay Castle is located at the end of Pharos Island in the far west of Alexandria. It was built in the place of the ancient Lighthouse of Alexandria.This castle built in the year 882 AH and finished It was built in 884 AH.The reason for his interest in Alexandria was the large number of direct threats to Egypt from the Ottoman Empire, which threatened the entire Arab region.');

INSERT INTO trips 
VALUES (11,'New Alexandria Library (Alexandria)','Alexandria',null,'cultural',null,1,10,0,'available','New Alexandria Library',null,null,null,null,300,1,'2021-08-01','Saturday, 1 Aug 2021','From 10:00 AM to 6:00 PM',2,'img/alexlibrary.jpg','11','The New Bibliotheca Alexandrina is located in the Shatby area and is characterized by its large area and splendid design. The library includes many centers and libraries, including the Internet Archive, the Audio-Visual Materials Library, and others. It also includes many museums and a planetarium.');

INSERT INTO trips 
VALUES (12,'Aquarium Museum (Alexandria)','Alexandria',null,'cultural','leisure',1,10,0,'available','Aquarium Museum',null,null,null,null,400,1,'2021-08-25','Wednesday, 25 Aug 2021','From 12:00 PM to 5:00 PM',4,'img/aquaMusem.jpg','12','The Aquarium is located on Qaitbay Street, and includes many diverse marine animals and plants such as seashells, fish, turtles, plants and sponges that live in Egyptian lakes and seas in general and rare ones in particular.');

INSERT INTO trips 
VALUES (13,'Aquarium Museum & Qaitbay Castle (Alexandria)','Alexandria',null,'cultural',null,2,10,0,'available','Aquarium Museum','Qaitbay Castle',null,null,null,600,1,'2021-09-06','Monday, 6 Sep 2021','From 9:00 AM to 5:00 PM',4,'img/A&Q.jpg','13','From 9:00 AM to 12:00 PM (Qaitbay Castle) then From 1:00 PM to 5:00 PM (Aquarium Museum).');

INSERT INTO trips 
VALUES (14,'Cleopatra bath (Matroh)','Matroh',null,'leisure',null,1,10,0,'available','Cleopatra Bath',null,null,null,null,400,1,'2021-10-03','Sunday, 3 Oct 2021','From 10:00 AM to 5:00 PM',3,'img/celopatra.jpg','14','It is a huge rock closed from the top,and it has holes that allow sunlight to penetrate into it and warm the water inside that rock formation. This is in addition to the presence of openings on the side that allow the entry of water when the waves are movingIt is said that Queen Cleopatra used it for sunbathing and swimming or as a way to preserve her skin. The ruins of the queen"s palace were found on a high place opposite the bath.');

INSERT INTO trips 
VALUES (15,'Salt Cave (Matroh)','Matroh',null,'medical',null,1,10,0,'available','Salt Cave',null,null,null,null,600,1,'2021-07-30','Friday, 30 Jul 2021','From 1:00 PM to 7:00 PM',5,'img/salt.jpg','15','In the northern region of the North region, 10 beautiful structures were found. In the year 2005 AD, the Wadi Al-Hitan region was classified as a world heritage area and was chosen by UNESCO as the best world heritage area for bony whales.The whales can be seen and their importance not compromised.');

INSERT INTO trips 
VALUES (16,'Siwa Oasis (Matroh)','Matroh',null,'medical','leisure',1,10,0,'available','Siwa Oasis',null,null,null,null,1000,5,'2021-10-19','Tuesday, 19 Oct 2021 - Saturday, 23 Oct 2021','',5,'img/trip3.jpg','16','Siwa is an Egyptian oasis in the Western Desert. Siwa is famous for its medical tourism, as its sand provides natural elements suitable for alternative medicine purposes.Safari trips using four-wheel drive vehicles are among the favorite trips for visitors to the oasis.receives about 30,000 Egyptian and foreign tourists annually.Foreign and Arab sites ranked it among the 9 most isolated places on the planet.');

INSERT INTO trips 
VALUES (17,'Salt Cave & Cleopatra bath (Matroh)','Matroh',null,null,null,2,10,0,'available','Salt Cave','Cleopatra Bath',null,null,null,800,1,'2021-11-19','Monday, 19 Nov 2021','From 10:00 AM to 6:00 PM',4,'img/C&S.jpg','17','From 10:00 AM to 2:00 PM (Cleopatra bath) then From 3:00 PM to 6:00 PM (Salt Cave).');

INSERT INTO trips 
VALUES (18,'Karnak Temple (Luxor)','Luxor',null,'cultural',null,1,10,0,'available','Karnak Temple',null,null,null,null,450,1,'2021-07-29','Thursday, 29 Jul 2021','From 9:00 AM to 7:00 PM',3,'img/trip4.jpg','18','It is one of the oldest monuments in the world. It is preceded by a famous road known as the Rams Road, where there are miniature statues of rams on both sides.Every evening sound and light shows are held in the temple that explain to visitors the history of the temple in the era of the pharaohs.');

INSERT INTO trips 
VALUES (19,'Luxor Temple (Luxor)','Luxor',null,'cultural',null,1,10,0,'available','Luxor Temple',null,null,null,null,450,1,'2021-08-25','Wednesday, 25 Aug 2021','From 9:00 AM to 7:00 PM',3,'img/luxor temple.jpg','19','It is one of the most famous monuments in Luxor, and is located near the Karnak Temple. It is characterized by the two statues of Ramses II on both sides of the temple, and two large obelisks at the entrance, along with many valuable papyrus columns and distinctive stones.');

INSERT INTO trips 
VALUES (20,'Deir el-Bahari (Luxor)','Luxor',null,'cultural',null,1,10,0,'available','Deir el-Bahari',null,null,null,null,500,1,'2021-09-06','Monday, 6 Sep 2021','From 9:00 AM to 7:00 PM',4,'img/Deir el-Bahari.jpg','20','Deir el-Bahari is famous for its impressive collection of statues of Queen Hatshepsut, who ruled Egypt during the era of the pharaohs, in addition to the presence of a group of pharaonic temples and tombs overlooking the western side of the Nile.');

INSERT INTO trips 
VALUES (21,'Luxor Temple & Karnak Temple & Deir el-Bahari (Luxor)','Luxor',null,'cultural',null,3,10,0,'available','Luxor Temple','Karnak Temple','Deir el-Bahari',null,null,1000,1,'2021-10-03','Sunday, 3 Oct 2021','From 9:00 AM to 7:00 PM ',4,'img/D&L&K.jpg','21','From 9:00 AM to 12:00 PM (Luxor Temple) then From 1:00 PM to 3:00 PM (Deir el-Bahari) then From 4:00 PM to 7:00 PM (Deir el-Bahari).');

INSERT INTO trips 
VALUES (22,'Philae Temple (Aswan)','Aswan',null,'cultural',null,1,10,0,'available','Philae Temple',null,null,null,null,400,1,'2021-07-30','Friday, 30 Jul 2021','From 10:00 AM to 6:00 PM',3,'img/Philae Temple.jpg','22','The temple located in the city of Aswan is one of the most famous tourist attractions in the world, and it can be reached by Nile boats and enjoy the scenic views.This museum is famous for its walls full of charming drawings and huge pharaonic columns.');

INSERT INTO trips 
VALUES (23,'Kom Ombo Temple (Aswan)','Aswan',null,'cultural',null,1,10,0,'available','Kom Ombo Temple',null,null,null,null,450,1,'2021-08-12','Thursday, 12 Aug 2021','From 10:00 AM to 7:00 PM',3,'img/Kom Ombo Temple.jpg','23','Kom Ombo is located on the banks of the Nile in Aswan, and is also characterized by halls with large columns, and statues that are sacred to the Pharaohs.');

INSERT INTO trips 
VALUES (24,'Nubia Museum (Aswan)','Aswan',null,'cultural',null,1,10,0,'available','Nubia Museum',null,null,null,null,400,1,'2021-09-06','Tuesday, 6 Sep 2021','From 9:00 AM to 6:00 PM',2,'img/Nubia Museum.jpg','24','Deir el-Bahari is famous for its impressive collection of statues of Queen Hatshepsut, who ruled Egypt during the era of the pharaohs, in addition to the presence of a group of pharaonic temples and tombs overlooking the western side of the Nile.');

INSERT INTO trips 
VALUES (25,'Philae Temple & Kom Ombo Temple & Nubia Museum (Aswan)','Aswan',null,'cultural',null,3,10,0,'available','Philae Temple','Kom Ombo Temple','Nubia Museum',null,null,1000,1,'2021-10-04','Monday, 4 Oct 2021','From 9:00 AM to 7:00 PM',4,'img/P&K&N.jpg','25','From 9:00 AM to 12:00 PM (Philae Temple) then From 1:00 PM to 3:00 PM (Kom Ombo Temple) then From 4:00 PM to 7:00 PM (Nubia Museum).');

INSERT INTO trips 
VALUES (26,'Dahab (Sinai)','Sinai',null,'leisure',null,1,10,0,'available','Dahab',null,null,null,null,1000,4,'2021-07-31','Saturday, 31 Jul 2021- Tuesday, 3 Aug 2021','',4,'img/dahab.jpg','26','Dahab is characterized by the magnificent coral reefs, which was named by this name due to the sun?s rays shining on the sand, giving the view of Dahab and attracting attention, as Dahab is a famous area in the south of Sina. The Rich Blues) in Dahab, as this logic will make you feel the wonderful Bedouin life, drink the distinctive Bedouin tea, and go to the Blue Lagoon area to relax and enjoy spending a special time in Dahab.');

INSERT INTO trips 
VALUES (27,'Sharm El Sheikh (Sinai)','Sinai',null,'leisure',null,1,10,0,'available','Sharm El Sheikh',null,null,null,null,1200,5,'2021-07-28','Wednesday, 28 Jul 2021- Sunday, 2 Aug 2021','',5,'img/Sharm El Sheikh.jpg','27','Sharm El Sheikh is an Egyptian tourist city, located at the confluence of the Gulfs of Aqaba and Suez on the Red Sea coast. The city includes tourist resorts frequented by visitors from all over the world, and is famous for being one of the world"s diving centers that attracts amateurs and professionals of this sport.');

INSERT INTO trips 
VALUES (28,'Sharm El Sheikh & Dahab (Sinai)','Sinai',null,'leisure',null,2,10,0,'available','Sharm El Sheikh','Dahab',null,null,null,1900,7,'2021-08-25','Wednesday, 25 Aug 2021- Tuesday 1 Oct 2021','',5,'img/D&S.jpg','28','Sharm El Sheikh is an Egyptian tourist city.The city includes tourist resorts frequented by visitors from all over the world, and is famous for being one of the world"s diving centers that attracts amateurs.Dahab is characterized by the magnificent coral reefs.go to the Blue Lagoon area to relax and enjoy spending a special time in Dahab.');

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-10  1:15:40
