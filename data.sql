/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
-- -----------------------------------------------------

-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema luxcars
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `luxcars` DEFAULT CHARACTER SET utf8 ;
-- USE `luxcars` ;
USE `luxcars`;

DROP TABLE IF EXISTS `brands` ;

CREATE TABLE IF NOT EXISTS `brands` (
  `brandId` INT NOT NULL,
  `brandName` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`brandId`))
ENGINE = InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `Brands`*/

INSERT INTO `brands` (`brandId`,`brandName`) VALUES (100,'Audi');
INSERT INTO `brands` (`brandId`,`brandName`) VALUES (200,'Ferrari');
INSERT INTO `brands` (`brandId`,`brandName`) VALUES (300,'Lamborghini');
INSERT INTO `brands` (`brandId`,`brandName`) VALUES (400,'Maserati');
INSERT INTO `brands` (`brandId`,`brandName`) VALUES (500,'Porsche');
INSERT INTO `brands` (`brandId`,`brandName`) VALUES (600,'Rolls Royce');


-- -----------------------------------------------------
-- Table `Products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `products` ;

CREATE TABLE IF NOT EXISTS `products` (
  `productId` INT(4) NOT NULL,
  `productName` VARCHAR(50) NOT NULL,
  `price` DECIMAL(16,9) NOT NULL,
  `releasedDate` DATE NOT NULL,
  `warranty` INT(2) NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `image` VARCHAR(45) NOT NULL,
  `brandId` INT  NOT NULL,
  PRIMARY KEY (`productId`),
  CONSTRAINT `products_ibfk_1`
    FOREIGN KEY (`brandId`)
    REFERENCES `brands` (`brandId`))
ENGINE = InnoDB DEFAULT CHARSET=latin1;

/*Data for the table ‘Products’*/

INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1000,'Audi S7 4G',88000,'2017-12-25',5,'Acceleration 0-100 km/h: 4.7 seconds\nHorsepower: 414 hp\nMax speed: 250 km/h\nEngine: 4L V8 Bi-Turbo','audi_s8.png',100);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1001,'Audi TT RS',168938,'2018-11-03',3,'Acceleration 0-100 km/h: 3.7 seconds Horsepower: 400 hp Max speed: 250 km/h Engine: 2.5 L 5-cylinder','audi_tt_rs.png',100);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1002,'Audi S8',130900,'2020-03-02',3,'Acceleration 0-97 km/h: 3.8 seconds Horsepower: 563 hp Max speed: 115 mph Engine: 4.0-liter eight-cylinder','audi_s8.png',100);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1003,'Audi RS5',76145,'2018-04-15',4,'Acceleration 0-100 km/h: 3.9 seconds Horsepower: 450 hp Max speed: 250 km/h Engine: 2.9-litre TFSI twin-turbo V6','audi_rs5.png',100);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1004,'Ferrari 812 Superfast',340000,'2020-04-20',4,'Acceleration 0-100 km/h: 2.9 seconds Horsepower: 800 hp Max speed: 340 km/h Engine: 6.5 L V12','ferrari_812.png',200);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1005,'Ferrari SF90 Stradale',507000,'2018-10-19',5,'Acceleration 0-97 km/h: 2.5 seconds Horsepower: 986 hp Max speed: 340 km/h Engine: 4.0-liter twin-turbocharged V-8','ferrari_sf90_stradale.png',200);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1006,'Ferrari SF90 Spider',558000,'2018-11-12',3,'Acceleration 0-100 km/h: 2.5 seconds Horsepower: 986 hp Max speed: 340 km/h Engine: V8 - 90° - turbo – dry sump','ferrari_sf90_spider.png',200);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1007,'Lamborghini Sian',3700000,'2018-09-10',4,'Acceleration 0-100 km/h: 2.9 seconds Horsepower: 807 hp Max speed: 350 km/h Engine: V12','lamborghini_sian.png',300);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1008,'Lamborghini Aventador SVJ Roadster',573966,'2020-03-23',3,'Acceleration 0-100 km/h: 2.9 seconds Horsepower: 770 hp Max speed: 350 km/h Engine: V12, 60°, MPI (Multi Point Injection)','lamborghini_aventador.png',300);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1009,'Lamborghini URUS',746335.25,'2020-07-25',5,'Acceleration 0-100 km/h: 3.6 seconds Horsepower: 650 hp Max speed: 306 km/h Engine: 4.0-liter twin-turbo V8','lamborghini_urus.png',300);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1010,'Maserati MC12',810000,'2020-03-23',5,'Acceleration 0-100 km/h: 3.8 seconds Horsepower: 621 hp Max speed: 330 km/h Engine: M144B/2 6.0 L V12','maserati_mc12.png',400);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1011,'Maserati Ghibli 2015',67850,'2019-05-21',4,'Acceleration 0-100 km/h: 5 seconds Horsepower: 404 hp Max speed: 285 km/h Engine: Twin Turbo Premium Unleaded V-6, 3.0 L','maserati_ghibli.png',400);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1012,'Maserati Alfieri 2014',2000000,'2018-05-01',5,'Acceleration 0-60 km/h: 4 seconds Horsepower: 460 hp Max speed: 250 km/h Engine: 4.7-liter V8','maserati_alfieri.png',400);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1013,'Maserati GranTurismo MC Stradale 2013',306130,'2018-05-13',4,'Acceleration 0-60 km/h: 4 seconds Horsepower: 454 hp Max speed: 303 km/h Engine: 4.7-liter V8','maserati_granturismo_mc.png',400);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1014,'Maserati GranTurismo Sport 2012',131120,'2017-03-14',4,'Acceleration 0-60 km/h: 4.9 seconds Horsepower: 433 hp Max speed: 295 km/h Engine: 4.7-liter V8','maserati_granturismo_sport.png',400);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1015,'Porsche 911 Carrera S (992) 2020',405921.75,'2020-07-26',3,'Acceleration 0-100 km/h: 3.7 seconds\nHorsepower: 433 hp\nMax speed: 444 km/h\nEngine: twin-turbo 3.0-liter','porsche_911_carrera.png',500);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1016,'Porsche 911 Cabriolet 2021',199160,'2018-03-27',3,'Acceleration 0-100km/h: 2.8 seconds Horsepower: 450 hp Max speed: 308 km/h Engine:3.0 L 6-cylinder','porsche_911_cabriolet.png',500);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1017,'Rolls Royce Phantom',1704609,'2018-12-09',3,'Acceleration 0-140km/h: 5.1 seconds\nHorsepower: 563 hp\nMax speed: 250 km/h\nEngine: 6.7 v12','rolls_royce_phantom.png',600);
INSERT INTO `products` (`productId`,`productName`,`price`,`releasedDate`,`warranty`,`description`,`image`,`brandId`) VALUES (1018,'Rolls-Royce Dawn 2016',360000,'2018-01-30',5,'Acceleration 0-140km/h: 5 seconds Horsepower: 571 hp Max speed: 250 km/h Engine: 6.6 v12','rolls_royce_dawn.png',600);


-- -----------------------------------------------------
-- Table `luxcars`.`Colors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `colors` ;

