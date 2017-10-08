-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.33-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema hr
--

CREATE DATABASE IF NOT EXISTS hr;
USE hr;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(45) NOT NULL,
  `adminpass` varchar(45) NOT NULL,
  `adminname` varchar(45) NOT NULL,
  PRIMARY KEY  (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adminid`,`adminpass`,`adminname`) VALUES 
 ('admin','admin','vivek'),
 ('user','password','vaibhav');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `categoryid` varchar(45) NOT NULL,
  `categoryname` varchar(45) NOT NULL,
  `photograph` varchar(45) NOT NULL,
  PRIMARY KEY  (`categoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`categoryid`,`categoryname`,`photograph`) VALUES 
 ('01','Fruits','jhbjh.jpg'),
 ('02','Leaf Vegetable','zgvzg'),
 ('03','Seed Vegetable','cbhhsj'),
 ('04','Root Vegetable','hbhj'),
 ('05','Flower Vegetable','bdshfb');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cityid` varchar(45) NOT NULL,
  `cityname` varchar(45) NOT NULL,
  `stateid` varchar(45) NOT NULL,
  PRIMARY KEY  (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`cityid`,`cityname`,`stateid`) VALUES 
 ('1','Bamboo flat','101'),
 ('10','Nahariagun','103'),
 ('11','Pasighut','103'),
 ('12','Guwahati','104'),
 ('13','Silchar','104'),
 ('14','Dibrugarh','104'),
 ('15','Tezpur','104'),
 ('16','Patna','105'),
 ('17','Gaya','105'),
 ('18','Muzaffarpur','105'),
 ('19','Ara','105'),
 ('2','Garacharma','101'),
 ('20','Chandigarh','106'),
 ('21','Raipur','107'),
 ('22','Bilhai','107'),
 ('23','Bilaspur','107'),
 ('24','Korba','107'),
 ('25','Delhi','108'),
 ('26','Panaji','109'),
 ('27','Madgoan','109'),
 ('28','Mormuagoan','109'),
 ('29','Ahmadabad','110'),
 ('3','Port Blair','101'),
 ('30','Surat','110'),
 ('31','Rajkot','110'),
 ('32','Morvi','110'),
 ('33','Baddi','111'),
 ('34','Kullu','111'),
 ('35','Mandi','111'),
 ('36','Salon','111'),
 ('37','Srinagar','112'),
 ('38','Sopore','112'),
 ('39','Bandipura','112'),
 ('4','Prothrapur','101'),
 ('40','Leh','112'),
 ('41','Kochi','113'),
 ('42','kollam','113'),
 ('43','Malappuram','113'),
 ('44','Cherthala','113'),
 ('45','Indore','114'),
 ('46','Bhopal','114'),
 ('47','Gwalior','114'),
 ('48','jabalpur','114'),
 ('49','sagar','114'),
 ('5','Nellore','102'),
 ('50','Ujjain','114'),
 ('51','Mumbai','115'),
 ('52','Pune','115'),
 ('53','Nagpur','115'),
 ('54','nashik','115'),
 ('55','Imphal','116'),
 ('56','Kakching','116'),
 ('57','Dimapur','117'),
 ('58','Kohima','117'),
 ('59','Ludhiana','118'),
 ('6','Kadapa','102'),
 ('60','Amritsar','118'),
 ('61','Jalandhar','118'),
 ('62','Patiala','118'),
 ('63','Kanpur','119'),
 ('64','Lucknow','119'),
 ('65','Agra','119'),
 ('66','Meerut','119'),
 ('67','Allahabad','119'),
 ('68','Aligarh','119'),
 ('69','Kolkata','120'),
 ('7','Anantapur','102'),
 ('70','Shilliguri','120'),
 ('71','Kharagpur','120'),
 ('72','Santipur','120'),
 ('8','Along','103'),
 ('9','Itanagar','103');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE `location` (
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `locationid` varchar(45) NOT NULL,
  `locationname` varchar(45) NOT NULL,
  PRIMARY KEY  (`locationid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`state`,`city`,`locationid`,`locationname`) VALUES 
 ('Madhya pradesh','Gwalior','L01','Thatipur'),
 ('Madhya pradesh','Gwalior','L02','GovindPuri'),
 ('Madhya pradesh','Gwalior','L03','Shinde ki Chavani'),
 ('Madhya pradesh','Gwalior','L04','City center');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;


--
-- Definition of table `outlet`
--

