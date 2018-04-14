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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `customer_id` int(11) DEFAULT NULL,
  `first` text,
  `last` text,
  `phone_no` text,
  `street_name` text,
  `state` text,
  `zip_code` int(11) DEFAULT NULL,
  `city` text,
  `email` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Isac','Bouzan','(763) 6167696','8454 Summerview Place','MN',55598,'Loretto','ibouzan0@xinhuanet.com'),(2,'Rayshell','Gracewood','(772) 5176064','3 Swallow Road','FL',34985,'Port Saint Lucie','rgracewood1@google.com'),(3,'Francis','Crewther','(773) 4506840','24382 Johnson Road','IL',60657,'Chicago','fcrewther2@tinyurl.com'),(4,'Lukas','Tanswell','(940) 6584197','72384 Burning Wood Point','TX',76305,'Wichita Falls','ltanswell3@europa.eu'),(5,'Ninette','Hessel','(206) 2233414','671 Erie Pass','WA',98042,'Kent','nhessel4@samsung.com'),(6,'Aurlie','Schultheiss','(608) 4935221','83525 Delladonna Lane','WI',53726,'Madison','aschultheiss5@newyorker.com'),(7,'Ebeneser','O\'Sesnane','(706) 2824189','9 Golf Court','GA',30905,'Augusta','eosesnane6@prnewswire.com'),(8,'Bastien','Bierman','(813) 8652488','72 Lerdahl Court','FL',33620,'Tampa','bbierman7@taobao.com'),(9,'Adolphe','Holleran','(317) 6389859','182 New Castle Avenue','IN',46254,'Indianapolis','aholleran8@wisc.edu'),(10,'Midge','Sket','(713) 2644468','31511 Arrowood Pass','TX',77015,'Houston','msket9@de.vu'),(11,'Dory','Stoggell','(540) 3694901','622 Stang Junction','VA',24009,'Roanoke','dstoggella@admin.ch'),(12,'Lynde','Keedy','(909) 3139538','8 Maple Circle','CA',92424,'San Bernardino','lkeedyb@mlb.com'),(13,'Edyth','Charlwood','(323) 8929277','7 Dwight Crossing','CA',90060,'Los Angeles','echarlwoodc@hexun.com'),(14,'Jillayne','Dupoy','(937) 4834633','312 Shoshone Way','OH',45408,'Dayton','jdupoyd@ebay.com'),(15,'Bessie','Sausman','(512) 2182887','41 Kipling Court','TX',78744,'Austin','bsausmane@sourceforge.net'),(16,'Rickert','Flowerden','(912) 6720223','1 Garrison Junction','GA',31422,'Savannah','rflowerdenf@mapy.cz'),(17,'Donetta','Brawley','(941) 5198320','5 Pearson Plaza','FL',34135,'Bonita Springs','dbrawleyg@topsy.com'),(18,'Sansone','Lyptrade','(323) 1037542','6445 Beilfuss Road','CA',90005,'Los Angeles','slyptradeh@newyorker.com'),(19,'Norrie','Sivell','(585) 9415438','067 Londonderry Place','NY',14652,'Rochester','nsivelli@statcounter.com'),(20,'Kelci','Jepp','(516) 4975081','017 Golf Road','NY',11044,'New Hyde Park','kjeppj@wordpress.org'),(21,'Andrea','Lardier','(412) 5442700','348 Lakewood Gardens Park','PA',15286,'Pittsburgh','alardierk@cmu.edu'),(22,'Sandor','Abelovitz','(919) 5561908','4 Crownhardt Center','NC',27635,'Raleigh','sabelovitzl@multiply.com'),(23,'Gayelord','Inder','(302) 1139072','3926 Superior Way','DE',19725,'Newark','ginderm@theglobeandmail.com'),(24,'Dorothy','Willimont','(954) 2323316','3937 Union Plaza','FL',33169,'Miami','dwillimontn@nyu.edu'),(25,'Ardith','Hucks','(505) 9492776','34150 Trailsway Trail','NM',87105,'Albuquerque','ahuckso@hexun.com'),(26,'Gilberto','Blagden','(617) 1802601','00195 Prentice Crossing','MA',2114,'Boston','gblagdenp@hibu.com'),(27,'Dennison','Howgate','(281) 2069629','79 Declaration Avenue','TX',77055,'Houston','dhowgateq@cnet.com'),(28,'Hynda','Havard','(865) 2199712','4331 Mcbride Point','TN',37939,'Knoxville','hhavardr@woothemes.com'),(29,'Rufus','Butter','(402) 5688216','5 Bonner Alley','NE',68105,'Omaha','rbutters@thetimes.co.uk'),(30,'Chadwick','Prowse','(718) 7636660','52217 Moulton Alley','NY',11225,'Brooklyn','cprowset@usgs.gov'),(31,'Chauncey','MacAscaidh','(203) 7398317','9 Ohio Lane','CT',6816,'Danbury','cmacascaidhu@businesswire.com'),(32,'Minnnie','Kubasek','(404) 5965782','2 Walton Road','GA',30066,'Marietta','mkubasekv@multiply.com'),(33,'Gayel','Boud','(804) 6124441','337 Brentwood Drive','VA',23285,'Richmond','gboudw@netvibes.com'),(34,'Allison','McCadden','(952) 9906249','9396 Vera Drive','MN',55123,'Saint Paul','amccaddenx@nytimes.com'),(35,'Papageno','Gilling','(559) 3197227','577 Farmco Drive','CA',93794,'Fresno','pgillingy@webmd.com'),(36,'Sayer','Muckersie','(415) 7686111','465 Eagan Center','CA',94142,'San Francisco','smuckersiez@posterous.com'),(37,'Angelika','Tytterton','(732) 5466895','2925 Debs Parkway','NJ',8922,'New Brunswick','atytterton10@ow.ly'),(38,'Katharyn','Jacquemet','(559) 4932300','5 Portage Street','CA',93762,'Fresno','kjacquemet11@chronoengine.com'),(39,'Darcee','Durante','(573) 1544795','21139 Melvin Alley','MO',65211,'Columbia','ddurante12@netscape.com'),(40,'Jennee','Lumpkin','(214) 2853869','9 Fairfield Pass','TX',75342,'Dallas','jlumpkin13@pbs.org'),(41,'Robyn','Flatt','(203) 9585810','7 Lighthouse Bay Crossing','CT',6533,'New Haven','rflatt14@vimeo.com'),(42,'Maryjo','Grigolashvill','(323) 7225313','45904 Union Circle','CA',91103,'Pasadena','mgrigolashvill15@statcounter.com'),(43,'Artemus','Barenski','(304) 3293527','631 Gateway Center','WV',25336,'Charleston','abarenski16@cdc.gov'),(44,'Milzie','Scourfield','(314) 3240986','4 Clemons Circle','MO',63180,'Saint Louis','mscourfield17@blogtalkradio.com'),(45,'Ky','Phillcock','(502) 2754103','01291 Oak Valley Parkway','KY',40266,'Louisville','kphillcock18@pbs.org'),(46,'Josefa','Kither','(603) 5602816','71088 Knutson Point','NH',3804,'Portsmouth','jkither19@cafepress.com'),(47,'Petronilla','Handke','(754) 7154561','909 Duke Hill','FL',33355,'Fort Lauderdale','phandke1a@walmart.com'),(48,'Felecia','Di Pietro','(818) 1183034','189 Northfield Court','CA',90071,'Los Angeles','fdipietro1b@dailymail.co.uk'),(49,'Florence','Conybear','(509) 8889535','892 Ridgeview Pass','WA',99215,'Spokane','fconybear1c@dyndns.org'),(50,'Gordan','Jordin','(202) 9675878','58 Talmadge Point','DC',20022,'Washington','gjordin1d@virginia.edu'),(51,'Bevvy','Tiernan','(209) 9137902','41545 Clemons Terrace','CA',95210,'Stockton','btiernan1e@taobao.com'),(52,'Graehme','Rupel','(512) 2790604','136 Fremont Drive','TX',78721,'Austin','grupel1f@cnbc.com'),(53,'Pren','Kline','(281) 6666345','15 Carioca Point','TX',77505,'Pasadena','pkline1g@thetimes.co.uk'),(54,'Edsel','MacKey','(510) 5406841','8859 Porter Terrace','CA',94807,'Richmond','emackey1h@home.pl'),(55,'Erma','Beadles','(260) 9345358','836 Blue Bill Park Plaza','IN',46825,'Fort Wayne','ebeadles1i@who.int'),(56,'Stanly','Fentem','(336) 7345120','86615 Dovetail Drive','NC',27105,'Winston Salem','sfentem1j@lulu.com'),(57,'Jeth','Balint','(412) 5178339','8 Transport Center','PA',15261,'Pittsburgh','jbalint1k@furl.net'),(58,'Neila','Lampke','(734) 8675625','87307 Union Circle','MI',48126,'Dearborn','nlampke1l@1688.com'),(59,'Thorn','Meo','(504) 8997540','99 Killdeer Drive','LA',70142,'New Orleans','tmeo1m@apache.org'),(60,'Chris','Hedgeley','(616) 5768399','36 Redwing Street','MI',49518,'Grand Rapids','chedgeley1n@usa.gov'),(61,'Fanya','Goves','(304) 7503322','24359 Sunfield Drive','WV',26505,'Morgantown','fgoves1o@bigcartel.com'),(62,'Artur','Schinetti','(972) 3341450','9733 Esker Terrace','TX',75236,'Dallas','aschinetti1p@nymag.com'),(63,'Findlay','Penfold','(805) 9635739','63043 Kings Crossing','CA',91406,'Van Nuys','fpenfold1q@cloudflare.com'),(64,'Paula','Pattrick','(773) 5801433','969 Boyd Lane','IL',60619,'Chicago','ppattrick1r@etsy.com'),(65,'Garnet','Tregona','(313) 3539696','30 Warrior Hill','MI',48275,'Detroit','gtregona1s@washingtonpost.com'),(66,'Dulcea','Whybrow','(915) 9687534','0671 Pepper Wood Lane','TX',88535,'El Paso','dwhybrow1t@list-manage.com'),(67,'Wiatt','De Ferraris','(616) 9273935','89907 Main Plaza','MI',49505,'Grand Rapids','wdeferraris1u@deliciousdays.com'),(68,'Riccardo','Tallis','(805) 7491327','7 Alpine Place','CA',91406,'Van Nuys','rtallis1v@weibo.com'),(69,'Alameda','Rives','(904) 2325314','884 Jay Alley','FL',32220,'Jacksonville','arives1w@about.com'),(70,'Deane','Secretan','(832) 2532137','8 Roth Drive','TX',77493,'Katy','dsecretan1x@behance.net'),(71,'Bear','Ivannikov','(805) 8419457','2985 Prairieview Court','CA',93407,'San Luis Obispo','bivannikov1y@google.com.au'),(72,'Helen-elizabeth','Briat','(251) 4104066','6553 Mifflin Junction','AL',36628,'Mobile','hbriat1z@shutterfly.com'),(73,'Reece','Mathiasen','(859) 6212417','14 Declaration Point','KY',40591,'Lexington','rmathiasen20@geocities.com'),(74,'Hercule','Guerra','(908) 9457465','266 Dovetail Road','NJ',7208,'Elizabeth','hguerra21@google.co.jp'),(75,'Gus','Marriott','(615) 5389354','41116 Hovde Alley','TN',38119,'Memphis','gmarriott22@businesswire.com'),(76,'Harcourt','Alyutin','(414) 2613187','362 Main Way','WI',53220,'Milwaukee','halyutin23@hhs.gov'),(77,'Malia','Betteney','(215) 8793673','9762 Holy Cross Way','PA',19160,'Philadelphia','mbetteney24@cmu.edu'),(78,'Biddie','Gueinn','(920) 8222347','00 Del Mar Lane','WI',54305,'Green Bay','bgueinn25@hubpages.com'),(79,'Umberto','Rivett','(347) 1259859','87455 Goodland Crossing','NY',10469,'Bronx','urivett26@buzzfeed.com'),(80,'Nonie','Rebichon','(775) 6455084','9525 Grasskamp Park','NV',89505,'Reno','nrebichon27@unesco.org'),(81,'Teodora','Colaton','(256) 4698926','5 Sauthoff Junction','AL',35905,'Gadsden','tcolaton28@goo.ne.jp'),(82,'Renelle','Rutledge','(862) 6403621','4071 Mifflin Junction','NJ',7505,'Paterson','rrutledge29@skyrock.com'),(83,'Filmer','Eburah','(912) 4006323','8 Dryden Avenue','GA',31217,'Macon','feburah2a@amazon.co.jp'),(84,'Emory','Mackness','(336) 6575584','8407 Marcy Court','NC',27157,'Winston Salem','emackness2b@nbcnews.com'),(85,'Sibylla','Petrillo','(615) 1535244','18688 Grim Circle','TN',38119,'Memphis','spetrillo2c@technorati.com'),(86,'Arte','Cruttenden','(702) 7660416','816 Londonderry Way','NV',89120,'Las Vegas','acruttenden2d@uol.com.br'),(87,'Micky','Faivre','(734) 2811367','9 Eastlawn Park','MI',48126,'Dearborn','mfaivre2e@cnn.com'),(88,'Alisha','Jaslem','(305) 8817544','83 Longview Road','FL',33196,'Miami','ajaslem2f@intel.com'),(89,'Davide','Avrashin','(313) 4222387','5729 Roth Parkway','MI',48211,'Detroit','davrashin2g@netlog.com'),(90,'Hertha','Dubois','(913) 9333603','04 Claremont Avenue','KS',66225,'Shawnee Mission','hdubois2h@apple.com'),(91,'Dorthea','Joskowicz','(309) 1658507','8761 Kim Hill','IL',61629,'Peoria','djoskowicz2i@cloudflare.com'),(92,'Billy','Jelly','(410) 9656315','2 Darwin Circle','MD',21290,'Baltimore','bjelly2j@omniture.com'),(93,'Hew','Scading','(915) 3428750','3 Morrow Road','TX',88553,'El Paso','hscading2k@last.fm'),(94,'Nikolaus','Willder','(816) 8608216','69287 Summer Ridge Avenue','MO',64187,'Kansas City','nwillder2l@ed.gov'),(95,'Myrtice','Smedmoor','(913) 7924279','0 Messerschmidt Trail','KS',66286,'Shawnee Mission','msmedmoor2m@cloudflare.com'),(96,'Tull','Gow','(901) 2600106','117 Hooker Terrace','TN',38109,'Memphis','tgow2n@opensource.org'),(97,'Westbrooke','Pesak','(202) 1924695','7 Hoard Terrace','DC',20540,'Washington','wpesak2o@opera.com'),(98,'Kinna','Breakwell','(214) 4221038','2 Bobwhite Street','TX',75185,'Mesquite','kbreakwell2p@technorati.com'),(99,'Teresita','Fitzsymonds','(720) 8187308','7 Holmberg Park','CO',80249,'Denver','tfitzsymonds2q@bluehost.com'),(100,'Tim','Arney','(434) 9954577','84939 Forest Run Way','VA',24515,'Lynchburg','tarney2r@biglobe.ne.jp'),(101,'Finlay','Hartles','(310) 2881435','31181 Rutledge Alley','CA',90398,'Inglewood','fhartles2s@patch.com'),(102,'Allard','Buckeridge','(407) 4308978','899 Express Road','FL',32830,'Orlando','abuckeridge2t@trellian.com'),(103,'Connor','Lamborn','(952) 2235345','5440 Drewry Crossing','MN',55402,'Minneapolis','clamborn2u@yahoo.com'),(104,'Sloan','Alyukin','(281) 4317854','1297 Towne Plaza','TX',77020,'Houston','salyukin2v@latimes.com'),(105,'Spencer','Subhan','(260) 1588487','0 Jenifer Trail','IN',46857,'Fort Wayne','ssubhan2w@umn.edu'),(106,'Dominique','Dawidsohn','(404) 5547578','8988 Eliot Pass','GA',30096,'Duluth','ddawidsohn2x@senate.gov'),(107,'Billye','Antognozzii','(209) 9057832','6897 Dayton Way','CA',95298,'Stockton','bantognozzii2y@usgs.gov'),(108,'Grady','Gooble','(214) 1896646','11 Loftsgordon Pass','TX',75185,'Mesquite','ggooble2z@networkadvertising.org'),(109,'Ardith','Kubalek','(734) 9863607','824 Bluestem Road','MI',48126,'Dearborn','akubalek30@nationalgeographic.com'),(110,'Clareta','Bonifant','(310) 8081139','61 Karstens Alley','CA',91406,'Van Nuys','cbonifant31@canalblog.com'),(111,'Clemmie','Pestor','(203) 7939446','6 Cody Place','CT',6859,'Norwalk','cpestor32@go.com'),(112,'Dulciana','Dwelling','(775) 5380591','5716 Sugar Road','NV',89436,'Sparks','ddwelling33@google.com.hk'),(113,'Jakie','Verlinden','(561) 8335416','60 Truax Lane','FL',33499,'Boca Raton','jverlinden34@newyorker.com'),(114,'Shana','MacDuff','(651) 5225371','99 Blackbird Trail','MN',55127,'Saint Paul','smacduff35@rakuten.co.jp'),(115,'Ashby','Ley','(757) 3310773','768 Moose Pass','VA',23464,'Virginia Beach','aley36@quantcast.com'),(116,'Perceval','Weall','(414) 8990022','72809 Reindahl Center','WI',53215,'Milwaukee','pweall37@gnu.org'),(117,'Margarette','Pearne','(702) 9806513','457 Fremont Way','NV',89115,'Las Vegas','mpearne38@cnet.com'),(118,'Haydon','Fibbit','(773) 8975146','903 Dawn Center','IL',60652,'Chicago','hfibbit39@admin.ch'),(119,'Kermit','Akrigg','(713) 7370740','9 Arkansas Terrace','TX',77266,'Houston','kakrigg3a@istockphoto.com'),(120,'Verine','Thacker','(908) 8668082','359 Rutledge Center','NJ',7208,'Elizabeth','vthacker3b@bloglovin.com'),(121,'Leonid','BURWIN','(407) 7210854','05 Havey Center','FL',33884,'Winter Haven','lburwin3c@com.com'),(122,'Marj','Astlet','(832) 1724279','5 Susan Center','TX',77493,'Katy','mastlet3d@howstuffworks.com'),(123,'Livia','Gogie','(760) 4217181','116 Arizona Center','CA',92121,'San Diego','lgogie3e@twitpic.com'),(124,'Hallie','Stapleford','(904) 2810970','290 Kim Plaza','FL',32277,'Jacksonville','hstapleford3f@alexa.com'),(125,'Geordie','Linley','(334) 6018986','41 Karstens Center','AL',36125,'Montgomery','glinley3g@independent.co.uk'),(126,'Shalna','Greenrde','(812) 7528312','4 Novick Point','IN',47134,'Jeffersonville','sgreenrde3h@nymag.com'),(127,'Michaella','Redsull','(551) 4424567','45 Prentice Way','NJ',7310,'Jersey City','mredsull3i@alibaba.com'),(128,'Brandea','Kilgrew','(785) 3369638','3 Sunnyside Circle','KS',66642,'Topeka','bkilgrew3j@chronoengine.com'),(129,'Nissa','Brownhall','(716) 7941646','7 Arapahoe Street','NY',14225,'Buffalo','nbrownhall3k@tumblr.com'),(130,'Pansy','Bannister','(210) 1128319','43 Kinsman Hill','TX',78255,'San Antonio','pbannister3l@ox.ac.uk'),(131,'Sayers','Camamill','(210) 3862389','4 Prentice Place','TX',78285,'San Antonio','scamamill3m@behance.net'),(132,'Lian','Slocom','(510) 5134323','04386 Petterle Hill','CA',92612,'Irvine','lslocom3n@hp.com'),(133,'Vinnie','Ygou','(850) 6191315','57989 Cardinal Place','FL',34665,'Pinellas Park','vygou3o@guardian.co.uk'),(134,'Jason','Lomis','(434) 6250500','79032 Mccormick Crossing','VA',24503,'Lynchburg','jlomis3p@dailymotion.com'),(135,'Jayme','Baxstair','(386) 1369167','5748 Elka Point','FL',32118,'Daytona Beach','jbaxstair3q@1und1.de'),(136,'Manon','Bahia','(928) 8298992','00 Southridge Hill','AZ',85383,'Peoria','mbahia3r@typepad.com'),(137,'Angelo','Curgenuer','(210) 4014324','075 Pepper Wood Point','TX',78225,'San Antonio','acurgenuer3s@goo.ne.jp'),(138,'Tiffi','Ruselin','(617) 1939193','609 Eastwood Pass','MA',2109,'Boston','truselin3t@discuz.net'),(139,'Alvera','Andrat','(202) 8910423','527 Sycamore Alley','DC',20260,'Washington','aandrat3u@dyndns.org'),(140,'Jeane','McKennan','(214) 2928195','753 Upham Road','TX',75392,'Dallas','jmckennan3v@google.co.uk'),(141,'Noell','Revens','(727) 8657729','78712 Quincy Point','FL',33742,'Saint Petersburg','nrevens3w@vk.com'),(142,'Agatha','Dick','(773) 2955827','0 Carberry Alley','IL',60657,'Chicago','adick3x@nsw.gov.au'),(143,'Rachelle','Gallant','(614) 1949709','201 Park Meadow Lane','OH',43210,'Columbus','rgallant3y@storify.com'),(144,'Hunt','Treend','(302) 8572068','640 Johnson Street','DE',19897,'Wilmington','htreend3z@google.com.au'),(145,'Matthew','Avarne','(651) 5857937','30 Summerview Alley','MN',55172,'Saint Paul','mavarne40@mtv.com'),(146,'Emilee','Riatt','(304) 3118844','097 Dorton Circle','WV',25709,'Huntington','eriatt41@hugedomains.com'),(147,'Emelia','Whitear','(571) 8215619','2 Dapin Junction','VA',22156,'Springfield','ewhitear42@etsy.com'),(148,'Cristian','Tolcher','(254) 3533286','402 Charing Cross Center','TX',76711,'Waco','ctolcher43@jalbum.net'),(149,'Che','Sapsford','(240) 2566638','67 Arkansas Alley','MD',21747,'Hagerstown','csapsford44@acquirethisname.com'),(150,'Rebecca','Canada','(480) 1392106','81051 Brown Junction','AZ',85271,'Scottsdale','rcanada45@ebay.com'),(151,'Nye','Done','(717) 4151707','0 Welch Park','PA',17110,'Harrisburg','ndone46@php.net'),(152,'Byrle','Klamp','(414) 6515775','37 Darwin Road','WI',53215,'Milwaukee','bklamp47@privacy.gov.au'),(153,'Ethan','McCrillis','(309) 5182963','78385 Lindbergh Place','IL',61605,'Peoria','emccrillis48@bloomberg.com'),(154,'Darcy','Excell','(479) 1734105','3 Doe Crossing Lane','AR',72905,'Fort Smith','dexcell49@mashable.com'),(155,'Isabeau','Lisciandri','(413) 2441781','39 Coleman Road','MA',1105,'Springfield','ilisciandri4a@craigslist.org'),(156,'Walt','Recher','(210) 3679753','7870 Green Ridge Road','TX',78291,'San Antonio','wrecher4b@amazon.com'),(157,'Asia','Fawdrey','(808) 9217971','19957 Eastwood Court','HI',96810,'Honolulu','afawdrey4c@unc.edu'),(158,'Aldwin','Jedrasik','(585) 6624843','418 Golden Leaf Point','NY',14646,'Rochester','ajedrasik4d@google.es'),(159,'Andrey','Barrack','(214) 3623825','69 Hanson Circle','TX',76096,'Arlington','abarrack4e@archive.org'),(160,'Aharon','Hassin','(734) 8423652','042 Mitchell Lane','MI',48211,'Detroit','ahassin4f@wikimedia.org'),(161,'Malvin','Lambard','(609) 3521459','432 Declaration Alley','NJ',8695,'Trenton','mlambard4g@histats.com'),(162,'Edsel','Coughlin','(260) 7941327','7 Longview Parkway','IN',46852,'Fort Wayne','ecoughlin4h@oakley.com'),(163,'Ethelda','Bwye','(678) 6938128','8 Elka Trail','GA',30328,'Atlanta','ebwye4i@360.cn'),(164,'Elvin','Skilbeck','(917) 9239204','2005 Northland Street','NY',10474,'Bronx','eskilbeck4j@icq.com'),(165,'Angela','Joddins','(213) 8807767','4 Carpenter Court','CA',92705,'Santa Ana','ajoddins4k@boston.com'),(166,'Nedda','Kippen','(786) 9528824','9 Kim Alley','FL',33013,'Hialeah','nkippen4l@yandex.ru'),(167,'Rudyard','De Haven','(208) 2759735','0906 Ridge Oak Trail','ID',83732,'Boise','rdehaven4m@networkadvertising.org'),(168,'Troy','Grishukov','(406) 3625567','114 Lyons Trail','MT',59623,'Helena','tgrishukov4n@sakura.ne.jp'),(169,'Vonni','Kibby','(505) 4054927','2263 Stephen Center','NM',87201,'Albuquerque','vkibby4o@networksolutions.com'),(170,'Eachelle','Idenden','(201) 6617177','86565 Buell Way','NJ',7310,'Jersey City','eidenden4p@blogs.com'),(171,'Esta','Foxten','(915) 1223021','1683 Barby Point','TX',88563,'El Paso','efoxten4q@weibo.com'),(172,'Lian','Utton','(712) 2943109','3583 Fairfield Park','IA',51105,'Sioux City','lutton4r@nba.com'),(173,'Thorstein','Vales','(334) 3732315','3921 Judy Road','AL',36114,'Montgomery','tvales4s@marriott.com'),(174,'Em','Flucker','(615) 9362327','7378 Karstens Pass','TN',37205,'Nashville','eflucker4t@etsy.com'),(175,'Kaleena','Kahler','(323) 4880990','1512 Eagle Crest Terrace','CA',91205,'Glendale','kkahler4u@kickstarter.com'),(176,'Ashlee','Elfleet','(212) 5677406','1383 Toban Park','NY',10275,'New York City','aelfleet4v@globo.com'),(177,'Marsh','Hanbury','(713) 5826007','7716 Oak Drive','TX',77025,'Houston','mhanbury4w@goo.ne.jp'),(178,'Marshall','Ruger','(216) 4703860','77 Maple Drive','OH',44185,'Cleveland','mruger4x@discovery.com'),(179,'Pincus','Oleszcuk','(512) 6725112','06226 Shopko Park','TX',78769,'Austin','poleszcuk4y@histats.com'),(180,'Vernice','MacCambridge','(702) 4998437','49014 Oak Valley Lane','NV',89036,'North Las Vegas','vmaccambridge4z@google.pl'),(181,'Vi','Ogers','(661) 1644768','33087 Claremont Trail','CA',93584,'Lancaster','vogers50@de.vu'),(182,'Nell','Bisseker','(202) 6020757','8155 Jay Junction','DC',20546,'Washington','nbisseker51@engadget.com'),(183,'Warden','Croom','(775) 9428333','3484 Lerdahl Alley','NV',89550,'Reno','wcroom52@histats.com'),(184,'Kassia','Cammidge','(217) 4245829','9 Marcy Circle','IL',62794,'Springfield','kcammidge53@home.pl'),(185,'Leigh','Gouldsmith','(603) 7310444','94639 Vera Point','NH',3804,'Portsmouth','lgouldsmith54@salon.com'),(186,'Carver','Iacovini','(806) 7678511','699 Huxley Center','TX',79188,'Amarillo','ciacovini55@opensource.org'),(187,'Rey','Nugent','(816) 5335685','3348 Sycamore Road','MO',64160,'Kansas City','rnugent56@rambler.ru'),(188,'Libbi','Coetzee','(312) 9819641','55 1st Alley','IL',60674,'Chicago','lcoetzee57@reference.com'),(189,'Eleanore','Garry','(405) 9095638','76 Fulton Center','OK',73135,'Oklahoma City','egarry58@netscape.com'),(190,'Jerri','Crossdale','(770) 4022224','59827 Center Lane','GA',30340,'Atlanta','jcrossdale59@tinyurl.com'),(191,'Athena','Luca','(719) 6024604','384 Pond Pass','CO',80940,'Colorado Springs','aluca5a@economist.com'),(192,'Hashim','Tiesman','(614) 8365523','9949 Burrows Junction','OH',43231,'Columbus','htiesman5b@wired.com'),(193,'Carl','Bellham','(210) 2283738','578 Oriole Terrace','TX',78205,'San Antonio','cbellham5c@scientificamerican.com'),(194,'Reynold','Lintin','(402) 4632126','18 Eagan Junction','NE',68510,'Lincoln','rlintin5d@senate.gov'),(195,'Reed','Skellern','(610) 7828497','7 Linden Avenue','PA',19104,'Philadelphia','rskellern5e@sbwire.com'),(196,'Josselyn','Rizzello','(785) 4770172','641 Charing Cross Center','KS',66629,'Topeka','jrizzello5f@statcounter.com'),(197,'Lyndsie','Tringham','(251) 5776902','4920 Blue Bill Park Terrace','AL',36670,'Mobile','ltringham5g@ehow.com'),(198,'Bendix','Posthill','(716) 7406168','5 Judy Avenue','NY',14263,'Buffalo','bposthill5h@geocities.com'),(199,'Vivi','Pilipyak','(214) 6540512','6059 Melody Road','TX',75277,'Dallas','vpilipyak5i@edublogs.org'),(200,'Roselin','Pinyon','(323) 1485877','66731 Arrowood Park','CA',91411,'Van Nuys','rpinyon5j@vkontakte.ru');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-12 19:34:55
