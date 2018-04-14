CREATE DATABASE  IF NOT EXISTS `master` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `master`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: master
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor` (
  `vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) NOT NULL,
  `street_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip_code` int(11) DEFAULT NULL,
  `phone_no` varchar(255) NOT NULL,
  `company_poc` varchar(255) NOT NULL,
  PRIMARY KEY (`vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Marquardt-Borer','57002 Old Shore Terrace','Houston','TX',77228,'(713) 8581019','Elvina Flux'),(2,'Reichel Group','041 Straubel Lane','Whittier','CA',90605,'(626) 9168157','Christiana Gonnely'),(3,'Kozey, Nikolaus and Kuhic','42 Cottonwood Crossing','Fort Worth','TX',76115,'(682) 5595064','Thaxter Amphlett'),(4,'Rice, Williamson and Hayes','5 Huxley Point','Los Angeles','CA',90055,'(213) 7659402','Row Kybbye'),(5,'Rowe, Deckow and Legros','7134 Birchwood Circle','Indianapolis','IN',46247,'(317) 9103674','Idelle Quemby'),(6,'Green-Stark','658 Forest Plaza','Charlotte','NC',28225,'(704) 9416797','Hale Oblein'),(7,'O\'Kon and Sons','608 Delaware Terrace','Panama City','FL',32405,'(850) 5877201','Joeann Roseburgh'),(8,'Batz Group','0758 Mayer Alley','El Paso','TX',79968,'(915) 4119505','Tanner Durbyn'),(9,'Purdy-Senger','2 Morningstar Junction','Portsmouth','VA',23705,'(757) 8455311','Dorella Lanchbury'),(10,'Gutmann, Kassulke and Quigley','34527 Atwood Terrace','Decatur','GA',30033,'(770) 9037207','Waite Leyninye'),(11,'Stroman, Johnson and O\'Kon','9 Dayton Crossing','San Diego','CA',92176,'(619) 3539360','Chloe Savile'),(12,'King-Jast','252 Westerfield Plaza','Salt Lake City','UT',84130,'(801) 1083340','Jackelyn Gladdifh'),(13,'Kreiger-Johnston','58 7th Hill','Waterbury','CT',6726,'(203) 9740109','Bernete Tollemache'),(14,'Satterfield-McClure','65679 Moose Court','Dearborn','MI',48126,'(313) 2876859','Kellby Neeson'),(15,'Kiehn-Larson','9 Derek Alley','Little Rock','AR',72222,'(501) 9441203','Melessa Hollindale'),(16,'Zboncak-Hudson','92 Northview Lane','Minneapolis','MN',55441,'(952) 2414731','Shirley Venes'),(17,'Schaefer, Hettinger and Hartmann','497 Reindahl Parkway','Arlington','VA',22244,'(571) 6195435','Ardenia Olenchikov'),(18,'Ullrich-Reilly','8 Kingsford Place','Whittier','CA',90610,'(562) 1972424','Powell Bolles'),(19,'Mertz Group','09 Elka Road','Punta Gorda','FL',33982,'(941) 9784358','Bucky Askie'),(20,'Kozey Group','26898 Ilene Hill','Tuscaloosa','AL',35487,'(205) 5713501','Derril Zotto'),(21,'Fisher, Cassin and Moore','1190 Bonner Street','Buffalo','NY',14269,'(716) 7608851','Sibby Firk'),(22,'Schoen, Walter and Abernathy','75949 Rowland Court','Las Vegas','NV',89193,'(702) 2573529','Allis Luberto'),(23,'Beatty LLC','07 Farragut Avenue','Pocatello','ID',83206,'(208) 6796131','Aprilette Barnsdall'),(24,'Lemke, Dibbert and Beer','0539 Reindahl Crossing','Fort Worth','TX',76105,'(682) 1120729','Jennette Artz'),(25,'Greenfelder, Quigley and Ernser','0092 Veith Pass','Erie','PA',16534,'(814) 9402493','Halette Klimkiewich'),(26,'Schaefer and Sons','64950 Karstens Point','Fort Worth','TX',76129,'(817) 9304290','Oralle Ellen'),(27,'Ankunding, Abernathy and Kirlin','52576 Declaration Alley','Fairbanks','AK',99709,'(907) 1122111','Rube Niven'),(28,'Mann LLC','165 Nancy Drive','Oklahoma City','OK',73167,'(405) 3525529','Fawne Hazley'),(29,'Nienow Group','1 Hansons Terrace','Detroit','MI',48275,'(313) 3536002','Isabel Bollom'),(30,'Ritchie, Quitzon and Graham','71 Dottie Alley','Santa Rosa','CA',95405,'(707) 7378953','Trudey Brampton'),(31,'Jerde and Sons','667 Rowland Park','Cheyenne','WY',82007,'(307) 7480270','Merla Weedall'),(32,'Jerde and Sons','66275 Sullivan Road','Detroit','MI',48275,'(313) 7735623','Rori Wesley'),(33,'Torphy, Schiller and Sawayn','9 Harbort Terrace','Boston','MA',2109,'(617) 7526557','Bren Sproat'),(34,'Dickens-Hauck','82656 Carey Junction','El Paso','TX',88584,'(915) 2234617','Kimball Mawd'),(35,'Langworth and Sons','7587 Spenser Lane','Northridge','CA',91328,'(818) 9950238','Modestine Catterill'),(36,'Schaefer-Klein','494 Raven Trail','Saint Petersburg','FL',33710,'(727) 2863743','Nikolos Aleksankin'),(37,'Botsford, Bednar and Batz','1564 Arkansas Avenue','Fort Wayne','IN',46825,'(260) 5662023','Ricki Rendle'),(38,'Pfeffer-Connelly','7 Oakridge Parkway','New York City','NY',10105,'(212) 2538867','Evonne Bril'),(39,'Koch, Harber and Reichert','3 Di Loreto Lane','New York City','NY',10125,'(212) 7524097','Rriocard Swayland'),(40,'O\'Connell Inc','7547 Northport Park','Austin','TX',78744,'(512) 2203320','Darrick Frend'),(41,'Friesen and Sons','18129 Gulseth Junction','Austin','TX',78721,'(512) 3352284','Virge Gladdish'),(42,'Wolf-Mayer','2207 Orin Way','Mesa','AZ',85215,'(480) 2091997','Christoph Mary'),(43,'Leffler Group','71555 Vahlen Road','Los Angeles','CA',90010,'(213) 6799290','Nolie Gilvary'),(44,'Klein-Gorczany','9 Di Loreto Pass','Louisville','KY',40287,'(502) 4216417','Alexandr Castanie'),(45,'Kub-Davis','78034 Bluejay Plaza','Aiken','SC',29805,'(803) 9735087','Genevieve Richard'),(46,'Rodriguez, Fahey and Torphy','482 Cardinal Point','Fort Lauderdale','FL',33330,'(954) 4932729','Bili Brewerton'),(47,'Schuster-Pouros','9420 Browning Way','Sacramento','CA',94263,'(916) 6848530','Jarred Mepsted'),(48,'Ryan-Metz','3207 Sundown Court','Oakland','CA',94622,'(510) 5423136','Laird Monger'),(49,'Hane-Carroll','9773 Logan Circle','Phoenix','AZ',85083,'(602) 7340306','Bobina Sanney'),(50,'Metz-Marks','32847 Graedel Lane','Wichita','KS',67230,'(316) 3572957','Tallie Patillo'),(51,'Schamberger, Parisian and Kunze','02 Maryland Drive','Staten Island','NY',10305,'(718) 1262874','Ellwood Stellman'),(52,'Gerlach-Raynor','779 Esch Avenue','San Francisco','CA',94154,'(415) 1593464','Clarence Crosseland'),(53,'Emard-Considine','7 Ridge Oak Avenue','Virginia Beach','VA',23471,'(757) 5895954','Sidonia Goodreid'),(54,'Gibson and Sons','60018 Iowa Alley','Midland','MI',48670,'(989) 4879070','Fredelia Gavahan'),(55,'Legros, Aufderhar and Rodriguez','95 Lien Parkway','Raleigh','NC',27610,'(919) 6514452','Asa Kernermann'),(56,'Reichel, Price and Watsica','64685 Barnett Place','Jackson','MS',39210,'(601) 9971778','Ellsworth Triggol'),(57,'Weimann-Kiehn','60 Buell Hill','Columbia','SC',29225,'(803) 2396505','Tammy Paolini'),(58,'Hegmann, Schultz and Auer','24165 Milwaukee Way','Columbus','OH',43210,'(614) 5904719','Madelaine Meyer'),(59,'Lockman, Kutch and Gaylord','25747 Scott Avenue','Tampa','FL',33647,'(813) 9583991','Hartley Maiklem'),(60,'Oberbrunner LLC','6834 Hoffman Park','Springfield','OH',45505,'(937) 8124785','Allix McLucas'),(61,'Runte, Simonis and Wunsch','33 1st Plaza','Saint Paul','MN',55166,'(651) 1141344','Renato Sweedland'),(62,'Leannon LLC','1361 Golf Course Center','Milwaukee','WI',53234,'(414) 6135330','Fabien Rounsefull'),(63,'Zieme and Sons','2 Judy Junction','Sarasota','FL',34276,'(941) 2340091','Glad Strase'),(64,'Macejkovic, Nicolas and Cartwright','339 Hooker Center','Tucson','AZ',85725,'(520) 4926178','Janene Badrock'),(65,'Mraz-McKenzie','85 Fuller Hill','Oklahoma City','OK',73124,'(405) 5186627','Yovonnda Ragsdale'),(66,'Tremblay, Davis and Stanton','36452 American Ash Parkway','Columbus','OH',43231,'(614) 7073438','Margot Burgoyne'),(67,'Abernathy LLC','4783 Fieldstone Way','San Antonio','TX',78230,'(830) 8123548','Westley Springham'),(68,'Koss, Balistreri and Conroy','92 Eagan Plaza','Philadelphia','PA',19131,'(215) 8096514','Bev Quodling'),(69,'Bergstrom and Sons','7373 Fallview Street','Erie','PA',16510,'(814) 3679914','Barbe Reaney'),(70,'Kuphal and Sons','382 Onsgard Trail','El Paso','TX',88589,'(915) 5542782','Ruben Nettleship'),(71,'Wiegand, Kreiger and Kuhn','758 Farmco Junction','Houston','TX',77020,'(281) 9298128','Jackie Hedau'),(72,'Ruecker-Lubowitz','27 Helena Lane','Huntington','WV',25709,'(304) 7284632','Gerald Cordingly'),(73,'Kessler, Koepp and Olson','565 Gulseth Junction','Tucson','AZ',85715,'(520) 6488223','Cynde Merrifield'),(74,'Koch-Lang','8713 Everett Circle','Fort Wayne','IN',46814,'(260) 5504504','Griffie Mixter'),(75,'Dibbert, Ledner and Borer','852 Brentwood Crossing','Syracuse','NY',13251,'(315) 2108518','Dallis Danis'),(76,'Stark-Jaskolski','24 Wayridge Center','Clearwater','FL',33758,'(813) 4952633','Eamon Calloway'),(77,'Considine Group','15 Stuart Parkway','Sacramento','CA',94263,'(916) 1801488','Ulberto Gilardengo'),(78,'Glover LLC','331 Upham Street','San Antonio','TX',78265,'(210) 1914802','Coletta Thomasson'),(79,'Schiller, Buckridge and Rogahn','4 Claremont Pass','Spokane','WA',99205,'(509) 1151630','Karalee Kowal'),(80,'Halvorson-O\'Hara','5922 Summit Terrace','Bethlehem','PA',18018,'(610) 9118441','Malinde Mincini'),(81,'Haley-Keebler','92 Kedzie Place','Memphis','TN',38168,'(901) 7047705','Cecilio Cocci'),(82,'Thompson LLC','661 Magdeline Hill','Memphis','TN',38150,'(901) 4547514','Audrie Laban'),(83,'Zulauf, Johnson and Mertz','43878 Everett Place','Plano','TX',75074,'(469) 6557102','Sascha Clapperton'),(84,'Cremin Group','7643 Eagan Junction','Washington','DC',20029,'(202) 2136057','Pancho Bouchard'),(85,'Jakubowski-Kutch','6 Rockefeller Park','Scottsdale','AZ',85255,'(602) 3719028','Prince Allberry'),(86,'Ullrich, Hermiston and Feest','10 Declaration Street','Phoenix','AZ',85020,'(602) 2686651','Claudette Cosans'),(87,'Ward, Koss and Okuneva','1365 Independence Road','Wilkes Barre','PA',18763,'(570) 1554764','Lyssa Kestian'),(88,'Emard, Boyle and Stoltenberg','045 Emmet Hill','Fort Myers','FL',33906,'(239) 1025055','Barny Tremeer'),(89,'Goyette-Russel','87228 Homewood Park','Berkeley','CA',94705,'(510) 7512367','Gertie Goudie'),(90,'Gleichner and Sons','7 Stang Center','Minneapolis','MN',55412,'(651) 3494129','Merrie Rilings'),(91,'Bergstrom-Hodkiewicz','1 Mcguire Crossing','Kansas City','MO',64142,'(816) 6063619','Sherwood Buttery'),(92,'Haley-Kassulke','9750 Meadow Valley Road','Valley Forge','PA',19495,'(484) 1299866','Giovanni Hartgill'),(93,'Feest, Hessel and Medhurst','18 Thackeray Drive','Jacksonville','FL',32236,'(904) 1480892','Timothee Linnane'),(94,'Toy-Bogisich','90 Lakeland Plaza','El Paso','TX',88584,'(915) 4524765','Lavinia Tours'),(95,'Beatty-Morar','9 Veith Crossing','Jacksonville','FL',32277,'(904) 2566048','Hussein Hearsum'),(96,'Hegmann and Sons','412 Superior Center','Bronx','NY',10469,'(917) 7165350','Janelle Cocher'),(97,'Morissette Group','0 Texas Hill','Washington','DC',20268,'(202) 4779984','Devlin McGlew'),(98,'Welch-Dibbert','189 Porter Plaza','Bakersfield','CA',93386,'(661) 7845247','Alon McAleese'),(99,'Hermiston-Rippin','36 Esch Road','Washington','DC',20088,'(202) 8024733','Meggi Bottelstone'),(100,'Kub LLC','16435 Northview Circle','Detroit','MI',48217,'(313) 5701312','Saudra Bowerman'),(101,'Rice, Cronin and Goodwin','49976 Mockingbird Junction','Dallas','TX',75310,'(214) 4012553','Lorry Muslim'),(102,'Littel, Raynor and Botsford','6339 Westridge Road','Olympia','WA',98506,'(360) 8546866','Penelope Galier'),(103,'Donnelly, Feil and VonRueden','60190 Lukken Way','Aiken','SC',29805,'(803) 7433160','Joice Buer'),(104,'Pouros, MacGyver and Runte','56467 Logan Alley','Los Angeles','CA',90094,'(323) 2822518','Roch Mantle'),(105,'Johnston-Wunsch','46941 Lake View Road','Ogden','UT',84403,'(801) 1465996','Hynda Carthy'),(106,'Deckow Group','29862 Badeau Court','Flint','MI',48505,'(810) 7027477','Bond Davis'),(107,'Jerde-Hirthe','2570 Grasskamp Center','Evansville','IN',47712,'(812) 6828709','Geneva Sutterby'),(108,'Feeney, Thompson and Yundt','72 Schmedeman Street','Miami','FL',33261,'(305) 6319061','Catlaina Ogelsby'),(109,'Kris, Olson and Zulauf','5955 Sunnyside Circle','Dallas','TX',75379,'(214) 9596872','Rurik Sawkins'),(110,'Stiedemann Group','22206 Melody Crossing','Littleton','CO',80126,'(303) 1265474','Grata Guerrieri'),(111,'Hilpert-Rippin','491 Dixon Lane','El Paso','TX',88519,'(915) 9032047','Robinett Evensden'),(112,'Bogisich, Cassin and Orn','58 Forest Dale Hill','Johnson City','TN',37605,'(423) 9912871','Terence Tees'),(113,'O\'Conner-Kemmer','611 Sommers Crossing','Fort Wayne','IN',46852,'(260) 9905737','Chen Van Son'),(114,'Considine Group','04 Fair Oaks Avenue','Indianapolis','IN',46231,'(317) 2200142','Melosa Burborough'),(115,'Kulas LLC','7862 Grayhawk Lane','Winston Salem','NC',27105,'(336) 3790517','Chiarra Micallef'),(116,'Kessler-Bernier','89 Charing Cross Junction','Evansville','IN',47747,'(812) 1141071','Sebastien Barabich'),(117,'Swift, Kub and Ward','328 Corry Plaza','Amarillo','TX',79105,'(806) 2899205','Manny Vanichkov'),(118,'Roberts-Schaefer','3 Huxley Crossing','Cleveland','OH',44197,'(216) 9890332','Thornie Fassbindler'),(119,'Heller Inc','9 Blaine Drive','El Paso','TX',88558,'(915) 6208687','Baxie Guillem'),(120,'Rodriguez-Kunde','5 Mccormick Avenue','Austin','TX',78789,'(512) 7859440','Chickie Lemary'),(121,'Ryan Inc','41 Southridge Court','Cincinnati','OH',45249,'(513) 6220387','Chastity Martinon'),(122,'Prosacco Inc','01 Mitchell Place','Clearwater','FL',34629,'(727) 9674382','Torr Minors'),(123,'Hudson, Reinger and Marvin','5279 Mayfield Crossing','Des Moines','IA',50362,'(515) 3537618','Alain Howard - Gater'),(124,'Homenick-Torphy','00294 Cardinal Alley','Akron','OH',44329,'(330) 5839103','Hertha Rew'),(125,'Dietrich LLC','6493 Monterey Hill','Saint Paul','MN',55172,'(651) 4440356','John MacGuffie'),(126,'Rogahn, Wuckert and Hessel','95 Dakota Place','Alexandria','VA',22309,'(703) 1245965','Bell Paquet'),(127,'Walsh and Sons','99 Mcguire Lane','Long Beach','CA',90840,'(562) 3387800','Lotte Marcu'),(128,'Wunsch-Emmerich','644 1st Pass','Tampa','FL',33633,'(813) 5743456','Alica Youel'),(129,'O\'Kon, Labadie and Huel','42690 Tennessee Crossing','Salt Lake City','UT',84120,'(801) 1000595','Cordell Mackieson'),(130,'Jast-Runolfsson','4 Pond Crossing','Los Angeles','CA',90189,'(213) 1888497','Edith Petren'),(131,'Schroeder, Wiegand and Crona','219 Anhalt Plaza','Monticello','MN',55565,'(763) 1629343','Corri Pawden'),(132,'Beatty-Harber','88105 Birchwood Parkway','Knoxville','TN',37914,'(865) 5827574','Brendan Clemits'),(133,'Crooks Inc','4194 Bellgrove Parkway','Tulsa','OK',74184,'(918) 2349946','Hillie Bellow'),(134,'Schroeder, Predovic and Gerhold','38045 Fair Oaks Park','Arlington','VA',22234,'(571) 8302045','Kele Alpe'),(135,'Reinger, McLaughlin and Hilll','7432 Express Trail','New Orleans','LA',70165,'(504) 5340414','Rickert Poytress'),(136,'Hansen-Hane','70800 Clove Place','Vancouver','WA',98687,'(360) 1312113','Teodoor Albrighton'),(137,'Ruecker-Bradtke','40 Marquette Junction','North Little Rock','AR',72199,'(501) 9290341','Daffie Boynton'),(138,'Lubowitz LLC','4 Cardinal Alley','Austin','TX',78749,'(512) 8404121','Odelinda Antonellini'),(139,'Effertz, Stracke and Ward','0 Hanover Terrace','Kansas City','MO',64125,'(816) 8122510','Fifine Floch'),(140,'Schaefer and Sons','39 Petterle Place','San Antonio','TX',78250,'(210) 9133748','Jaime Layland'),(141,'Feil-Klocko','36 Ryan Point','Montgomery','AL',36177,'(334) 8516063','Evvie Nozzolinii'),(142,'Macejkovic Group','83960 Larry Center','Sandy','UT',84093,'(801) 2067140','Fernanda Morgen'),(143,'Rodriguez, Swaniawski and Bosco','21 Brentwood Point','Houston','TX',77020,'(713) 7146936','Byram Tallet'),(144,'Weber-Jakubowski','6978 Utah Crossing','Glendale','AZ',85311,'(602) 1264318','Bradney Pilfold'),(145,'Balistreri LLC','0118 Summit Plaza','Shreveport','LA',71151,'(318) 2358338','Morganne Jordeson'),(146,'Pacocha-Weber','2 Prairie Rose Drive','Lawrenceville','GA',30045,'(770) 3197860','Katine Willgoss'),(147,'Pacocha, Wehner and Prohaska','918 Anderson Street','Dallas','TX',75260,'(214) 6420289','Davita Culp'),(148,'Walsh-Rath','34772 Village Point','Amarillo','TX',79165,'(806) 8806636','Athena Kedslie'),(149,'Feeney Inc','1 Carey Way','Daytona Beach','FL',32118,'(407) 6724420','Charlean Andreopolos'),(150,'Tillman, Greenfelder and Gusikowski','848 Florence Road','Corpus Christi','TX',78415,'(361) 4628424','Aidan Merigot'),(151,'Altenwerth Group','14248 Larry Avenue','Carlsbad','CA',92013,'(760) 8471830','Salmon Holdren'),(152,'Feeney, Hilll and Rolfson','0 Dexter Avenue','Sarasota','FL',34276,'(941) 9713571','Field Tireman'),(153,'Bailey-Leannon','943 Porter Plaza','North Hollywood','CA',91606,'(818) 4767313','Guglielmo Jeffcock'),(154,'Auer-Roob','62818 Melody Court','Monticello','MN',55590,'(763) 5405539','Cass Franzini'),(155,'Mertz, Cartwright and Carroll','52141 Farmco Crossing','Akron','OH',44305,'(330) 6545936','Beverly Gerrard'),(156,'McKenzie Inc','29734 Pine View Plaza','Alexandria','LA',71307,'(318) 7583908','Aurilia Sworn'),(157,'Anderson-Bruen','42 Walton Alley','Beaumont','TX',77713,'(409) 5963932','Leann Chaudhry'),(158,'D\'Amore-Emmerich','31280 Lerdahl Pass','Columbus','OH',43240,'(740) 9248531','Octavius Blinerman'),(159,'Hahn, Kunde and Roob','784 Forster Court','Ridgely','MD',21684,'(410) 8452339','Clerkclaude Nerheny'),(160,'Pagac LLC','2151 Bayside Street','Richmond','VA',23208,'(804) 8627371','Fleurette Plumridge'),(161,'Wehner-Schmeler','527 Eastwood Parkway','Jackson','MS',39210,'(601) 4478232','Tabbie Warhurst'),(162,'Larson, Bartoletti and Daniel','7 Cordelia Crossing','Temple','TX',76505,'(254) 5383799','Ephraim Clemmett'),(163,'Dare LLC','97013 International Junction','Young America','MN',55573,'(952) 7589996','Lenora Bortolozzi'),(164,'Klocko-Rau','08313 Commercial Way','Lehigh Acres','FL',33972,'(239) 4632743','Dagmar Hutfield'),(165,'Jakubowski LLC','5394 Northport Hill','Birmingham','AL',35225,'(205) 7091345','Vanni Kuhndel'),(166,'Lindgren and Sons','047 Knutson Pass','Port Saint Lucie','FL',34985,'(772) 4685287','Pacorro Cressar'),(167,'Hodkiewicz-Klein','34 Lunder Lane','Winston Salem','NC',27116,'(336) 9482815','Donielle Endley'),(168,'Glover-Will','253 West Parkway','Shawnee Mission','KS',66220,'(913) 9893237','Ker Brognot'),(169,'O\'Conner-Sporer','961 Prentice Street','Des Moines','IA',50981,'(515) 5197624','Nikola Libbis'),(170,'Pollich, Koss and Feeney','2 Bashford Plaza','Houston','TX',77065,'(713) 5479783','Winnie Falkous'),(171,'Ferry-Stanton','87 Nobel Court','Orlando','FL',32868,'(407) 7957276','Lambert Sloegrave'),(172,'Nicolas, Kassulke and Kirlin','5 Burning Wood Point','New York City','NY',10203,'(212) 3076151','Mikael McKinn'),(173,'Gerhold-Jaskolski','3 Ilene Center','Las Vegas','NV',89105,'(702) 2725105','Bellina Fancet'),(174,'Mills-Lesch','1 Prentice Pass','San Antonio','TX',78215,'(210) 9421504','Tymothy Kolodziejski'),(175,'Bauch-Quitzon','093 Kings Street','Charlotte','NC',28289,'(704) 6512059','Lauraine Simonsen'),(176,'Rau-Balistreri','178 Sutteridge Place','Washington','DC',20404,'(202) 6788904','Dagmar Kibbel'),(177,'Lindgren-Stoltenberg','123 Hudson Trail','Gainesville','FL',32627,'(352) 6738692','Bevin Quickenden'),(178,'Hand-Shields','6746 Scoville Point','Atlanta','GA',30380,'(404) 5857559','Candide Lucius'),(179,'Mayer Group','83344 Bowman Drive','Houston','TX',77010,'(832) 7487447','Katherine Daice'),(180,'Murray-Shields','7 Coleman Place','Houston','TX',77223,'(713) 3134151','Gilbert Vaisey'),(181,'Lesch-Bartoletti','5 Lawn Road','Odessa','TX',79769,'(432) 1165257','Sergei Vasser'),(182,'Reichert, Sipes and Boyer','15231 Crest Line Way','Dallas','TX',75367,'(214) 6806377','Merrile Mattocks'),(183,'Shields, Kohler and Hansen','2622 8th Parkway','Santa Cruz','CA',95064,'(831) 4450460','Lonee Sauniere'),(184,'Schinner-Harris','63 Namekagon Pass','Pompano Beach','FL',33064,'(561) 9099378','Dodi Filchagin'),(185,'Douglas-Kuphal','1977 Talmadge Way','Saint Petersburg','FL',33731,'(727) 2662916','Glen Lemmens'),(186,'Glover, Lesch and Boehm','0920 Mallory Way','Lima','OH',45807,'(419) 4665927','Winfield Gronno'),(187,'Schiller, Raynor and Shanahan','638 Onsgard Crossing','Miami','FL',33169,'(786) 4803873','Larissa Girardot'),(188,'Zulauf Group','6 Blackbird Junction','Akron','OH',44310,'(330) 1984547','Trumann Ashplant'),(189,'D\'Amore, Lind and Ferry','09 Acker Lane','Washington','DC',20319,'(202) 5231569','Nicolina Lambswood'),(190,'Purdy, Bartoletti and Bednar','74 Victoria Avenue','Durham','NC',27705,'(919) 7343173','Tiff Coneybeare'),(191,'Botsford Group','28 Morrow Avenue','Lansing','MI',48901,'(517) 7827428','Gilda Gribble'),(192,'Marks, Denesik and Champlin','2 Melody Park','Fort Wayne','IN',46896,'(260) 1403565','Vonnie Stickel'),(193,'Pouros Inc','88 Duke Court','Honolulu','HI',96820,'(808) 3622688','Genni Van den Dael'),(194,'Pacocha-McLaughlin','524 Dapin Hill','Jacksonville','FL',32230,'(904) 7078092','Bartolomeo Andriesse'),(195,'Hackett, Jones and Hermann','51980 Clemons Center','Stamford','CT',6922,'(203) 8628431','Sharline Delyth'),(196,'Tremblay-Larkin','35 Bluejay Park','Lexington','KY',40596,'(859) 5563339','Sarajane Stollen'),(197,'Prosacco Group','2406 Eastlawn Place','Stockton','CA',95219,'(209) 6683556','Claudianus Cassedy'),(198,'Bailey-Wehner','6796 Vahlen Junction','San Antonio','TX',78296,'(210) 9834529','Nathaniel Stivens'),(199,'Osinski Inc','147 Northland Point','Huntington','WV',25721,'(304) 2112785','Tamarah Brekonridge'),(200,'Maggio Inc','1 Carey Trail','Boston','MA',21195,'(978) 3015193','Wilhelmina Billam');
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-12 19:34:58