DROP TABLE IF EXISTS `outlet`;
CREATE TABLE `outlet` (
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `outletid` varchar(45) NOT NULL,
  `owner` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phoneno` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `picture` varchar(45) NOT NULL,
  PRIMARY KEY  (`outletid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlet`
--

/*!40000 ALTER TABLE `outlet` DISABLE KEYS */;
INSERT INTO `outlet` (`state`,`city`,`location`,`outletid`,`owner`,`address`,`phoneno`,`mobileno`,`emailid`,`picture`) VALUES 
 ('Madhya Pradesh','Gwalior','Thatipur','123','vivek kushwah','H-20 Govind puri','4080326','9630141107','vivek.kushwah05@outlook.com','1.jpg'),
 ('Madhya Pradesh','Gwalior','Shinde ki Chavani','456','vaibhav bilhatiya','H-16 govind puri','4080327','9691470740','vb198@gmail.com','5.jpg');
/*!40000 ALTER TABLE `outlet` ENABLE KEYS */;


--
-- Definition of table `outletproduct`
--

DROP TABLE IF EXISTS `outletproduct`;
CREATE TABLE `outletproduct` (
  `transactionid` varchar(45) NOT NULL,
  `outletid` varchar(45) NOT NULL,
  `productid` varchar(45) NOT NULL,
  `rate` varchar(45) NOT NULL,
  `offerrate` varchar(45) NOT NULL,
  `offerdescription` varchar(45) NOT NULL,
  PRIMARY KEY  (`transactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outletproduct`
--

/*!40000 ALTER TABLE `outletproduct` DISABLE KEYS */;
INSERT INTO `outletproduct` (`transactionid`,`outletid`,`productid`,`rate`,`offerrate`,`offerdescription`) VALUES 
 ('1','123','001','100','10','rakhi'),
 ('2','123','002','50','5','janmastmi'),
 ('3','123','003','50','10','rakhi'),
 ('4','123','004','70','10','rakhi'),
 ('5','123','005','20','2','rakhi'),
 ('6','123','006','80','10','rakhi'),
 ('7','123','007','60','10','janmastami'),
 ('8','123','008','50','5','rakhi'),
 ('99','123','009','150','50','CHSBH');
/*!40000 ALTER TABLE `outletproduct` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `categoryname` varchar(45) NOT NULL,
  `productid` varchar(45) NOT NULL,
  `productname` varchar(45) NOT NULL,
  `productdescription` varchar(45) NOT NULL,
  `productphotograph` varchar(45) NOT NULL,
  PRIMARY KEY  (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`categoryname`,`productid`,`productname`,`productdescription`,`productphotograph`) VALUES 
 ('Fruits','001','Apple','Fresh','a.jpg'),
 ('Fruits','002','Banana','Fresh','b.jpg'),
 ('Fruits','003','Grapes','Fresh','g.jpg'),
 ('Leaf Vegetable','004','Spinach','Fresh','s.jpg'),
 ('Leaf Vegetable','005','Cabbage','Fresh','c.jpg'),
 ('Seed Vegetable','006','Lentils','Fresh','l.jpg'),
 ('Seed Vegetable','007','Flageolet Beans','Fresh','fb.jpg'),
 ('Root Vegetable','008','Carrots','Fresh','r.jpg'),
 ('Root Vegetable','009','Radishes','Fresh','ca.jpg'),
 ('Flower Vegetable','010','Cauliflower','Fresh','cf.jpg'),
 ('Flower Vegetable','011','Broccoli','Fresh','brr.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `state`
--

DROP TABLE IF EXISTS `state`;
CREATE TABLE `state` (
  `stateid` varchar(45) NOT NULL,
  `statename` varchar(45) NOT NULL,
  PRIMARY KEY  (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` (`stateid`,`statename`) VALUES 
 ('101','Andaman and Nicobar Island'),
 ('102','Andhra Pradesh'),
 ('103','Arunachal Pradesh'),
 ('104','Assam'),
 ('105','Bihar'),
 ('106','Chandigarh'),
 ('107','chhattisgarh'),
 ('108','Delhi'),
 ('109','Goa'),
 ('110','Gujarat'),
 ('111','Himachal Pradesh'),
 ('112','jammu and kashmir'),
 ('113','kerala'),
 ('114','Madhya Pradesh'),
 ('115','Maharashtra'),
 ('116','Manipur'),
 ('117','Nagaland'),
 ('118','punjab'),
 ('119','Uttar Pradesh'),
 ('120','West Bengal');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userid`,`username`,`gender`,`dob`,`mobileno`,`emailid`,`address`,`state`,`city`,`password`) VALUES 
 ('A01','viraj','male','05/7/1990','9630141107','abc@gamil.com','123 lajpat nagar','102','agra','123456'),
 ('B01','yuvi','male','9/8/1995','8965478521','xyz@outlook.com','12 abc nagar ','101','gwalior','123'),
 ('Trail','Trail','male','1990-06-12','4949494','494949','49494','Manipur','Kakching','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
