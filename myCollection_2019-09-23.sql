# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.27)
# Database: myCollection
# Generation Time: 2019-09-23 11:03:15 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table myBikes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `myBikes`;

CREATE TABLE `myBikes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `wheelset` varchar(70) DEFAULT NULL,
  `groupset` varchar(100) DEFAULT NULL,
  `saddle` varchar(50) DEFAULT NULL,
  `weight` float(3,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `myBikes` WRITE;
/*!40000 ALTER TABLE `myBikes` DISABLE KEYS */;

INSERT INTO `myBikes` (`id`, `manufacturer`, `model`, `price`, `wheelset`, `groupset`, `saddle`, `weight`)
VALUES
	(1,'Cannondale','CAAD 8',1200,'Campagnolo Scirocco CX','TIagra 50-34/11-28','FSA standard',8.70),
	(2,'Fairlight','Secan',2600,'Hope 20Five RS4','Shimano GRX 600 2x 46-30/11-34','Fabric Scoop',9.80),
	(3,'Specialized','Allez Sprint',1700,'DT R460','Shimano 105 52-36/11-28','Body Geometry Sport',8.30);

/*!40000 ALTER TABLE `myBikes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