CREATE TABLE IF NOT EXISTS `colors` (
  `colorCode` INT(4) NOT NULL,
  `hexCode` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`colorCode`))
ENGINE = InnoDB DEFAULT CHARSET=latin1;

/*Data for the table ‘Colors’*/

INSERT INTO `colors` (`colorCode`,`hexCode`) VALUES (11,'#000000');
INSERT INTO `colors` (`colorCode`,`hexCode`) VALUES (12,'#FFFFFF');
INSERT INTO `colors` (`colorCode`,`hexCode`) VALUES (13,'#C62121');
INSERT INTO `colors` (`colorCode`,`hexCode`) VALUES (14,'#003DBB');
INSERT INTO `colors` (`colorCode`,`hexCode`) VALUES (15,'#32612D');
INSERT INTO `colors` (`colorCode`,`hexCode`) VALUES (16,'#FFDB21');


-- -----------------------------------------------------
-- Table `luxcars`.`productcolors`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `productcolors` ;

CREATE TABLE IF NOT EXISTS `productcolors` (
  `productId` INT(4) NOT NULL,
  `colorCode` INT(4) NOT NULL,
  PRIMARY KEY (`productId`, `colorCode`),
  CONSTRAINT `productcolors_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`productId`),
  CONSTRAINT `productcolors_ibfk_2`FOREIGN KEY (`colorCode`) REFERENCES `colors` (`colorCode`))
ENGINE = InnoDB DEFAULT CHARSET=latin1;

/*Data for the table ‘productcolors’*/

INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1000,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1000,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1000,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1000,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1001,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1001,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1001,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1001,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1002,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1002,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1002,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1002,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1003,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1003,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1003,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1003,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1004,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1004,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1004,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1004,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1005,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1005,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1006,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1006,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1007,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1007,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1008,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1008,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1008,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1008,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1009,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1009,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1009,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1009,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1010,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1010,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1010,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1011,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1011,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1011,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1012,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1013,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1013,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1013,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1014,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1014,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1014,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1014,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1015,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1015,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1015,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1015,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1016,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1016,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1016,13);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1016,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1017,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1017,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1017,14);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1018,11);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1018,12);
INSERT INTO `productcolors` (`productId`,`colorCode`) VALUES (1018,14);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
