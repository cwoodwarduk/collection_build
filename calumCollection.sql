# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.27)
# Database: calumCollection
# Generation Time: 2019-09-25 08:13:38 +0000
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
  `manufacturer` varchar(255) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `wheelset` varchar(70) DEFAULT NULL,
  `groupset` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `myBikes` WRITE;
/*!40000 ALTER TABLE `myBikes` DISABLE KEYS */;

INSERT INTO `myBikes` (`id`, `manufacturer`, `model`, `wheelset`, `groupset`, `image`)
VALUES
	(1,'Cannondale','CAAD 8','Campagnolo Scirocco CX','Tiagra 50-34/11-28','images/Cannondale-CAAD8-2015-Tiagra.jpg'),
	(2,'Fairlight','Secan','Hope 20Five RS4','Shimano GRX 600 2x 46-30/11-34','images/FAIRLIGHT-2018-SECAN.jpg'),
	(3,'Specialized','Allez Sprint','DT R460','Shimano 105 52-36/11-28','images/ALLEZ_SPRINT-COMP-DISC.jpeg');

/*!40000 ALTER TABLE `myBikes` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
