CREATE DATABASE  IF NOT EXISTS `mednanny` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mednanny`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: mednanny
-- ------------------------------------------------------
-- Server version	5.6.48-88.0

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
-- Table structure for table `ACAPW`
--

DROP TABLE IF EXISTS `ACAPW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ACAPW` (
  `UID` int(11) NOT NULL DEFAULT '0',
  `EMERGENCYPASSWORD` varchar(20) DEFAULT NULL,
  `CONTACTPERSON` varchar(40) DEFAULT NULL,
  `CONTACTPHONE` varchar(16) DEFAULT NULL,
  `CARDPRINTED` char(1) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  `rhesus` varchar(4) DEFAULT NULL,
  `bloodgroup` varchar(4) DEFAULT NULL,
  `comments` text,
  PRIMARY KEY (`UID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALALL`
--

DROP TABLE IF EXISTS `ALALL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALALL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(11) NOT NULL DEFAULT '0',
  `NAME` varchar(50) DEFAULT NULL,
  `REACTION` int(11) DEFAULT NULL,
  `DANGER` int(11) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  `color` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1947 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALLDANGER`
--

DROP TABLE IF EXISTS `ALLDANGER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALLDANGER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DNAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ALLREACT`
--

DROP TABLE IF EXISTS `ALLREACT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALLREACT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RNAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ARZT_FACHGEBIET`
--

DROP TABLE IF EXISTS `ARZT_FACHGEBIET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ARZT_FACHGEBIET` (
  `personen_id` int(11) NOT NULL DEFAULT '0',
  `personsubtyp_id` int(11) NOT NULL DEFAULT '0',
  `prioritaet` int(11) DEFAULT NULL,
  KEY `ARZT_FACH_P` (`personen_id`),
  KEY `ARZT_FACH_T` (`personsubtyp_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Apotheken`
--

DROP TABLE IF EXISTS `Apotheken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Apotheken` (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Ort` varchar(100) NOT NULL,
  `Plz` varchar(5) NOT NULL,
  `Strasse` varchar(200) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  PRIMARY KEY (`pkey`)
) ENGINE=InnoDB AUTO_INCREMENT=1376 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Arzt_Smtp`
--

DROP TABLE IF EXISTS `Arzt_Smtp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Arzt_Smtp` (
  `personen_id` int(11) NOT NULL,
  `server` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `port` int(11) NOT NULL,
  `auth` tinyint(1) NOT NULL,
  `absender` varchar(40) NOT NULL,
  PRIMARY KEY (`personen_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BBRZ_AG`
--

DROP TABLE IF EXISTS `BBRZ_AG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BBRZ_AG` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'fortlaufende id',
  `ag_id` int(11) NOT NULL COMMENT 'ID der Abschlussgespräche für iCAL',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BBRZ_DATUM`
--

DROP TABLE IF EXISTS `BBRZ_DATUM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BBRZ_DATUM` (
  `id` int(11) NOT NULL,
  `max` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BBRZ_TERMINE`
--

DROP TABLE IF EXISTS `BBRZ_TERMINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BBRZ_TERMINE` (
  `terminid` decimal(11,0) NOT NULL,
  PRIMARY KEY (`terminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BEZIRK`
--

DROP TABLE IF EXISTS `BEZIRK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BEZIRK` (
  `BEZIRK_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BLD_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZIRK_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`BEZIRK_ID`),
  KEY `BLD_ID` (`BLD_ID`),
  KEY `BEZIRK_NAME` (`BEZIRK_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BEZIRK_SIK`
--

DROP TABLE IF EXISTS `BEZIRK_SIK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BEZIRK_SIK` (
  `BEZIRK_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BLD_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZIRK_NAME` char(30) DEFAULT NULL,
  PRIMARY KEY (`BEZIRK_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `BUNDESLAND`
--

DROP TABLE IF EXISTS `BUNDESLAND`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BUNDESLAND` (
  `BLD_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZEICHNUNG` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`BLD_ID`),
  KEY `BEZEICHNUNG` (`BEZEICHNUNG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Bitmaske`
--

DROP TABLE IF EXISTS `Bitmaske`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bitmaske` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(300) NOT NULL,
  `Bezeichnung_en` varchar(300) NOT NULL DEFAULT '',
  `Link` varchar(100) DEFAULT NULL,
  `Typ` int(100) NOT NULL,
  `Bit` int(2) NOT NULL,
  `Subcategory` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Blutdruck`
--

DROP TABLE IF EXISTS `Blutdruck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Blutdruck` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Datum` date DEFAULT NULL,
  `Einnahmezeitpunkt` int(1) DEFAULT NULL,
  `Sys` int(3) DEFAULT NULL,
  `Dia` int(3) DEFAULT NULL,
  `Puls` int(3) DEFAULT NULL,
  `Medikamente` varchar(500) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=787 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CHECK_CHANGES`
--

DROP TABLE IF EXISTS `CHECK_CHANGES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CHECK_CHANGES` (
  `PERSONEN_ID_ARZT` int(11) NOT NULL,
  `lastchanged` datetime NOT NULL,
  PRIMARY KEY (`PERSONEN_ID_ARZT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `CLIENTLOG`
--

DROP TABLE IF EXISTS `CLIENTLOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENTLOG` (
  `ARZTID` int(80) NOT NULL,
  `IP` varchar(255) NOT NULL COMMENT 'IP-Adresse',
  `USERAGENT` varchar(255) NOT NULL COMMENT 'Clientbrowser',
  `BOOKINGTIME` datetime NOT NULL COMMENT 'Buchungszeitpunkt',
  `BEGINN` time NOT NULL COMMENT 'Terminbeginn',
  `TDATUM` date NOT NULL,
  `ENDE` time NOT NULL COMMENT 'Terminende',
  `PID` int(80) NOT NULL COMMENT 'PersonenID',
  `TID` int(80) NOT NULL COMMENT 'Termin_ID'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Protokollierung des Buchungsprozesses';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `COMMUNITY`
--

DROP TABLE IF EXISTS `COMMUNITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMMUNITY` (
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `LINK` text NOT NULL,
  PRIMARY KEY (`PERSONEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `COMPANY`
--

DROP TABLE IF EXISTS `COMPANY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPANY` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` char(80) NOT NULL DEFAULT '',
  `COMPANY_SHORTCUT` char(5) NOT NULL DEFAULT '',
  PRIMARY KEY (`company_id`,`company_name`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `COUNTRY`
--

DROP TABLE IF EXISTS `COUNTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COUNTRY` (
  `CNT_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CNT_ID`),
  KEY `BEZEICHNUNG` (`BEZEICHNUNG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ChargenNumber`
--

DROP TABLE IF EXISTS `ChargenNumber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChargenNumber` (
  `number` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DBALIVE`
--

DROP TABLE IF EXISTS `DBALIVE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DBALIVE` (
  `alive` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DBLOG`
--

DROP TABLE IF EXISTS `DBLOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DBLOG` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `edate` varchar(8) DEFAULT NULL,
  `etime` varchar(4) DEFAULT NULL,
  `decdate` int(11) DEFAULT NULL,
  `dectime` int(11) DEFAULT NULL,
  `etype` char(1) DEFAULT NULL,
  `edose` varchar(20) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mausr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DIA_LABWERT`
--

DROP TABLE IF EXISTS `DIA_LABWERT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DIA_LABWERT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `edate` varchar(8) DEFAULT NULL,
  `blutzucker` char(3) DEFAULT NULL,
  `hb1ac` varchar(20) DEFAULT NULL,
  `cholsterol` char(3) DEFAULT NULL,
  `hdl_chol` char(3) DEFAULT NULL,
  `ldl_chol` char(3) DEFAULT NULL,
  `trigyceride` char(3) DEFAULT NULL,
  `systolisch` char(3) DEFAULT NULL,
  `diastolisch` char(3) DEFAULT NULL,
  `ph_wert` varchar(20) DEFAULT NULL,
  `eiweiss` varchar(20) DEFAULT NULL,
  `glukose` varchar(20) DEFAULT NULL,
  `harnglukose` varchar(20) DEFAULT NULL,
  `ketonkoerper` varchar(20) DEFAULT NULL,
  `leukozyten` varchar(20) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remarks` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DIA_TAGEBUCH`
--

DROP TABLE IF EXISTS `DIA_TAGEBUCH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DIA_TAGEBUCH` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `edate` varchar(8) DEFAULT NULL,
  `blzf1` char(3) DEFAULT NULL,
  `blzm1` char(3) DEFAULT NULL,
  `blza1` char(3) DEFAULT NULL,
  `blzf2` char(3) DEFAULT NULL,
  `blzm2` char(3) DEFAULT NULL,
  `blza2` char(3) DEFAULT NULL,
  `essnf1` char(3) DEFAULT NULL,
  `essnm1` char(3) DEFAULT NULL,
  `essna1` char(3) DEFAULT NULL,
  `essnf2` char(3) DEFAULT NULL,
  `essnm2` char(3) DEFAULT NULL,
  `essna2` char(3) DEFAULT NULL,
  `sportf1` varchar(5) DEFAULT NULL,
  `sportm1` varchar(5) DEFAULT NULL,
  `sporta1` varchar(5) DEFAULT NULL,
  `gewf1` char(3) DEFAULT NULL,
  `blutf1` varchar(5) DEFAULT NULL,
  `blutm1` varchar(5) DEFAULT NULL,
  `bluta1` varchar(5) DEFAULT NULL,
  `blutf2` varchar(5) DEFAULT NULL,
  `blutm2` varchar(5) DEFAULT NULL,
  `bluta2` varchar(5) DEFAULT NULL,
  `medzt1` varchar(5) DEFAULT NULL,
  `medqt1` char(3) DEFAULT NULL,
  `mednm1` varchar(30) DEFAULT NULL,
  `medzt2` varchar(5) DEFAULT NULL,
  `medqt2` char(3) DEFAULT NULL,
  `mednm2` varchar(30) DEFAULT NULL,
  `medzt3` varchar(5) DEFAULT NULL,
  `medqt3` char(3) DEFAULT NULL,
  `mednm3` varchar(30) DEFAULT NULL,
  `medzt4` varchar(5) DEFAULT NULL,
  `medqt4` char(3) DEFAULT NULL,
  `mednm4` varchar(30) DEFAULT NULL,
  `remarks` varchar(60) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DeleteACL`
--

DROP TABLE IF EXISTS `DeleteACL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeleteACL` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(1) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `sub_user` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `RES_KBZ` varchar(200) NOT NULL,
  `pw` varchar(255) NOT NULL,
  `last_changed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DeleteAccount`
--

DROP TABLE IF EXISTS `DeleteAccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeleteAccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pkey',
  `email` varchar(120) NOT NULL COMMENT 'Usermail',
  `login` varchar(120) NOT NULL COMMENT 'Userlogin',
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'timeframe',
  `token` varchar(200) NOT NULL COMMENT 'security token',
  `success` int(1) NOT NULL DEFAULT '0' COMMENT 'delete done',
  `PERSONEN_ID` decimal(11,0) NOT NULL COMMENT 'User ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DeleteLog`
--

DROP TABLE IF EXISTS `DeleteLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeleteLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(11) NOT NULL,
  `sub_id` varchar(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletedAppointments` int(11) NOT NULL,
  `deleteQuery` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DocInfo`
--

DROP TABLE IF EXISTS `DocInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocInfo` (
  `docid` int(11) NOT NULL,
  `portrait` int(1) NOT NULL DEFAULT '0',
  `video` int(1) NOT NULL DEFAULT '0',
  `gallery` int(1) NOT NULL DEFAULT '0',
  `website` int(1) NOT NULL DEFAULT '0',
  `aboutus` int(1) NOT NULL DEFAULT '0',
  `kassen` int(1) NOT NULL DEFAULT '0',
  `logo` int(1) DEFAULT '0',
  `leistungen` int(1) NOT NULL DEFAULT '0',
  `sprachen` int(1) DEFAULT '0',
  `spezialisierungen` int(11) NOT NULL DEFAULT '0',
  `vita` int(1) NOT NULL DEFAULT '0',
  `lastchanged` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `taube` int(1) NOT NULL DEFAULT '0',
  `blinde` int(1) NOT NULL DEFAULT '0',
  `rollstuhl` int(1) NOT NULL DEFAULT '0',
  `utube` varchar(2000) NOT NULL DEFAULT '',
  `prio` int(1) NOT NULL DEFAULT '0',
  `keywords` varchar(5000) NOT NULL DEFAULT '',
  PRIMARY KEY (`docid`),
  KEY `prio` (`prio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DocInfoHistoryCustomer`
--

DROP TABLE IF EXISTS `DocInfoHistoryCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DocInfoHistoryCustomer` (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `docid` decimal(11,0) NOT NULL,
  `IP` varchar(60) NOT NULL,
  `UserAgent` varchar(500) NOT NULL,
  `widget` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pkey`),
  KEY `docid` (`docid`),
  KEY `widget` (`widget`),
  KEY `docid_2` (`docid`,`widget`)
) ENGINE=InnoDB AUTO_INCREMENT=6686488 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FRAGEERGEBNIS`
--

DROP TABLE IF EXISTS `FRAGEERGEBNIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FRAGEERGEBNIS` (
  `schematyp` int(11) NOT NULL DEFAULT '0',
  `vonsumme` int(11) NOT NULL DEFAULT '0',
  `bissumme` int(11) NOT NULL DEFAULT '9999',
  `text1` text,
  `text2` varchar(255) DEFAULT NULL,
  `text3` varchar(255) DEFAULT NULL,
  `text4` varchar(255) DEFAULT NULL,
  `mailtext` text NOT NULL,
  KEY `schematyp` (`schematyp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `FRAGESCHEMA`
--

DROP TABLE IF EXISTS `FRAGESCHEMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FRAGESCHEMA` (
  `schematyp` int(11) NOT NULL DEFAULT '0',
  `auswertefeld` char(30) NOT NULL DEFAULT 'feld1',
  `divisor` int(11) NOT NULL DEFAULT '1',
  `delta` int(11) NOT NULL DEFAULT '0',
  KEY `schematyp` (`schematyp`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GL_LOG`
--

DROP TABLE IF EXISTS `GL_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GL_LOG` (
  `TIL_TEXT` varchar(255) DEFAULT NULL,
  `TIL_USR_ID` int(11) DEFAULT NULL,
  `TIL_TIMESTAMP` datetime DEFAULT NULL,
  `TIL_TYPE` varchar(50) DEFAULT NULL,
  KEY `TIL_TIMESTAMP` (`TIL_TIMESTAMP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GL_MAIL_QUEUE`
--

DROP TABLE IF EXISTS `GL_MAIL_QUEUE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GL_MAIL_QUEUE` (
  `MLQ_ID` int(11) NOT NULL DEFAULT '0',
  `MLQ_FROM` varchar(100) NOT NULL DEFAULT '',
  `MLQ_TO` varchar(100) NOT NULL DEFAULT '',
  `MLQ_SUBJECT` varchar(250) NOT NULL DEFAULT '',
  `MLQ_STATUS` int(11) NOT NULL DEFAULT '0',
  `MLQ_START` datetime DEFAULT NULL,
  `MLQ_SENT` datetime DEFAULT NULL,
  `MLQ_BODY_PLAIN` text,
  `MLQ_BODY_HTML` text,
  PRIMARY KEY (`MLQ_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GL_SEQUENCER`
--

DROP TABLE IF EXISTS `GL_SEQUENCER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GL_SEQUENCER` (
  `SEQ_ID` int(11) NOT NULL DEFAULT '0',
  `SEQ_VALUE` int(11) DEFAULT NULL,
  PRIMARY KEY (`SEQ_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GL_TICKET_LOG`
--

DROP TABLE IF EXISTS `GL_TICKET_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GL_TICKET_LOG` (
  `TIL_TIC_ID` int(11) DEFAULT NULL,
  `TIL_USR_ID` int(11) DEFAULT NULL,
  `TIL_TIMESTAMP` datetime DEFAULT NULL,
  KEY `TIL_TIC_ID` (`TIL_TIC_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GL_VERSION`
--

DROP TABLE IF EXISTS `GL_VERSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GL_VERSION` (
  `VERSION` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `GRP_TO_UART`
--

DROP TABLE IF EXISTS `GRP_TO_UART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `GRP_TO_UART` (
  `GRP_ID` int(11) NOT NULL DEFAULT '0',
  `UART_ID` int(11) NOT NULL DEFAULT '0',
  `DAUER` int(11) DEFAULT NULL,
  `OFFSET` int(11) DEFAULT NULL,
  `REIHUNG` int(11) DEFAULT NULL,
  `isprimary` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`GRP_ID`,`UART_ID`),
  KEY `UART_ID` (`UART_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Gemeinde`
--

DROP TABLE IF EXISTS `Gemeinde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Gemeinde` (
  `ID` int(11) NOT NULL,
  `Gemeinde` varchar(50) NOT NULL,
  `Bezirk_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HAUSARZT`
--

DROP TABLE IF EXISTS `HAUSARZT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HAUSARZT` (
  `PERSONEN_ID_PATIENT` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_ID_ARZT` decimal(11,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PERSONEN_ID_PATIENT`,`PERSONEN_ID_ARZT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HYPERTONIEWERTE`
--

DROP TABLE IF EXISTS `HYPERTONIEWERTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HYPERTONIEWERTE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `edate` varchar(8) DEFAULT NULL,
  `systolisch` char(3) DEFAULT NULL,
  `diastolisch` char(3) DEFAULT NULL,
  `heartbeat` char(3) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remarks` varchar(20) DEFAULT NULL,
  `daytime` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ILFOR`
--

DROP TABLE IF EXISTS `ILFOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ILFOR` (
  `ILINJ_ID` int(11) NOT NULL DEFAULT '0',
  `ILSIC_ID` int(11) NOT NULL DEFAULT '0',
  `TIME_TO_NEXT_INJ` int(11) NOT NULL DEFAULT '0',
  `ILTUN_ID` int(11) NOT NULL DEFAULT '0',
  `TIMEDEC` int(11) NOT NULL DEFAULT '0',
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ILINJ_ID`,`ILSIC_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ILGRP`
--

DROP TABLE IF EXISTS `ILGRP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ILGRP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `MINDESTALTER` int(11) DEFAULT NULL,
  `COMMENTS` varchar(100) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ILIDX`
--

DROP TABLE IF EXISTS `ILIDX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ILIDX` (
  `ILLOG_UID` int(11) NOT NULL DEFAULT '0',
  `ILGRP_ID` int(11) NOT NULL DEFAULT '0',
  `LASTFLAG` int(11) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ILLOG_UID`,`ILGRP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ILINJ`
--

DROP TABLE IF EXISTS `ILINJ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ILINJ` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `ILGRP_ID` int(11) NOT NULL DEFAULT '0',
  `FLNR` int(11) NOT NULL DEFAULT '0',
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ILLOG`
--

DROP TABLE IF EXISTS `ILLOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ILLOG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(11) NOT NULL DEFAULT '0',
  `INJDATE` varchar(10) NOT NULL DEFAULT '',
  `DECDATE` int(11) DEFAULT NULL,
  `ILINJ_ID` int(11) NOT NULL DEFAULT '0',
  `DOSE` varchar(10) DEFAULT NULL,
  `LOT` varchar(20) DEFAULT NULL,
  `DOC` varchar(20) DEFAULT NULL,
  `MNDOCID` varchar(20) DEFAULT NULL,
  `CITY` varchar(20) DEFAULT NULL,
  `COUNTRY` varchar(20) DEFAULT NULL,
  `REMARKS` varchar(50) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ILINJ_ID` (`ILINJ_ID`),
  KEY `UID` (`UID`)
) ENGINE=MyISAM AUTO_INCREMENT=1881 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ILSIC`
--

DROP TABLE IF EXISTS `ILSIC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ILSIC` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  `iltyp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ILTUN`
--

DROP TABLE IF EXISTS `ILTUN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ILTUN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `INDAYS` int(11) NOT NULL DEFAULT '0',
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ILTYP`
--

DROP TABLE IF EXISTS `ILTYP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ILTYP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_ANAMNESE_TEMPLATE`
--

DROP TABLE IF EXISTS `IL_ANAMNESE_TEMPLATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_ANAMNESE_TEMPLATE` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `bezeichnung` varchar(50) DEFAULT NULL,
  `personen_id_arzt` decimal(11,0) DEFAULT NULL,
  PRIMARY KEY (`template_id`),
  KEY `IL_ANAMNESE_TEMPLATE_FK1` (`personen_id_arzt`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_ANAM_TEMPL_KONTRAINDI`
--

DROP TABLE IF EXISTS `IL_ANAM_TEMPL_KONTRAINDI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_ANAM_TEMPL_KONTRAINDI` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `KONTRA_INDI_ID` int(11) DEFAULT NULL,
  `wert` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IL_ANAM_TEMPL_KONTRAINDI_FK1` (`KONTRA_INDI_ID`),
  KEY `IL_ANAM_TEMPL_KONTRAINDI_FK2` (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=351 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_DOSIS`
--

DROP TABLE IF EXISTS `IL_DOSIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_DOSIS` (
  `DOSIS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` char(50) DEFAULT NULL,
  PRIMARY KEY (`DOSIS_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_IMPFEMPFEHLUNGSTEXTE`
--

DROP TABLE IF EXISTS `IL_IMPFEMPFEHLUNGSTEXTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_IMPFEMPFEHLUNGSTEXTE` (
  `KH_ID` int(11) NOT NULL DEFAULT '0',
  `EMPFTEXT` text,
  UNIQUE KEY `KH_ID` (`KH_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_IMPFKOMBINATIONEN`
--

DROP TABLE IF EXISTS `IL_IMPFKOMBINATIONEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_IMPFKOMBINATIONEN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BEZ` char(50) NOT NULL DEFAULT '',
  `MINDESTALTER` int(11) NOT NULL DEFAULT '0',
  `BEMERKUNG` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_IMPFUNGEN_JE_IMPFKOMBINATION`
--

DROP TABLE IF EXISTS `IL_IMPFUNGEN_JE_IMPFKOMBINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_IMPFUNGEN_JE_IMPFKOMBINATION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BEZ` char(60) NOT NULL DEFAULT '',
  `IMPFK_ID` int(11) NOT NULL DEFAULT '0',
  `FOLGENR` int(11) NOT NULL DEFAULT '1',
  `COMMON_NAME` char(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `IMPFK_ID` (`IMPFK_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_IMPFUNGEN_JE_PATIENT`
--

DROP TABLE IF EXISTS `IL_IMPFUNGEN_JE_PATIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_IMPFUNGEN_JE_PATIENT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `IMPF_ID` int(11) NOT NULL DEFAULT '0',
  `IMPF_DAT` date NOT NULL DEFAULT '0000-00-00',
  `DOSIS` varchar(10) DEFAULT '0',
  `CHARGE` varchar(20) DEFAULT NULL,
  `ORT` varchar(20) DEFAULT NULL,
  `LAND` varchar(20) DEFAULT NULL,
  `BEMERK` varchar(255) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ARZT` varchar(100) DEFAULT NULL,
  `PERSONEN_ID_ARZT` int(11) NOT NULL DEFAULT '0',
  `PERSONEN_ID_PAT` int(11) NOT NULL DEFAULT '0',
  `PRODUKT_ID` int(11) NOT NULL DEFAULT '0',
  `DOC_OK` int(11) NOT NULL DEFAULT '0',
  `PAT_OK` int(11) NOT NULL DEFAULT '0',
  `PATIENT_ARZT_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `UPD_IMPF_ID` int(11) NOT NULL DEFAULT '0',
  `UPD_PROD_ID` int(11) NOT NULL DEFAULT '0',
  `dosealt` varchar(10) DEFAULT NULL,
  `titer` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IMPF_ID` (`IMPF_ID`),
  KEY `PERSONEN_ID_PAT` (`PERSONEN_ID_PAT`),
  KEY `PATIENT_ARZT_ID` (`PATIENT_ARZT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30971 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_INDIKATION_KONTRAINDIKATION`
--

DROP TABLE IF EXISTS `IL_INDIKATION_KONTRAINDIKATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_INDIKATION_KONTRAINDIKATION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYP` char(1) DEFAULT NULL,
  `BEZEICHNUNG` tinytext,
  `ERKLÄRUNG` text,
  `SICHTBARKEIT` char(1) NOT NULL DEFAULT 'C',
  `BEZEICHNUNG_SIMPEL` text,
  `dependence_on_age` int(4) NOT NULL DEFAULT '-1',
  `def` tinyint(4) NOT NULL DEFAULT '-1',
  `age_to` smallint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_INDI_KONTRAINDI_JE_KRANKHEIT`
--

DROP TABLE IF EXISTS `IL_INDI_KONTRAINDI_JE_KRANKHEIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_INDI_KONTRAINDI_JE_KRANKHEIT` (
  `INDI_KONTRAINDI_ID` int(11) NOT NULL DEFAULT '0',
  `KH_ID` int(11) NOT NULL DEFAULT '0',
  `INDI_TYPE` char(1) NOT NULL DEFAULT '',
  `schutzdauer` int(4) NOT NULL DEFAULT '0',
  `schutzdauer_txt` char(50) DEFAULT NULL,
  PRIMARY KEY (`INDI_KONTRAINDI_ID`,`KH_ID`),
  KEY `KH_ID` (`KH_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_INDI_KONTRAINDI_JE_PATIENT`
--

DROP TABLE IF EXISTS `IL_INDI_KONTRAINDI_JE_PATIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_INDI_KONTRAINDI_JE_PATIENT` (
  `INDI_KONTRAINDI_ID` int(11) NOT NULL DEFAULT '0',
  `WERT` tinyint(11) NOT NULL DEFAULT '0',
  `PERSONEN_ID` bigint(21) NOT NULL DEFAULT '0',
  `PATIENT_ARZT_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `UPD_INDI_KONTRAINDI_ID` int(11) DEFAULT NULL,
  KEY `INDI_KONTRAINDI_ID` (`INDI_KONTRAINDI_ID`),
  KEY `PATIENT_ARZT_ID` (`PATIENT_ARZT_ID`),
  KEY `PERSONEN_ID` (`PERSONEN_ID`),
  KEY `WERT` (`WERT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_KRANKHEITEN`
--

DROP TABLE IF EXISTS `IL_KRANKHEITEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_KRANKHEITEN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BEZ` char(50) NOT NULL DEFAULT '',
  `ETYP_ID` int(11) NOT NULL DEFAULT '0',
  `LBEZ` char(255) DEFAULT NULL,
  `ZUSATZB` char(255) DEFAULT NULL,
  `reminder_date` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `BEZ` (`BEZ`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_KRANKHEITEN_JE_IMPFKOMBINATION`
--

DROP TABLE IF EXISTS `IL_KRANKHEITEN_JE_IMPFKOMBINATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_KRANKHEITEN_JE_IMPFKOMBINATION` (
  `KH_ID` int(11) NOT NULL DEFAULT '0',
  `IMPFKOMB_ID` int(11) NOT NULL DEFAULT '0',
  `BEMERK` char(255) DEFAULT NULL,
  UNIQUE KEY `KH_ID` (`KH_ID`,`IMPFKOMB_ID`),
  KEY `IMPFKOMB_ID` (`IMPFKOMB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_PRODUKTE`
--

DROP TABLE IF EXISTS `IL_PRODUKTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_PRODUKTE` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `BEZ` char(50) NOT NULL DEFAULT '',
  `FIRMA` char(255) DEFAULT NULL,
  `BEMERKUNG` char(255) DEFAULT NULL,
  `IMPFK_ID` int(11) NOT NULL DEFAULT '0',
  `company_id` int(11) NOT NULL DEFAULT '0',
  `dosis` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_SCHUTZZEIT`
--

DROP TABLE IF EXISTS `IL_SCHUTZZEIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_SCHUTZZEIT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KH_ID` int(11) NOT NULL DEFAULT '0',
  `IMPF_ID` int(11) NOT NULL DEFAULT '0',
  `TAGEBISNEXT` int(11) NOT NULL DEFAULT '0',
  `protection_txt` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `KH_ID` (`KH_ID`,`IMPF_ID`),
  KEY `IMPF_ID` (`IMPF_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=388 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_SYNONYM`
--

DROP TABLE IF EXISTS `IL_SYNONYM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_SYNONYM` (
  `SYNONYM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REGEX` char(100) DEFAULT NULL,
  `TAB_ASSIGNMENT` int(11) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`SYNONYM_ID`),
  KEY `REGEX` (`REGEX`),
  KEY `TAB_ASSIGNMENT` (`TAB_ASSIGNMENT`),
  KEY `ID` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `IL_TITER_JE_PATIENT`
--

DROP TABLE IF EXISTS `IL_TITER_JE_PATIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `IL_TITER_JE_PATIENT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TITER_DAT` date NOT NULL DEFAULT '0000-00-00',
  `ORT` varchar(20) DEFAULT NULL,
  `LAND` varchar(20) DEFAULT NULL,
  `BEMERK` varchar(255) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ARZT` varchar(100) DEFAULT NULL,
  `PERSONEN_ID_ARZT` int(11) DEFAULT NULL,
  `PERSONEN_ID_PAT` int(11) NOT NULL DEFAULT '0',
  `DOC_OK` int(11) DEFAULT NULL,
  `PAT_OK` int(11) NOT NULL DEFAULT '0',
  `PATIENT_ARZT_ID` decimal(11,0) DEFAULT NULL,
  `TITERWERT` float DEFAULT NULL,
  `TITERSCHUTZBIS` date DEFAULT NULL,
  `KH_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `KH_ID` (`KH_ID`),
  KEY `PERSONEN_ID_PAT` (`PERSONEN_ID_PAT`),
  KEY `PATIENT_ARZT_ID` (`PATIENT_ARZT_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `INCOME`
--

DROP TABLE IF EXISTS `INCOME`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INCOME` (
  `INC_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZEICHNUNG` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`INC_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `INDIKATION_KONTRAINDIKATION`
--

DROP TABLE IF EXISTS `INDIKATION_KONTRAINDIKATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INDIKATION_KONTRAINDIKATION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYP` char(1) DEFAULT NULL,
  `BEZEICHNUNG` tinytext,
  `ERKLÄRUNG` text,
  `SICHTBARKEIT` char(1) DEFAULT NULL,
  `BEZEICHNUNG_SIMPEL` text,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `INDI_KONTRAINDI_JE_PATIENT`
--

DROP TABLE IF EXISTS `INDI_KONTRAINDI_JE_PATIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INDI_KONTRAINDI_JE_PATIENT` (
  `INDI_KONTRAINDI_ID` int(11) DEFAULT NULL,
  `WERT` int(11) DEFAULT NULL,
  `PERSONEN_ID` bigint(21) DEFAULT NULL,
  KEY `PERSONEN_ID` (`PERSONEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ImpfenHistoryCustomer`
--

DROP TABLE IF EXISTS `ImpfenHistoryCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ImpfenHistoryCustomer` (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` decimal(11,0) NOT NULL,
  `IP` varchar(60) NOT NULL,
  `UserAgent` varchar(1000) NOT NULL,
  PRIMARY KEY (`pkey`)
) ENGINE=InnoDB AUTO_INCREMENT=14618 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `JOBS`
--

DROP TABLE IF EXISTS `JOBS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `JOBS` (
  `JOB_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZEICHNUNG` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`),
  KEY `BEZEICHNUNG` (`BEZEICHNUNG`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `KASSE`
--

DROP TABLE IF EXISTS `KASSE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `KASSE` (
  `KASSE_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BLD_ID` int(11) DEFAULT NULL,
  `KASSE_NAME` varchar(40) DEFAULT NULL,
  `beschreibung` varchar(50) DEFAULT NULL,
  `KASSE_SORTER` int(11) DEFAULT NULL,
  PRIMARY KEY (`KASSE_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LOGIN_ACTION`
--

DROP TABLE IF EXISTS `LOGIN_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOGIN_ACTION` (
  `PERSONEN_ID` int(11) NOT NULL,
  `SUBUSER_ID` int(11) NOT NULL,
  `ACTION_DATETIME` datetime NOT NULL,
  `ACTION_TYPE` varchar(20) NOT NULL,
  `SESSION_ID` varchar(50) NOT NULL,
  KEY `PERSONEN_ID` (`PERSONEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `LoginHistoryCustomer`
--

DROP TABLE IF EXISTS `LoginHistoryCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LoginHistoryCustomer` (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(300) NOT NULL,
  `success` int(1) NOT NULL,
  `IP` varchar(60) NOT NULL,
  `UserAgent` varchar(500) NOT NULL,
  PRIMARY KEY (`pkey`)
) ENGINE=InnoDB AUTO_INCREMENT=89057 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MEREG`
--

DROP TABLE IF EXISTS `MEREG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MEREG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UID` int(11) NOT NULL DEFAULT '0',
  `MENAME` varchar(20) DEFAULT NULL,
  `MEFOR` varchar(50) DEFAULT NULL,
  `MEDOSE` varchar(20) DEFAULT NULL,
  `MEPRE` varchar(30) DEFAULT NULL,
  `MEEXP` varchar(8) DEFAULT NULL,
  `DECMEEXP` int(11) DEFAULT NULL,
  `MEBEG` varchar(8) DEFAULT NULL,
  `MEEND` varchar(8) DEFAULT NULL,
  `MEANT` char(1) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MAUSR_ID` int(11) DEFAULT NULL,
  `taking` varchar(3) NOT NULL DEFAULT '000',
  PRIMARY KEY (`ID`),
  KEY `UID` (`UID`),
  KEY `DECMEEXP` (`DECMEEXP`),
  KEY `MAUSR_ID` (`MAUSR_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=24780 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `METAKETTE`
--

DROP TABLE IF EXISTS `METAKETTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `METAKETTE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docid` decimal(11,0) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zuweiser` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `METAKETTE_TO_KETTE`
--

DROP TABLE IF EXISTS `METAKETTE_TO_KETTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `METAKETTE_TO_KETTE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `metaID` int(11) NOT NULL,
  `kettenID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MLBCP`
--

DROP TABLE IF EXISTS `MLBCP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MLBCP` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `bdate` varchar(8) NOT NULL DEFAULT '',
  `decbdate` int(11) NOT NULL DEFAULT '0',
  `edate` varchar(8) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `cycle` int(11) NOT NULL DEFAULT '0',
  `comments` varchar(50) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mausr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MLREM`
--

DROP TABLE IF EXISTS `MLREM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MLREM` (
  `uid` int(11) NOT NULL DEFAULT '0',
  `buyremindafter` int(11) DEFAULT NULL,
  `buyremindvia` int(11) DEFAULT NULL,
  `takebcpat` int(11) DEFAULT NULL,
  `takeremindvia` int(11) DEFAULT NULL,
  `stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mausr_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MN_MENSTRUATION_ENTRY`
--

DROP TABLE IF EXISTS `MN_MENSTRUATION_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MN_MENSTRUATION_ENTRY` (
  `MNE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MNE_USR_ID` int(11) NOT NULL DEFAULT '0',
  `MNE_BL_START` datetime DEFAULT NULL,
  `MNE_BL_END` datetime DEFAULT NULL,
  `MNE_PILLE` int(11) DEFAULT NULL,
  `MNE_PILLE_TYPE` int(11) DEFAULT NULL,
  `MNE_PILLE_START` datetime DEFAULT NULL,
  `MNE_PILLE_END` datetime DEFAULT NULL,
  `MNE_PILLE_NAME` varchar(200) DEFAULT NULL,
  `MNE_TIMESTAMP` datetime DEFAULT NULL,
  `MNE_BL_STA_ESTIMATE` datetime DEFAULT NULL,
  `MNE_OK` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`MNE_ID`),
  KEY `MNE_USR_ID` (`MNE_USR_ID`),
  KEY `MNE_BL_END` (`MNE_BL_END`),
  KEY `MNE_BL_START` (`MNE_BL_START`)
) ENGINE=MyISAM AUTO_INCREMENT=13998 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MN_MENSTRUATION_EXT`
--

DROP TABLE IF EXISTS `MN_MENSTRUATION_EXT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MN_MENSTRUATION_EXT` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` decimal(11,0) NOT NULL,
  `datum` date NOT NULL,
  `blutung` int(1) NOT NULL DEFAULT '0',
  `temperatur` int(1) NOT NULL DEFAULT '0',
  `stimmung` int(1) NOT NULL DEFAULT '0',
  `liebe` int(1) NOT NULL DEFAULT '0',
  `anmerkung` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`datum`)
) ENGINE=InnoDB AUTO_INCREMENT=491 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MN_REMINDER`
--

DROP TABLE IF EXISTS `MN_REMINDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MN_REMINDER` (
  `RMD_ID` int(11) NOT NULL DEFAULT '0',
  `RMD_NAME` varchar(30) NOT NULL DEFAULT '',
  `RMD_SUBJECT` varchar(80) DEFAULT NULL,
  `RMD_MESSAGE_PLAIN` text,
  `RMD_MESSAGE_HTML` text,
  PRIMARY KEY (`RMD_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MN_REMINDER_USER`
--

DROP TABLE IF EXISTS `MN_REMINDER_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MN_REMINDER_USER` (
  `RMU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RMU_USR_ID` int(11) NOT NULL DEFAULT '0',
  `RMU_RMD_ID` int(11) NOT NULL DEFAULT '0',
  `RMU_ENABLED` int(11) DEFAULT NULL,
  `RMU_TIME` datetime DEFAULT NULL,
  `RMU_SENT` int(11) DEFAULT NULL,
  `now` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`RMU_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=16184 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MN_REMINDER_USER2`
--

DROP TABLE IF EXISTS `MN_REMINDER_USER2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MN_REMINDER_USER2` (
  `RMU_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RMU_USR_ID` int(11) NOT NULL DEFAULT '0',
  `RMU_RMD_ID` int(11) NOT NULL DEFAULT '0',
  `RMU_ENABLED` int(11) DEFAULT NULL,
  `RMU_TIME` datetime DEFAULT NULL,
  `RMU_SENT` int(11) DEFAULT NULL,
  PRIMARY KEY (`RMU_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=707 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MONAT`
--

DROP TABLE IF EXISTS `MONAT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MONAT` (
  `MON_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MON_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MULTIORDI`
--

DROP TABLE IF EXISTS `MULTIORDI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MULTIORDI` (
  `arzt_id` int(10) DEFAULT NULL,
  `RES_ID` int(100) DEFAULT NULL,
  `TITEL` varchar(2000) NOT NULL,
  `VNAME` varchar(2000) NOT NULL,
  `NNAME` varchar(2000) NOT NULL,
  `WWW` varchar(2000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MaxSubUser`
--

DROP TABLE IF EXISTS `MaxSubUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MaxSubUser` (
  `Arzt_ID` int(11) NOT NULL,
  `max_Subusern` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MensCalHistoryCustomer`
--

DROP TABLE IF EXISTS `MensCalHistoryCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MensCalHistoryCustomer` (
  `pkey` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` decimal(11,0) NOT NULL,
  `IP` varchar(60) NOT NULL,
  `UserAgent` varchar(1000) NOT NULL,
  PRIMARY KEY (`pkey`)
) ENGINE=InnoDB AUTO_INCREMENT=12052 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ORDIZEIT`
--

DROP TABLE IF EXISTS `ORDIZEIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORDIZEIT` (
  `ordizeit_id` int(11) NOT NULL AUTO_INCREMENT,
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `ORDIZEIT_WOTAG` int(11) NOT NULL DEFAULT '0',
  `ORDIZEIT_VON` time NOT NULL DEFAULT '00:00:00',
  `ORDIZEIT_BIS` time DEFAULT NULL,
  `isactivefrom` date DEFAULT '1990-01-01',
  PRIMARY KEY (`ordizeit_id`),
  KEY `PERSONEN_ID` (`PERSONEN_ID`),
  KEY `ORDIZEIT_WOTAG` (`ORDIZEIT_WOTAG`),
  KEY `ORDIZEIT_VON` (`ORDIZEIT_VON`)
) ENGINE=MyISAM AUTO_INCREMENT=266512 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Orte`
--

DROP TABLE IF EXISTS `Orte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orte` (
  `ID` int(11) NOT NULL,
  `Ortsname` varchar(50) NOT NULL,
  `Gemeinde_ID` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PATIENT_ARZT`
--

DROP TABLE IF EXISTS `PATIENT_ARZT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT_ARZT` (
  `PERSONEN_ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PERSONEN_NAME` varchar(30) DEFAULT NULL,
  `PERSONEN_VNAME` varchar(30) DEFAULT NULL,
  `PERSONEN_LOGIN` varchar(15) DEFAULT NULL,
  `PAT_ID` bigint(21) DEFAULT NULL,
  `PERSONEN_GEBDAT` date DEFAULT NULL,
  `PERSONEN_PASS` varchar(20) DEFAULT NULL,
  `PERSONSUBTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_EMAIL` varchar(50) DEFAULT '',
  `PERSONEN_STRA` varchar(50) DEFAULT '',
  `PERSONEN_TEL` varchar(30) DEFAULT NULL,
  `PERSONEN_PLZ` varchar(5) DEFAULT '',
  `PERSONEN_ORT` varchar(80) DEFAULT '',
  `PERSONEN_FREI` int(11) DEFAULT NULL,
  `PERSONEN_FREIPIN` varchar(10) DEFAULT NULL,
  `BLD_ID` decimal(11,0) DEFAULT '0',
  `BEZIRK_ID` decimal(11,0) DEFAULT '0',
  `ORD_STRA` varchar(30) DEFAULT NULL,
  `ORD_PLZ` varchar(5) DEFAULT NULL,
  `ORD_ORT` varchar(80) DEFAULT NULL,
  `ORD_EMAIL` varchar(30) DEFAULT NULL,
  `ORD_TEL` varchar(20) DEFAULT NULL,
  `PERSONEN_REG_STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NOSEARCH` tinyint(4) DEFAULT NULL,
  `REFERENCE_ID` bigint(20) DEFAULT NULL,
  `DEMO` tinyint(4) DEFAULT NULL,
  `ARZT_ID` decimal(11,0) DEFAULT NULL,
  `PER_TITEL` varchar(30) DEFAULT NULL,
  `PER_ANREDE` char(1) DEFAULT NULL,
  `PER_MOBILE` varchar(30) DEFAULT '',
  `ANMERK` varchar(255) DEFAULT NULL,
  `SVNR` varchar(12) DEFAULT NULL,
  `MEDNANNY_USER_ID` decimal(11,0) DEFAULT NULL,
  `EXTID` decimal(11,0) DEFAULT NULL,
  `klasse_id` int(11) DEFAULT NULL,
  `schule_id` int(11) DEFAULT NULL,
  `ms_synczeitpkt` timestamp NULL DEFAULT NULL,
  `ms_synccounter` int(11) NOT NULL DEFAULT '0',
  `ms_quelle` varchar(255) DEFAULT NULL,
  `Reminder` int(11) NOT NULL DEFAULT '1',
  `Last_Update_Iphone` timestamp NOT NULL DEFAULT '2011-05-31 22:00:00',
  `PERSONEN_KASSE` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`PERSONEN_ID`),
  KEY `idx_extID_patient_arzt` (`EXTID`),
  KEY `MEDNANNY_USER_ID` (`MEDNANNY_USER_ID`),
  KEY `PERSONEN_NAME` (`PERSONEN_NAME`,`PERSONEN_VNAME`),
  KEY `idx_pat_idnam` (`ARZT_ID`,`PERSONEN_NAME`),
  FULLTEXT KEY `FullTextFirstAndSurname` (`PERSONEN_NAME`,`PERSONEN_VNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=7979728 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PATIENT_NOTIZ`
--

DROP TABLE IF EXISTS `PATIENT_NOTIZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PATIENT_NOTIZ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personen_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `art` varchar(1) NOT NULL DEFAULT 'X',
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PAT_LASS`
--

DROP TABLE IF EXISTS `PAT_LASS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PAT_LASS` (
  `PAT_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `DOC_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `MODULE` int(11) DEFAULT NULL,
  `TYPE` int(11) DEFAULT NULL,
  KEY `PAT_ID` (`PAT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN`
--

DROP TABLE IF EXISTS `PERSONEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN` (
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_NAME` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_VNAME` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_LOGIN` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_PASS` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONSUBTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_EMAIL` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_STRA` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_TEL` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_PLZ` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_ORT` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_FREI` int(11) DEFAULT NULL,
  `PERSONEN_FREIPIN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `BLD_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZIRK_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `ORD_STRA` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `ORD_STRA_GOOGLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORD_PLZ` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `ORD_ORT` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `ORD_EMAIL` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `ORD_TEL` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_REG_STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NOSEARCH` tinyint(4) DEFAULT NULL,
  `REFERENCE_ID` bigint(20) DEFAULT NULL,
  `DEMO` tinyint(4) DEFAULT NULL,
  `SVNR` varchar(12) CHARACTER SET latin1 DEFAULT '',
  `AUTOREG` int(11) DEFAULT '0',
  `SVNR_GEBDAT` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `EXTID` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `UPDATED` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_XPASS` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DEF_UART` decimal(11,0) DEFAULT NULL,
  `LOGIN` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sva_user` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'null=mednanny, 1=sva, 2=beides',
  `Zusatzfach` int(11) NOT NULL DEFAULT '-1',
  `sva_id_liste` int(11) DEFAULT NULL,
  `familycode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userimage` longtext COLLATE utf8_unicode_ci COMMENT 'nice picture',
  `lastchanged` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `doctor_eid` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PERSONEN_ID`),
  KEY `PERSONEN_LOGIN` (`PERSONEN_LOGIN`),
  KEY `personen_name` (`PERSONEN_NAME`,`PERSONEN_VNAME`),
  KEY `NOSEARCH` (`NOSEARCH`),
  KEY `BLD_ID` (`BLD_ID`),
  KEY `BEZIRK_ID` (`BEZIRK_ID`),
  KEY `PERSONTYP_ID` (`PERSONTYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_EXT`
--

DROP TABLE IF EXISTS `PERSONEN_EXT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_EXT` (
  `PERSEXT_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BDAY` date DEFAULT NULL,
  `SEX` char(1) DEFAULT 'M',
  `DEGREE` varchar(30) DEFAULT NULL,
  `COUNTRY` decimal(11,0) DEFAULT NULL,
  `KIDS` decimal(11,0) DEFAULT NULL,
  `JOB` decimal(11,0) DEFAULT NULL,
  `INCOME` decimal(11,0) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SUBSCRIPTION` varchar(100) DEFAULT NULL,
  `zugangsart_id` int(11) DEFAULT NULL,
  `PER_SMS` tinyint(4) DEFAULT NULL,
  `PER_NEWS` tinyint(4) DEFAULT NULL,
  `PER_MOBILE` varchar(30) DEFAULT NULL,
  `letter_otv` int(1) NOT NULL DEFAULT '0',
  `letter_homoeo` int(1) NOT NULL DEFAULT '0',
  `letter_diabetes` int(1) NOT NULL DEFAULT '0',
  `letter_allergien` int(1) NOT NULL DEFAULT '0',
  `letter_wellness` int(1) NOT NULL DEFAULT '0',
  `letter_hormone` int(1) NOT NULL DEFAULT '0',
  `letter_versicherungen` int(1) NOT NULL DEFAULT '0',
  `letter_wissenschaft` int(1) NOT NULL DEFAULT '0',
  `letter_jobs` int(1) NOT NULL DEFAULT '0',
  `letter_haar` int(1) NOT NULL DEFAULT '0',
  `letter_schlaf` int(1) NOT NULL DEFAULT '0',
  `letter_diaet` int(1) NOT NULL DEFAULT '0',
  `letter_essen` int(1) NOT NULL DEFAULT '0',
  `letter_impfungen` int(1) NOT NULL DEFAULT '0',
  `letter_gesundheitsvorsorge` int(1) NOT NULL DEFAULT '0',
  `sens_agb_akzeptiert` int(1) NOT NULL DEFAULT '0',
  `sens_agb_time` timestamp NULL DEFAULT NULL,
  `sens_zusendung_akzeptiert` int(1) NOT NULL DEFAULT '1',
  `doctena_popup_akzeptiert` int(1) NOT NULL DEFAULT '0',
  `doctena_popup_time` timestamp NULL DEFAULT NULL,
  `doctena_werbung_akzeptiert` int(1) NOT NULL DEFAULT '0',
  `doctena_werbung_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PERSEXT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_EXT_ARZT`
--

DROP TABLE IF EXISTS `PERSONEN_EXT_ARZT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_EXT_ARZT` (
  `personen_id` decimal(11,0) NOT NULL DEFAULT '0',
  `kalenderstart` int(11) DEFAULT '8',
  `kalenderende` int(11) DEFAULT '20',
  `maxraumanzahl` int(11) DEFAULT '1',
  `deftagesansicht` int(11) DEFAULT '0',
  `defterminlaenge` int(11) DEFAULT '10',
  `titel` varchar(50) DEFAULT NULL,
  `titel_post` varchar(50) NOT NULL DEFAULT '' COMMENT 'Postgradualer Titel',
  `www` varchar(500) DEFAULT NULL,
  `fb` varchar(500) NOT NULL DEFAULT '',
  `twitter` varchar(500) NOT NULL DEFAULT '',
  `defsuchmodus` tinyint(4) DEFAULT NULL,
  `LASTSESSION` varchar(50) DEFAULT NULL,
  `BEHGER` int(11) DEFAULT NULL,
  `LOGO` varchar(50) DEFAULT NULL,
  `FNLOGO` varchar(50) DEFAULT NULL,
  `rowheight` int(11) DEFAULT NULL,
  `rowheight_weekview` int(11) DEFAULT NULL,
  `maxcolumns` int(11) DEFAULT '5',
  `extrainfo` text,
  `extraordiinfo` text,
  `last_backup` datetime DEFAULT NULL,
  `institut` varchar(50) DEFAULT NULL,
  `calendarlogo` varchar(50) DEFAULT '../docsite/images/logodoctena.png',
  `calendartext` varchar(50) DEFAULT NULL,
  `COMMUNITY` decimal(11,0) DEFAULT '-1',
  `weekview_days` smallint(6) NOT NULL DEFAULT '6',
  `COLOR_HOLIDAYS1` varchar(10) DEFAULT NULL,
  `COLOR_HOLIDAYS2` varchar(10) DEFAULT NULL,
  `module` varchar(50) NOT NULL DEFAULT '1111011111111111111010100001110000',
  `crc` bigint(21) NOT NULL DEFAULT '0',
  `kalender_displaymodus` tinyint(4) NOT NULL DEFAULT '3',
  `kalender_overlapping` int(1) NOT NULL DEFAULT '1' COMMENT 'sind überlappungen im kalender möglich?',
  `VORANMELDUNG` char(1) DEFAULT NULL,
  `anamnese_template_id` int(11) DEFAULT NULL,
  `absagemail` varchar(1) NOT NULL DEFAULT '1',
  `contact_pref` smallint(6) NOT NULL DEFAULT '1',
  `customer_personal_code` char(20) DEFAULT NULL,
  `fax_nr` varchar(30) DEFAULT NULL,
  `sva_agb_gelesen` int(11) DEFAULT '0',
  `contact_mobile` varchar(255) DEFAULT NULL,
  `snapToGrid` int(1) NOT NULL DEFAULT '0',
  `insert_holidays` int(11) NOT NULL DEFAULT '0',
  `cc_sva_agb_gelesen` int(11) DEFAULT '0',
  `sva_hinweis_gelesen` int(1) NOT NULL DEFAULT '0',
  `sva_hinweis_timestamp` timestamp NULL DEFAULT NULL,
  `sva_testbegin` timestamp NULL DEFAULT NULL,
  `mobile_active` varchar(1) NOT NULL DEFAULT '0',
  `reminderResAnzahl` int(11) NOT NULL DEFAULT '0',
  `terminzeilen` int(11) NOT NULL DEFAULT '1',
  `ShortCut` varchar(4) NOT NULL DEFAULT 'KA',
  `shortcut_enabled` tinyint(4) NOT NULL DEFAULT '0',
  `COLOR_DIENSTZEIT` varchar(10) DEFAULT NULL,
  `dragdrop_enabled` tinyint(4) NOT NULL DEFAULT '1',
  `premium` int(11) NOT NULL DEFAULT '0',
  `patient_assigned_date_enabled` smallint(6) NOT NULL DEFAULT '0',
  `htmlmail` varchar(1) NOT NULL DEFAULT '0',
  `taxi` int(1) NOT NULL DEFAULT '0',
  `gebsprach` int(1) NOT NULL DEFAULT '0',
  `OP` varchar(1) NOT NULL DEFAULT '0',
  `TLogging` int(1) NOT NULL DEFAULT '0',
  `BOOKINGSMS` int(1) NOT NULL DEFAULT '0' COMMENT 'SMS nach Buchung',
  `LINKMRWK` int(1) NOT NULL DEFAULT '0',
  `LINKRES` int(1) NOT NULL DEFAULT '1',
  `SUBUSER_DATA_ANONYM` smallint(1) NOT NULL DEFAULT '0' COMMENT 'Termine bei Subuser anonymisieren',
  `calgranularity` tinyint(4) NOT NULL DEFAULT '2',
  `calhtmlsettings` varchar(255) DEFAULT NULL,
  `UI_STAMMDATENEXPORT` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Stammdatenimport über Kalendermaske',
  `UI_BIG` int(1) NOT NULL DEFAULT '0',
  `UI_TAG` varchar(100) DEFAULT NULL,
  `UI_MRWK` varchar(100) DEFAULT NULL,
  `CNAME` varchar(25) DEFAULT NULL,
  `RATING` varchar(1) NOT NULL DEFAULT '1' COMMENT '0=ausgeschaltet',
  `RATING_NURSTERNE` int(1) NOT NULL DEFAULT '0',
  `RATING_ERLAUBT` int(1) NOT NULL DEFAULT '1' COMMENT '0=kein rating',
  `RATING_VERSTECKEN` int(1) NOT NULL DEFAULT '0' COMMENT '1= ausgeblendetes verstecken',
  `RATING_DURCHSCHNITT` decimal(11,0) NOT NULL DEFAULT '0',
  `RATING_WEITEREMPFEHLUNG` int(11) NOT NULL DEFAULT '0',
  `SEX` varchar(1) NOT NULL DEFAULT 'M' COMMENT 'Geschlecht des Kunden',
  `KUNDE` int(1) NOT NULL DEFAULT '0' COMMENT '1 wenn mednanny Kunde',
  `SVNR_MODUS` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=normal, 0=keine svnr nötig',
  `welcomemsg` varchar(5000) NOT NULL DEFAULT '',
  `adresseinfo` varchar(500) NOT NULL DEFAULT '',
  `leistungsinfo` varchar(6000) NOT NULL DEFAULT '',
  `maxBuchungsdatum` date NOT NULL DEFAULT '2020-01-01',
  `language` varchar(2) NOT NULL DEFAULT 'de',
  PRIMARY KEY (`personen_id`),
  KEY `institut` (`institut`),
  KEY `COMMUNITY` (`COMMUNITY`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_EXT_BKP`
--

DROP TABLE IF EXISTS `PERSONEN_EXT_BKP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_EXT_BKP` (
  `PERSEXT_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BDAY` date DEFAULT NULL,
  `SEX` char(1) DEFAULT 'M',
  `DEGREE` varchar(30) DEFAULT NULL,
  `COUNTRY` decimal(11,0) DEFAULT NULL,
  `KIDS` decimal(11,0) DEFAULT NULL,
  `JOB` decimal(11,0) DEFAULT NULL,
  `INCOME` decimal(11,0) DEFAULT NULL,
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SUBSCRIPTION` varchar(100) DEFAULT NULL,
  `zugangsart_id` int(11) DEFAULT NULL,
  `PER_SMS` tinyint(4) DEFAULT NULL,
  `PER_NEWS` tinyint(4) DEFAULT NULL,
  `PER_MOBILE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PERSEXT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_EXT_HTX`
--

DROP TABLE IF EXISTS `PERSONEN_EXT_HTX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_EXT_HTX` (
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `CLASS` varchar(40) NOT NULL DEFAULT '',
  `TYPE` tinyint(4) NOT NULL DEFAULT '1',
  `HTX` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`PERSONEN_ID`,`CLASS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_EXT_ZUGANG`
--

DROP TABLE IF EXISTS `PERSONEN_EXT_ZUGANG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_EXT_ZUGANG` (
  `PERSEXT_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `zugangsart` varchar(100) DEFAULT NULL,
  `zugangsart_id` int(11) DEFAULT NULL,
  `zugangsbemerkung` varchar(200) DEFAULT NULL,
  KEY `PERSEXT_ID` (`PERSEXT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_GENERALI`
--

DROP TABLE IF EXISTS `PERSONEN_GENERALI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_GENERALI` (
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_NAME` varchar(30) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_VNAME` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_LOGIN` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_PASS` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONSUBTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_EMAIL` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_STRA` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_TEL` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_PLZ` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_ORT` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_FREI` int(11) DEFAULT NULL,
  `PERSONEN_FREIPIN` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `BLD_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZIRK_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `ORD_STRA` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `ORD_STRA_GOOGLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORD_PLZ` varchar(5) CHARACTER SET latin1 DEFAULT NULL,
  `ORD_ORT` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `ORD_EMAIL` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `ORD_TEL` varchar(80) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_REG_STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NOSEARCH` tinyint(4) DEFAULT NULL,
  `REFERENCE_ID` bigint(20) DEFAULT NULL,
  `DEMO` tinyint(4) DEFAULT NULL,
  `SVNR` varchar(12) CHARACTER SET latin1 DEFAULT '',
  `AUTOREG` int(11) DEFAULT '0',
  `SVNR_GEBDAT` varchar(15) CHARACTER SET latin1 DEFAULT NULL,
  `EXTID` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `UPDATED` char(1) CHARACTER SET latin1 DEFAULT NULL,
  `PERSONEN_XPASS` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `DEF_UART` decimal(11,0) DEFAULT NULL,
  `LOGIN` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `sva_user` varchar(5) CHARACTER SET latin1 DEFAULT NULL COMMENT 'null=mednanny, 1=sva, 2=beides',
  `Zusatzfach` int(11) NOT NULL DEFAULT '-1',
  `sva_id_liste` int(11) DEFAULT NULL,
  `familycode` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userimage` longtext COLLATE utf8_unicode_ci COMMENT 'nice picture',
  `lastchanged` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `doctor_eid` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`PERSONEN_ID`),
  KEY `PERSONEN_LOGIN` (`PERSONEN_LOGIN`),
  KEY `personen_name` (`PERSONEN_NAME`,`PERSONEN_VNAME`),
  KEY `NOSEARCH` (`NOSEARCH`),
  KEY `BLD_ID` (`BLD_ID`),
  KEY `BEZIRK_ID` (`BEZIRK_ID`),
  KEY `PERSONTYP_ID` (`PERSONTYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_GEOLOCATION`
--

DROP TABLE IF EXISTS `PERSONEN_GEOLOCATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_GEOLOCATION` (
  `id` decimal(11,0) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_KASSEN`
--

DROP TABLE IF EXISTS `PERSONEN_KASSEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_KASSEN` (
  `KASSE_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`KASSE_ID`,`PERSONEN_ID`),
  KEY `personen_id` (`PERSONEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_NEWS`
--

DROP TABLE IF EXISTS `PERSONEN_NEWS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_NEWS` (
  `PERSONEN_ID` decimal(11,0) DEFAULT NULL,
  `TOP_ID` decimal(11,0) DEFAULT NULL,
  KEY `PERSONEN_ID` (`PERSONEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_SPEZ`
--

DROP TABLE IF EXISTS `PERSONEN_SPEZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_SPEZ` (
  `SPEZ_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `mdb_id` decimal(11,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SPEZ_ID`,`PERSONEN_ID`),
  KEY `PERSONEN_ID` (`PERSONEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_SPEZ2`
--

DROP TABLE IF EXISTS `PERSONEN_SPEZ2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_SPEZ2` (
  `SPEZ_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `mdb_id` decimal(11,0) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_SPEZ3`
--

DROP TABLE IF EXISTS `PERSONEN_SPEZ3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_SPEZ3` (
  `SPEZ_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `mdb_id` decimal(11,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`SPEZ_ID`,`PERSONEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONEN_SPRACH`
--

DROP TABLE IF EXISTS `PERSONEN_SPRACH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONEN_SPRACH` (
  `SPRACH_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  KEY `PERSONEN_ID` (`PERSONEN_ID`),
  KEY `SPRACH_ID` (`SPRACH_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONHOMEPAGE`
--

DROP TABLE IF EXISTS `PERSONHOMEPAGE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONHOMEPAGE` (
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `KASSEN` varchar(254) DEFAULT NULL,
  `ORDINATION` varchar(254) DEFAULT NULL,
  `BILD` varchar(80) DEFAULT NULL,
  `FREITEXT` mediumtext,
  `WWW` varchar(255) DEFAULT NULL,
  `bildextension` varchar(30) DEFAULT NULL,
  `header1` varchar(255) DEFAULT NULL,
  `header2` varchar(255) DEFAULT NULL,
  `text1` varchar(255) DEFAULT NULL,
  `text2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PERSONEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONSUBTYP`
--

DROP TABLE IF EXISTS `PERSONSUBTYP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONSUBTYP` (
  `PERSONSUBTYP_ID` int(11) NOT NULL DEFAULT '0',
  `PERSONTYP_ID` char(1) DEFAULT NULL,
  `personsubtyp_name` char(60) DEFAULT NULL,
  `ref_intern` int(11) DEFAULT NULL,
  `ref_personsubtyp_id` int(11) NOT NULL,
  `hauptfach` int(11) NOT NULL,
  `sva` int(1) NOT NULL DEFAULT '0',
  `sva_bezeichnung` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`PERSONSUBTYP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONSUBTYP_SIK`
--

DROP TABLE IF EXISTS `PERSONSUBTYP_SIK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONSUBTYP_SIK` (
  `PERSONSUBTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONTYP_ID` char(1) DEFAULT NULL,
  `personsubtyp_name` char(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONSUBTYP_SVA`
--

DROP TABLE IF EXISTS `PERSONSUBTYP_SVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONSUBTYP_SVA` (
  `PERSONSUBTYP_ID` int(11) NOT NULL DEFAULT '0',
  `PERSONTYP_ID` char(1) DEFAULT NULL,
  `personsubtyp_name` char(60) DEFAULT NULL,
  `ref_intern` int(11) DEFAULT NULL,
  PRIMARY KEY (`PERSONSUBTYP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONSUBTYP_ZUSATZFACH_SVA`
--

DROP TABLE IF EXISTS `PERSONSUBTYP_ZUSATZFACH_SVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONSUBTYP_ZUSATZFACH_SVA` (
  `zusatzfach_id` int(11) NOT NULL AUTO_INCREMENT,
  `PERSONSUBTYP_ID_SVA` int(11) NOT NULL DEFAULT '0',
  `zusatzfach_name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`zusatzfach_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PERSONTYP`
--

DROP TABLE IF EXISTS `PERSONTYP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PERSONTYP` (
  `PERSONTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONTYP_NAME` char(15) DEFAULT NULL,
  PRIMARY KEY (`PERSONTYP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Postleitzahlen`
--

DROP TABLE IF EXISTS `Postleitzahlen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Postleitzahlen` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PLZ` int(11) NOT NULL,
  `Ort_ID` int(11) NOT NULL,
  `Anmerkung` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=35233 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RESGRP`
--

DROP TABLE IF EXISTS `RESGRP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESGRP` (
  `GRP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(30) DEFAULT NULL,
  `PERSONEN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`GRP_ID`),
  KEY `PERSONEN_ID` (`PERSONEN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1174 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RESINDISPONIBILITAET`
--

DROP TABLE IF EXISTS `RESINDISPONIBILITAET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESINDISPONIBILITAET` (
  `INDISPONIBILITAET_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RESOURCEN_ID` int(11) NOT NULL DEFAULT '0',
  `INDISP_VON` datetime DEFAULT NULL,
  `INDISP_BIS` datetime DEFAULT NULL,
  PRIMARY KEY (`INDISPONIBILITAET_ID`),
  KEY `RESOURCEN_ID` (`RESOURCEN_ID`,`INDISP_VON`,`INDISP_BIS`)
) ENGINE=MyISAM AUTO_INCREMENT=25764 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RESOURCEN`
--

DROP TABLE IF EXISTS `RESOURCEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCEN` (
  `RESOURCEN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RESOURCENTYP_ID` int(11) NOT NULL DEFAULT '0',
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `KBZ` varchar(16) DEFAULT NULL,
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  `BEMERKUNG` mediumtext,
  `POSITION` int(11) NOT NULL DEFAULT '0',
  `MASTER_ID` int(11) NOT NULL DEFAULT '0',
  `ms_resourcenIdArztSW` int(11) NOT NULL DEFAULT '-1',
  `absageInfo` varchar(15) NOT NULL DEFAULT 'true',
  `vorlauf` int(11) DEFAULT '0',
  `isactive` bit(1) DEFAULT b'1',
  `isactivefrom` date DEFAULT '1990-01-01',
  `isReminderRes` int(11) DEFAULT '0',
  `reminder_erinnerungAktiv` int(11) NOT NULL DEFAULT '0',
  `sms_abo` int(5) NOT NULL DEFAULT '-1',
  `sms_sent` int(5) NOT NULL DEFAULT '0',
  `sms_warning_sent` int(1) NOT NULL DEFAULT '0',
  `Kalenderraster` int(11) NOT NULL DEFAULT '10',
  `adresse` varchar(255) DEFAULT NULL COMMENT 'Spezielle Adresse für Res',
  PRIMARY KEY (`RESOURCEN_ID`),
  KEY `RESOURCEN_FK1` (`PERSONEN_ID`),
  KEY `RESOURCEN_FK2` (`RESOURCENTYP_ID`),
  KEY `POSITION` (`POSITION`)
) ENGINE=MyISAM AUTO_INCREMENT=3410 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RESOURCENMAPPING`
--

DROP TABLE IF EXISTS `RESOURCENMAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCENMAPPING` (
  `RESOURCENMAPPING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERSONEN_ID` int(11) NOT NULL,
  `RESOURCEN_ID1` int(11) NOT NULL DEFAULT '0',
  `RESOURCEN_ID2` int(11) NOT NULL DEFAULT '0',
  `WOCHENTAG` int(11) NOT NULL DEFAULT '0',
  `ZEITVON` time NOT NULL DEFAULT '00:00:00',
  `ZEITBIS` time NOT NULL DEFAULT '00:00:00',
  `isactivefrom` date DEFAULT '1990-01-01',
  `changed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`RESOURCENMAPPING_ID`),
  KEY `IDX_RZEIT` (`RESOURCEN_ID1`,`WOCHENTAG`,`ZEITVON`,`ZEITBIS`)
) ENGINE=MyISAM AUTO_INCREMENT=13051 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RESOURCENTYP`
--

DROP TABLE IF EXISTS `RESOURCENTYP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCENTYP` (
  `RESOURCENTYP_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`RESOURCENTYP_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RESOURCENZEIT`
--

DROP TABLE IF EXISTS `RESOURCENZEIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCENZEIT` (
  `RESOURCENZEIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RESOURCEN_ID` int(11) NOT NULL DEFAULT '0',
  `WOCHENTAG` int(11) NOT NULL DEFAULT '0',
  `ZEITVON` time NOT NULL DEFAULT '00:00:00',
  `ZEITBIS` time NOT NULL DEFAULT '00:00:00',
  `isactivefrom` date DEFAULT '1990-01-01',
  `changed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`RESOURCENZEIT_ID`),
  KEY `IDX_RZEIT` (`RESOURCEN_ID`,`WOCHENTAG`,`ZEITVON`,`ZEITBIS`)
) ENGINE=MyISAM AUTO_INCREMENT=199421 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RESZEITATTRIBUT`
--

DROP TABLE IF EXISTS `RESZEITATTRIBUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESZEITATTRIBUT` (
  `RESZEITATTRIBUT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ATTRIBUT_ID` int(11) NOT NULL DEFAULT '0',
  `RESOURCENZEIT_ID` int(11) NOT NULL DEFAULT '0',
  `WERT` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`RESZEITATTRIBUT_ID`),
  KEY `RESZEITATTRIBUT_FK1` (`RESOURCENZEIT_ID`),
  KEY `RESZEITATTRIBUT_FK2` (`ATTRIBUT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RES_GRP`
--

DROP TABLE IF EXISTS `RES_GRP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RES_GRP` (
  `res_grp_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_grp_bez` char(30) DEFAULT NULL,
  `arzt_id` int(11) NOT NULL DEFAULT '0',
  `dayview` tinyint(4) DEFAULT '1',
  `weekview` tinyint(4) DEFAULT '1',
  `combinedview` tinyint(4) NOT NULL DEFAULT '0',
  `viewconstraints` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`res_grp_id`),
  KEY `arzt_id` (`arzt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=909 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RES_JE_RES_GRP`
--

DROP TABLE IF EXISTS `RES_JE_RES_GRP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RES_JE_RES_GRP` (
  `rjrg_id` int(11) NOT NULL AUTO_INCREMENT,
  `res_grp_id` int(11) NOT NULL DEFAULT '0',
  `resource_id` int(11) NOT NULL DEFAULT '0',
  `arzt_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rjrg_id`),
  KEY `res_grp_id` (`res_grp_id`),
  KEY `resource_id` (`resource_id`),
  KEY `arzt_id` (`arzt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16699 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RES_MAIL_UART`
--

DROP TABLE IF EXISTS `RES_MAIL_UART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RES_MAIL_UART` (
  `RES_ID` int(11) NOT NULL DEFAULT '0',
  `UART_ID` int(11) NOT NULL DEFAULT '0',
  `MAIL_ADDR` varchar(50) DEFAULT NULL,
  `MAIL_TEXT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`RES_ID`,`UART_ID`),
  KEY `UART_ID` (`UART_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RES_TO_GRP`
--

DROP TABLE IF EXISTS `RES_TO_GRP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RES_TO_GRP` (
  `GRP_ID` int(11) NOT NULL DEFAULT '0',
  `RES_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`GRP_ID`,`RES_ID`),
  KEY `RES_ID` (`RES_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RES_TO_HTX`
--

DROP TABLE IF EXISTS `RES_TO_HTX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RES_TO_HTX` (
  `PERSONEN_ID` decimal(11,0) NOT NULL,
  `RESOURCEN_ID` int(11) NOT NULL,
  `pfad` varchar(255) NOT NULL COMMENT 'Pfad im customer-ordner',
  `anmerkung` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`PERSONEN_ID`,`RESOURCEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RES_TO_UART`
--

DROP TABLE IF EXISTS `RES_TO_UART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `RES_TO_UART` (
  `RES_ID` int(11) NOT NULL DEFAULT '0',
  `UART_ID` int(11) NOT NULL DEFAULT '0',
  `DAUER` int(11) DEFAULT NULL,
  `OFFSET` int(11) DEFAULT NULL,
  `REIHUNG` int(11) DEFAULT NULL,
  `isprimary` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`RES_ID`,`UART_ID`),
  KEY `UART_ID` (`UART_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Rating_to_Res`
--

DROP TABLE IF EXISTS `Rating_to_Res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rating_to_Res` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arztid` int(11) NOT NULL,
  `resid` int(11) NOT NULL,
  `link` int(11) NOT NULL COMMENT 'verbundener arzt',
  PRIMARY KEY (`id`),
  KEY `resid` (`resid`),
  KEY `link` (`link`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ReminderRechnung`
--

DROP TABLE IF EXISTS `ReminderRechnung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ReminderRechnung` (
  `Firma` varchar(255) NOT NULL,
  `Anrede` varchar(255) NOT NULL,
  `Titel` varchar(255) NOT NULL,
  `Vorname` varchar(255) NOT NULL,
  `Nachname` varchar(255) NOT NULL,
  `Adresse` varchar(255) NOT NULL,
  `PLZ` varchar(255) NOT NULL,
  `ORT` varchar(255) NOT NULL,
  `EMail` varchar(255) NOT NULL,
  `Telefon` varchar(255) NOT NULL,
  `Firmenbuchnummer` varchar(255) NOT NULL,
  `UID` varchar(255) NOT NULL,
  `ARZTID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Reminder Rechnungsinformationen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SA_UNTERSUCHUNG`
--

DROP TABLE IF EXISTS `SA_UNTERSUCHUNG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SA_UNTERSUCHUNG` (
  `SA_UNTERSUCHUNG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) NOT NULL DEFAULT '0',
  `SA_ID` int(11) NOT NULL DEFAULT '0',
  `REIHUNG` tinyint(4) DEFAULT NULL,
  `MAXINTERVALL` int(11) DEFAULT NULL,
  `isprimary` tinyint(1) DEFAULT '0',
  `isprimary2` bit(1) DEFAULT b'0',
  `KURZEDAUER` bit(1) DEFAULT b'0',
  PRIMARY KEY (`SA_UNTERSUCHUNG_ID`),
  KEY `Ref_9043_FK` (`SA_ID`),
  KEY `Ref_9047_FK` (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2057 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SERIENTERMIN`
--

DROP TABLE IF EXISTS `SERIENTERMIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SERIENTERMIN` (
  `SERIENTERMIN_ID` int(11) NOT NULL DEFAULT '0',
  `RESOURCEN_ID` int(11) NOT NULL DEFAULT '0',
  `FREQUENZ` smallint(6) DEFAULT NULL,
  `WOCHENWH` smallint(6) DEFAULT NULL,
  `TAGE` varchar(7) DEFAULT NULL,
  `ZEIT_VON` time DEFAULT NULL,
  `ZEIT_BIS` time DEFAULT NULL,
  `STARTDATUM` date DEFAULT NULL,
  `ENDEMODUS` smallint(6) DEFAULT NULL,
  `WIEDERHOLUNGEN` int(11) DEFAULT NULL,
  `ENDDATUM` date DEFAULT NULL,
  `UNTERSUCHUNGSART_ID` int(11) NOT NULL DEFAULT '0',
  `PERSONEN_ID_ARZT` int(11) DEFAULT NULL,
  `PERSONEN_ID_PATIENT` int(11) DEFAULT NULL,
  `TERMIN_EMAIL` varchar(50) DEFAULT NULL,
  `TERMIN_TEL` varchar(20) DEFAULT NULL,
  `TERMIN_PERSON` varchar(50) DEFAULT NULL,
  `PERSONEN_ID_EINTRAG` int(11) DEFAULT NULL,
  `TERMIN_KOMMENTAR` varchar(254) DEFAULT NULL,
  `TERMIN_COLOR` varchar(20) DEFAULT NULL,
  `TERMIN_SVNR` varchar(15) DEFAULT NULL,
  `PAT_ARZT_ID` int(11) DEFAULT NULL,
  `EXT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SERIENTERMIN_ID`),
  KEY `SERIENTERMIN_FK1` (`UNTERSUCHUNGSART_ID`),
  KEY `SERIENTERMIN_FK2` (`RESOURCEN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SPEZIALGEBIET`
--

DROP TABLE IF EXISTS `SPEZIALGEBIET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPEZIALGEBIET` (
  `sg_id` decimal(11,0) NOT NULL DEFAULT '0',
  `sg_bez` char(75) DEFAULT NULL,
  `sg_id_alt` decimal(11,0) NOT NULL DEFAULT '0',
  KEY `sg_id` (`sg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SPEZIALGEBIET_ALT`
--

DROP TABLE IF EXISTS `SPEZIALGEBIET_ALT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPEZIALGEBIET_ALT` (
  `sg_id` decimal(11,0) NOT NULL DEFAULT '0',
  `sg_bez` char(50) DEFAULT NULL,
  `sg_id_alt` decimal(11,0) NOT NULL DEFAULT '0',
  KEY `sg_id` (`sg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SPRACHE`
--

DROP TABLE IF EXISTS `SPRACHE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPRACHE` (
  `spr_id` int(11) NOT NULL DEFAULT '0',
  `spr_bez` char(50) DEFAULT NULL,
  PRIMARY KEY (`spr_id`),
  KEY `spr_bez` (`spr_bez`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `STORNOHASH`
--

DROP TABLE IF EXISTS `STORNOHASH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `STORNOHASH` (
  `TID` int(11) NOT NULL,
  `STORNOHASH` char(64) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SUBUSER`
--

DROP TABLE IF EXISTS `SUBUSER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUBUSER` (
  `PERSONEN_ID` int(11) NOT NULL DEFAULT '0',
  `SUBUSER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `LOGIN` varchar(50) DEFAULT NULL,
  `PASSWD` varchar(50) DEFAULT NULL,
  `seclevel` varchar(10) DEFAULT NULL,
  `islocked` char(1) DEFAULT NULL,
  `lastaltered` datetime DEFAULT NULL,
  `MENU_PRIV` varchar(50) DEFAULT NULL,
  `readonly` smallint(6) NOT NULL DEFAULT '0',
  `mobile_active` varchar(1) NOT NULL DEFAULT '0',
  `sms_active` varchar(1) NOT NULL DEFAULT '1',
  `chain_active` varchar(1) NOT NULL DEFAULT '1',
  `shortcut` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`PERSONEN_ID`,`SUBUSER_ID`),
  KEY `LOGIN` (`LOGIN`),
  KEY `SUBUSER_ID` (`SUBUSER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SUBUSER_LOGINHIST`
--

DROP TABLE IF EXISTS `SUBUSER_LOGINHIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUBUSER_LOGINHIST` (
  `PERSONEN_ID` int(11) NOT NULL,
  `SUBUSER_ID` int(11) NOT NULL,
  `LOGIN_DATETIME` datetime NOT NULL,
  `LOGIN_STATUS` char(1) NOT NULL,
  PRIMARY KEY (`PERSONEN_ID`,`SUBUSER_ID`,`LOGIN_DATETIME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SUBUSER_PASSWDHIST`
--

DROP TABLE IF EXISTS `SUBUSER_PASSWDHIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUBUSER_PASSWDHIST` (
  `PERSONEN_ID` int(11) NOT NULL,
  `SUBUSER_ID` int(11) NOT NULL,
  `HISTNR` int(11) NOT NULL,
  `VALIDFROM` datetime NOT NULL,
  `PASSWD` varchar(50) NOT NULL,
  PRIMARY KEY (`PERSONEN_ID`,`SUBUSER_ID`,`HISTNR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SUBUSER_RES`
--

DROP TABLE IF EXISTS `SUBUSER_RES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUBUSER_RES` (
  `PERSONEN_ID` int(11) NOT NULL DEFAULT '0',
  `SUBUSER_ID` int(11) NOT NULL DEFAULT '0',
  `RESOURCEN_ID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`PERSONEN_ID`,`SUBUSER_ID`,`RESOURCEN_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SUBUSER_UART`
--

DROP TABLE IF EXISTS `SUBUSER_UART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SUBUSER_UART` (
  `subuser_id` int(11) NOT NULL,
  `uart_id` int(11) NOT NULL,
  PRIMARY KEY (`subuser_id`,`uart_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SYSTEMPARAMETER`
--

DROP TABLE IF EXISTS `SYSTEMPARAMETER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SYSTEMPARAMETER` (
  `PARAMETER_ID` int(11) NOT NULL DEFAULT '0',
  `BEREICH` varchar(50) DEFAULT NULL,
  `BEZEICHNUNG` varchar(100) DEFAULT NULL,
  `WERT` varchar(255) DEFAULT NULL,
  `ERKLAERUNG` mediumtext,
  PRIMARY KEY (`PARAMETER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SchnellsucheTK`
--

DROP TABLE IF EXISTS `SchnellsucheTK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SchnellsucheTK` (
  `mandant` int(11) NOT NULL,
  `anmerkung` text NOT NULL,
  PRIMARY KEY (`mandant`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='wer möchte die alte Funktionsweise der Schnellsuche nutzen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SearchHistoryCustomer`
--

DROP TABLE IF EXISTS `SearchHistoryCustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SearchHistoryCustomer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(100) DEFAULT NULL,
  `bundesland` varchar(11) NOT NULL,
  `bezirk` varchar(11) NOT NULL,
  `nachname` varchar(100) NOT NULL,
  `vorname` varchar(100) NOT NULL,
  `institut` varchar(100) NOT NULL,
  `fachrichtung` varchar(11) NOT NULL,
  `krankenkasse` varchar(11) NOT NULL,
  `stichwort` varchar(11) NOT NULL,
  `sprache` varchar(11) NOT NULL,
  `beh` int(11) NOT NULL,
  `online` int(11) NOT NULL,
  `UserAgent` varchar(500) NOT NULL,
  `IP` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129654 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SubUserLogPro`
--

DROP TABLE IF EXISTS `SubUserLogPro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SubUserLogPro` (
  `mandant-id` int(11) DEFAULT NULL,
  `user-id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `zeitstempel` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `erfolg` varchar(50) NOT NULL,
  `ip-adresse` varchar(50) NOT NULL,
  `useragent` varchar(150) NOT NULL,
  `usedPassword` varchar(255) NOT NULL,
  `verbliebene_versuche` int(11) NOT NULL,
  PRIMARY KEY (`zeitstempel`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TAGESNOTIZ`
--

DROP TABLE IF EXISTS `TAGESNOTIZ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TAGESNOTIZ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` decimal(11,0) NOT NULL,
  `datum_von` date NOT NULL,
  `datum_bis` date NOT NULL,
  `notiz` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TEMP_ID`
--

DROP TABLE IF EXISTS `TEMP_ID`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TEMP_ID` (
  `termin_id` decimal(11,0) NOT NULL,
  KEY `termin_id` (`termin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TERMIN`
--

DROP TABLE IF EXISTS `TERMIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TERMIN` (
  `TERMIN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `TERMIN_DATUM` date NOT NULL DEFAULT '0000-00-00',
  `TERMIN_VON` time NOT NULL DEFAULT '00:00:00',
  `TERMIN_BIS` time DEFAULT NULL,
  `IS_CHAIN` smallint(6) NOT NULL DEFAULT '0',
  `SAMMELBUCHUNG_ID` decimal(10,0) DEFAULT NULL,
  `UNTERSUCHUNGSART_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `TERMIN_STATUS` int(11) NOT NULL DEFAULT '0',
  `PERSONEN_ID_ARZT` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_ID_PATIENT` decimal(11,0) DEFAULT NULL,
  `TERMIN_ANFRAGE_DATUM` date DEFAULT NULL,
  `TERMIN_OKNOK_DATUM` date DEFAULT NULL,
  `TERMIN_ANFRAGE_ZEIT` time DEFAULT NULL,
  `TERMIN_OKNOK_ZEIT` time DEFAULT NULL,
  `TERMIN_AUTOANTWORT` int(11) DEFAULT NULL,
  `RESERVIERUNGSART` int(11) DEFAULT NULL,
  `TERMIN_EMAIL` varchar(50) DEFAULT NULL,
  `TERMIN_TEL` varchar(30) DEFAULT NULL,
  `CHECKNR` varchar(10) DEFAULT NULL,
  `TERMIN_CANCEL_DATUM` date DEFAULT NULL,
  `TERMIN_CANCEL_ZEIT` time DEFAULT NULL,
  `TERMIN_PERSON` varchar(50) DEFAULT NULL,
  `PERSONEN_ID_EINTRAG` decimal(11,0) DEFAULT NULL,
  `TERMIN_TYP` smallint(6) DEFAULT NULL,
  `TERMIN_KOMMENTAR` varchar(254) DEFAULT NULL,
  `termin_raumnr` int(11) DEFAULT '1',
  `TERMIN_WASHERE` char(1) DEFAULT NULL,
  `TERMIN_COLOR` varchar(20) DEFAULT NULL,
  `TERMIN_STORNOGRUND` int(11) DEFAULT NULL,
  `TERMIN_SVNR` varchar(15) DEFAULT NULL,
  `lastchanged` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changedby` int(11) DEFAULT NULL,
  `insertedby` int(11) DEFAULT NULL,
  `insertedat` timestamp NULL DEFAULT NULL,
  `PAT_ARZT_ID` decimal(11,0) DEFAULT NULL,
  `EXT_ID` decimal(11,0) DEFAULT NULL,
  `SERIENTERMIN_ID` int(11) DEFAULT NULL,
  `sentOnCurrentDate` int(11) DEFAULT NULL,
  `dml` char(1) NOT NULL DEFAULT 'I',
  `sentDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sentState` tinyint(4) NOT NULL DEFAULT '0',
  `termin_ext_id` bigint(20) DEFAULT NULL,
  `ms_synczeitpkt` timestamp NOT NULL DEFAULT '1998-12-31 23:00:00',
  `ms_syncstatus` int(11) NOT NULL DEFAULT '0',
  `ms_synccounter` int(11) NOT NULL DEFAULT '0',
  `TERMIN_ADRESSE` varchar(30) DEFAULT NULL,
  `TERMIN_PLZ` varchar(30) DEFAULT NULL,
  `TERMIN_WOHNORT` varchar(30) DEFAULT NULL,
  `TERMIN_GEBDATUM` date DEFAULT NULL,
  `TERMIN_DIAGNOSE` varchar(30) DEFAULT NULL,
  `specialflag1` char(1) DEFAULT NULL,
  `Last_Update_Iphone` datetime DEFAULT NULL,
  `terminKettenId` int(11) NOT NULL DEFAULT '-1',
  `Herkunft` varchar(4) DEFAULT NULL,
  `toRemind` int(11) NOT NULL DEFAULT '1',
  `msync_alter_termin` varchar(1) NOT NULL DEFAULT '0',
  `shortcut` varchar(20) DEFAULT NULL,
  `shortcut_eintrag` varchar(20) DEFAULT NULL,
  `optermin` varchar(10) DEFAULT NULL,
  `patient_assigned_date` date DEFAULT NULL COMMENT 'Krems Option',
  `UserAgent` varchar(500) NOT NULL DEFAULT '',
  `IP` varchar(255) NOT NULL DEFAULT '',
  `TPrio` int(1) NOT NULL DEFAULT '3',
  `WARTELISTE` int(1) NOT NULL DEFAULT '0' COMMENT 'ist Termin auf Warteliste',
  `KASSE` int(11) NOT NULL DEFAULT '-1' COMMENT 'Versicherungskasse',
  PRIMARY KEY (`TERMIN_ID`),
  KEY `TERMIN_STATUS` (`TERMIN_STATUS`),
  KEY `IDX_TERMIN_COMB1` (`PERSONEN_ID_ARZT`,`TERMIN_VON`),
  KEY `TERMIN_DATUM` (`TERMIN_DATUM`),
  KEY `IDX_UQS_TERMIN` (`PERSONEN_ID_ARZT`,`TERMIN_DATUM`,`TERMIN_STATUS`,`TERMIN_VON`),
  KEY `TERMIN_FK2` (`SERIENTERMIN_ID`),
  KEY `idx_termin_ext_id_termin` (`termin_ext_id`),
  KEY `idx_ext_ID_termin` (`EXT_ID`),
  KEY `SAMMELBUCHUNG_ID` (`SAMMELBUCHUNG_ID`),
  KEY `dml` (`dml`),
  KEY `index_daniel` (`TERMIN_DATUM`,`TERMIN_VON`),
  KEY `PERSONEN_ID_PATIENT` (`PERSONEN_ID_PATIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TERMINRAHMEN`
--

DROP TABLE IF EXISTS `TERMINRAHMEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TERMINRAHMEN` (
  `terminrahmen_id` int(11) NOT NULL AUTO_INCREMENT,
  `TERMINRAHMEN_VON` time NOT NULL DEFAULT '00:00:00',
  `TERMINRAHMEN_BIS` time NOT NULL DEFAULT '00:00:00',
  `TERMINRAHMEN_WOTAG` int(11) NOT NULL DEFAULT '0',
  `TERMINRAHMEN_AUTOANTWORT` int(11) DEFAULT NULL,
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `maxraumanzahl` int(11) DEFAULT NULL,
  `VORLAUF` int(11) DEFAULT '0',
  `isactivefrom` date DEFAULT '1990-01-01',
  PRIMARY KEY (`terminrahmen_id`),
  KEY `PERSONEN_ID` (`PERSONEN_ID`),
  KEY `TERMINRAHMEN_WOTAG` (`TERMINRAHMEN_WOTAG`),
  KEY `TERMINRAHMEN_VON` (`TERMINRAHMEN_VON`),
  KEY `TERMINRAHMEN_BIS` (`TERMINRAHMEN_BIS`)
) ENGINE=MyISAM AUTO_INCREMENT=60185 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TERMINSCHEMA`
--

DROP TABLE IF EXISTS `TERMINSCHEMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TERMINSCHEMA` (
  `TERMINSCHEMA_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RESOURCEN_ID` int(11) NOT NULL DEFAULT '0',
  `ZEITVON` time NOT NULL DEFAULT '00:00:00',
  `ZEITBIS` time DEFAULT NULL,
  `WOCHENTAG` int(11) NOT NULL DEFAULT '0',
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  `COLOR` varchar(20) DEFAULT NULL,
  `PRIOR` tinyint(4) DEFAULT '1',
  `U_COLOR` varchar(20) DEFAULT NULL,
  `UART_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TERMINSCHEMA_ID`),
  KEY `Ref_9869_FK` (`RESOURCEN_ID`),
  KEY `WOCHENTAG` (`WOCHENTAG`),
  KEY `ZEITVON` (`ZEITVON`)
) ENGINE=MyISAM AUTO_INCREMENT=15288021 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TERMIN_ARCHIV`
--

DROP TABLE IF EXISTS `TERMIN_ARCHIV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TERMIN_ARCHIV` (
  `TERMIN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `TERMIN_DATUM` date DEFAULT NULL,
  `TERMIN_VON` time NOT NULL DEFAULT '00:00:00',
  `TERMIN_BIS` time DEFAULT NULL,
  `IS_CHAIN` smallint(6) NOT NULL DEFAULT '0',
  `SAMMELBUCHUNG_ID` decimal(10,0) DEFAULT NULL,
  `UNTERSUCHUNGSART_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `TERMIN_STATUS` int(11) NOT NULL DEFAULT '0',
  `PERSONEN_ID_ARZT` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_ID_PATIENT` decimal(11,0) DEFAULT NULL,
  `TERMIN_ANFRAGE_DATUM` date DEFAULT NULL,
  `TERMIN_OKNOK_DATUM` date DEFAULT NULL,
  `TERMIN_ANFRAGE_ZEIT` time DEFAULT NULL,
  `TERMIN_OKNOK_ZEIT` time DEFAULT NULL,
  `TERMIN_AUTOANTWORT` int(11) DEFAULT NULL,
  `RESERVIERUNGSART` int(11) DEFAULT NULL,
  `TERMIN_EMAIL` varchar(50) DEFAULT NULL,
  `TERMIN_TEL` varchar(30) DEFAULT NULL,
  `CHECKNR` varchar(10) DEFAULT NULL,
  `TERMIN_CANCEL_DATUM` date DEFAULT NULL,
  `TERMIN_CANCEL_ZEIT` time DEFAULT NULL,
  `TERMIN_PERSON` varchar(50) DEFAULT NULL,
  `PERSONEN_ID_EINTRAG` decimal(11,0) DEFAULT NULL,
  `TERMIN_TYP` smallint(6) DEFAULT NULL,
  `TERMIN_KOMMENTAR` varchar(254) DEFAULT NULL,
  `termin_raumnr` int(11) DEFAULT '1',
  `TERMIN_WASHERE` char(1) DEFAULT NULL,
  `TERMIN_COLOR` varchar(20) DEFAULT NULL,
  `TERMIN_STORNOGRUND` int(11) DEFAULT NULL,
  `TERMIN_SVNR` varchar(15) DEFAULT NULL,
  `lastchanged` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changedby` int(11) DEFAULT NULL,
  `insertedby` int(11) DEFAULT NULL,
  `insertedat` timestamp NULL DEFAULT NULL,
  `PAT_ARZT_ID` decimal(11,0) DEFAULT NULL,
  `EXT_ID` decimal(11,0) DEFAULT NULL,
  `SERIENTERMIN_ID` int(11) DEFAULT NULL,
  `sentOnCurrentDate` int(11) DEFAULT NULL,
  `dml` char(1) NOT NULL DEFAULT 'I',
  `sentDate` timestamp NULL DEFAULT NULL,
  `sentState` tinyint(4) NOT NULL DEFAULT '0',
  `termin_ext_id` bigint(20) DEFAULT NULL,
  `ms_synczeitpkt` timestamp NOT NULL DEFAULT '1998-12-31 23:00:00',
  `ms_syncstatus` int(11) NOT NULL DEFAULT '0',
  `ms_synccounter` int(11) NOT NULL DEFAULT '0',
  `TERMIN_ADRESSE` varchar(30) DEFAULT NULL,
  `TERMIN_PLZ` varchar(30) DEFAULT NULL,
  `TERMIN_WOHNORT` varchar(30) DEFAULT NULL,
  `TERMIN_GEBDATUM` date DEFAULT NULL,
  `TERMIN_DIAGNOSE` varchar(30) DEFAULT NULL,
  `specialflag1` char(1) DEFAULT NULL,
  `Herkunft` varchar(4) DEFAULT NULL,
  `terminKettenId` int(11) NOT NULL DEFAULT '-1',
  `toRemind` int(11) NOT NULL DEFAULT '1',
  `msync_alter_termin` varchar(1) NOT NULL,
  `shortcut` varchar(20) DEFAULT NULL,
  `shortcut_eintrag` varchar(20) DEFAULT NULL,
  `optermin` varchar(10) DEFAULT NULL,
  `patient_assigned_date` date DEFAULT NULL,
  `UserAgent` varchar(500) NOT NULL DEFAULT '',
  `IP` varchar(255) NOT NULL,
  `TPrio` int(1) NOT NULL DEFAULT '3',
  `Last_Update_Iphone` datetime DEFAULT NULL,
  `WARTELISTE` int(1) NOT NULL DEFAULT '0' COMMENT 'ist Termin auf Warteliste',
  `KASSE` int(11) NOT NULL DEFAULT '-1' COMMENT 'Versicherungskasse'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TERMIN_Fit2Work_Clean`
--

DROP TABLE IF EXISTS `TERMIN_Fit2Work_Clean`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TERMIN_Fit2Work_Clean` (
  `TERMIN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `TERMIN_DATUM` date NOT NULL DEFAULT '0000-00-00',
  `TERMIN_VON` time NOT NULL DEFAULT '00:00:00',
  `TERMIN_BIS` time DEFAULT NULL,
  `IS_CHAIN` smallint(6) NOT NULL DEFAULT '0',
  `SAMMELBUCHUNG_ID` decimal(10,0) DEFAULT NULL,
  `UNTERSUCHUNGSART_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `TERMIN_STATUS` int(11) NOT NULL DEFAULT '0',
  `PERSONEN_ID_ARZT` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_ID_PATIENT` decimal(11,0) DEFAULT NULL,
  `TERMIN_ANFRAGE_DATUM` date DEFAULT NULL,
  `TERMIN_OKNOK_DATUM` date DEFAULT NULL,
  `TERMIN_ANFRAGE_ZEIT` time DEFAULT NULL,
  `TERMIN_OKNOK_ZEIT` time DEFAULT NULL,
  `TERMIN_AUTOANTWORT` int(11) DEFAULT NULL,
  `RESERVIERUNGSART` int(11) DEFAULT NULL,
  `TERMIN_EMAIL` varchar(50) DEFAULT NULL,
  `TERMIN_TEL` varchar(30) DEFAULT NULL,
  `CHECKNR` varchar(10) DEFAULT NULL,
  `TERMIN_CANCEL_DATUM` date DEFAULT NULL,
  `TERMIN_CANCEL_ZEIT` time DEFAULT NULL,
  `TERMIN_PERSON` varchar(50) DEFAULT NULL,
  `PERSONEN_ID_EINTRAG` decimal(11,0) DEFAULT NULL,
  `TERMIN_TYP` smallint(6) DEFAULT NULL,
  `TERMIN_KOMMENTAR` varchar(254) DEFAULT NULL,
  `termin_raumnr` int(11) DEFAULT '1',
  `TERMIN_WASHERE` char(1) DEFAULT NULL,
  `TERMIN_COLOR` varchar(20) DEFAULT NULL,
  `TERMIN_STORNOGRUND` int(11) DEFAULT NULL,
  `TERMIN_SVNR` varchar(15) DEFAULT NULL,
  `lastchanged` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changedby` int(11) DEFAULT NULL,
  `insertedby` int(11) DEFAULT NULL,
  `insertedat` timestamp NULL DEFAULT NULL,
  `PAT_ARZT_ID` decimal(11,0) DEFAULT NULL,
  `EXT_ID` decimal(11,0) DEFAULT NULL,
  `SERIENTERMIN_ID` int(11) DEFAULT NULL,
  `sentOnCurrentDate` int(11) DEFAULT NULL,
  `dml` char(1) NOT NULL DEFAULT 'I',
  `sentDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sentState` tinyint(4) NOT NULL DEFAULT '0',
  `termin_ext_id` bigint(20) DEFAULT NULL,
  `ms_synczeitpkt` timestamp NOT NULL DEFAULT '1998-12-31 23:00:00',
  `ms_syncstatus` int(11) NOT NULL DEFAULT '0',
  `ms_synccounter` int(11) NOT NULL DEFAULT '0',
  `TERMIN_ADRESSE` varchar(30) DEFAULT NULL,
  `TERMIN_PLZ` varchar(30) DEFAULT NULL,
  `TERMIN_WOHNORT` varchar(30) DEFAULT NULL,
  `TERMIN_GEBDATUM` date DEFAULT NULL,
  `TERMIN_DIAGNOSE` varchar(30) DEFAULT NULL,
  `specialflag1` char(1) DEFAULT NULL,
  `Last_Update_Iphone` datetime DEFAULT NULL,
  `terminKettenId` int(11) NOT NULL DEFAULT '-1',
  `Herkunft` varchar(4) DEFAULT NULL,
  `toRemind` int(11) NOT NULL DEFAULT '1',
  `msync_alter_termin` varchar(1) NOT NULL DEFAULT '0',
  `shortcut` varchar(20) DEFAULT NULL,
  `shortcut_eintrag` varchar(20) DEFAULT NULL,
  `optermin` varchar(10) DEFAULT NULL,
  `patient_assigned_date` date DEFAULT NULL COMMENT 'Krems Option',
  `UserAgent` varchar(500) NOT NULL DEFAULT '',
  `IP` varchar(255) NOT NULL DEFAULT '',
  `TPrio` int(1) NOT NULL DEFAULT '3',
  `WARTELISTE` int(1) NOT NULL DEFAULT '0' COMMENT 'ist Termin auf Warteliste',
  `KASSE` int(11) NOT NULL DEFAULT '-1' COMMENT 'Versicherungskasse',
  PRIMARY KEY (`TERMIN_ID`),
  KEY `TERMIN_STATUS` (`TERMIN_STATUS`),
  KEY `IDX_TERMIN_COMB1` (`PERSONEN_ID_ARZT`,`TERMIN_VON`),
  KEY `TERMIN_DATUM` (`TERMIN_DATUM`),
  KEY `IDX_UQS_TERMIN` (`PERSONEN_ID_ARZT`,`TERMIN_DATUM`,`TERMIN_STATUS`,`TERMIN_VON`),
  KEY `TERMIN_FK2` (`SERIENTERMIN_ID`),
  KEY `idx_termin_ext_id_termin` (`termin_ext_id`),
  KEY `idx_ext_ID_termin` (`EXT_ID`),
  KEY `SAMMELBUCHUNG_ID` (`SAMMELBUCHUNG_ID`),
  KEY `dml` (`dml`),
  KEY `index_daniel` (`TERMIN_DATUM`,`TERMIN_VON`),
  KEY `PERSONEN_ID_PATIENT` (`PERSONEN_ID_PATIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TERMIN_LOG`
--

DROP TABLE IF EXISTS `TERMIN_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TERMIN_LOG` (
  `TERMIN_LOG_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TERMIN_ID` int(11) DEFAULT NULL,
  `PERSONEN_ID` int(11) DEFAULT NULL,
  `SUBUSER_ID` int(11) DEFAULT NULL,
  `ACTIONDATE` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ACTION_ID` int(11) DEFAULT NULL,
  `ACTION` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TERMIN_LOG_ID`),
  KEY `TERMIN_LOG_TERMIN_ID` (`TERMIN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9413831 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TERMIN_RESOURCEN`
--

DROP TABLE IF EXISTS `TERMIN_RESOURCEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TERMIN_RESOURCEN` (
  `TERMINRESOURCE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TERMIN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `RESOURCEN_ID` int(11) NOT NULL DEFAULT '0',
  `ZEITVON` time NOT NULL DEFAULT '00:00:00',
  `ZEITBIS` time NOT NULL DEFAULT '00:00:00',
  `POSITION` int(11) DEFAULT NULL,
  `WASHERE` char(1) DEFAULT NULL,
  `UAINTERN_ID` int(11) NOT NULL DEFAULT '0',
  `lastchanged` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changeflag` char(1) NOT NULL DEFAULT 'I',
  `changedby` int(11) DEFAULT NULL,
  `TERMINRES_STATUS` int(11) DEFAULT '1',
  `TERMINRES_CANCEL_DATUM` date DEFAULT NULL,
  `TERMINRES_CANCEL_ZEIT` time DEFAULT NULL,
  `TERMINRES_STORNOGRUND` int(11) DEFAULT NULL,
  `TERMINRES_COLOR` varchar(20) DEFAULT NULL,
  `termin_ext_id` decimal(11,0) DEFAULT NULL,
  `ms_synccounter` int(11) NOT NULL DEFAULT '0',
  `ms_syncstatus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TERMINRESOURCE_ID`),
  KEY `TERMIN_RESOURCEN_FK2` (`RESOURCEN_ID`),
  KEY `Ref_10468_FK` (`UAINTERN_ID`),
  KEY `ZEITVON` (`ZEITVON`),
  KEY `ZEITBIS` (`ZEITBIS`),
  KEY `TERMIN_RESOURCEN_COMB1` (`TERMIN_ID`,`RESOURCEN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39997786 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TERMIN_RESOURCEN_ARCHIV`
--

DROP TABLE IF EXISTS `TERMIN_RESOURCEN_ARCHIV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TERMIN_RESOURCEN_ARCHIV` (
  `TERMINRESOURCE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TERMIN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `RESOURCEN_ID` int(11) NOT NULL DEFAULT '0',
  `ZEITVON` time NOT NULL DEFAULT '00:00:00',
  `ZEITBIS` time NOT NULL DEFAULT '00:00:00',
  `POSITION` int(11) DEFAULT NULL,
  `WASHERE` char(1) DEFAULT NULL,
  `UAINTERN_ID` int(11) NOT NULL DEFAULT '0',
  `lastchanged` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `changedby` int(11) DEFAULT NULL,
  `TERMINRES_STATUS` int(11) DEFAULT '1',
  `TERMINRES_CANCEL_DATUM` date DEFAULT NULL,
  `TERMINRES_CANCEL_ZEIT` time DEFAULT NULL,
  `TERMINRES_STORNOGRUND` int(11) DEFAULT NULL,
  `TERMINRES_COLOR` varchar(20) DEFAULT NULL,
  `changeflag` char(1) NOT NULL DEFAULT 'I',
  `termin_ext_id` decimal(11,0) DEFAULT NULL,
  `ms_synccounter` int(11) NOT NULL DEFAULT '0',
  `ms_syncstatus` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TERMINRESOURCE_ID`),
  KEY `TERMIN_RESOURCEN_FK2` (`RESOURCEN_ID`),
  KEY `Ref_10468_FK` (`UAINTERN_ID`),
  KEY `ZEITVON` (`ZEITVON`),
  KEY `ZEITBIS` (`ZEITBIS`),
  KEY `TERMIN_RESOURCEN_COMB1` (`TERMIN_ID`,`RESOURCEN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=39704654 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TITEL`
--

DROP TABLE IF EXISTS `TITEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TITEL` (
  `TIT_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TIT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TMP_CLEAR`
--

DROP TABLE IF EXISTS `TMP_CLEAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TMP_CLEAR` (
  `ID` int(11) NOT NULL,
  `ANZAHL` int(11) NOT NULL,
  KEY `ID` (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TOPICS`
--

DROP TABLE IF EXISTS `TOPICS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TOPICS` (
  `TOP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `NAME` varchar(254) DEFAULT NULL,
  `BEZEICHNUNG` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`TOP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Termingruppe`
--

DROP TABLE IF EXISTS `Termingruppe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Termingruppe` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(40) NOT NULL,
  `AVG` double DEFAULT NULL,
  `AVG1MONAT` double DEFAULT NULL,
  `AVG3MONATE` double DEFAULT NULL,
  `AVG1JAHR` double DEFAULT NULL,
  `Gesamt` int(11) NOT NULL DEFAULT '0',
  `Sonderklasse` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UART_INTERN`
--

DROP TABLE IF EXISTS `UART_INTERN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UART_INTERN` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UAINTERN_KBZ` varchar(50) DEFAULT '0',
  `UAINTERN_LBZ` varchar(255) DEFAULT '0',
  `EXTERNSICHTBAR` int(11) unsigned DEFAULT '0',
  `UAEXTERN_ID` int(11) unsigned DEFAULT '0',
  `UA_PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `SAMMELUNTERSUCHUNG` tinyint(4) DEFAULT '0',
  `U_COLOR` varchar(20) DEFAULT NULL,
  `C_COLOR` varchar(20) DEFAULT NULL,
  `uainfo` varchar(400) DEFAULT NULL,
  `uainfo_intern` varchar(1000) DEFAULT NULL,
  `uaemailinfo` varchar(5000) DEFAULT NULL,
  `uaemailadr` varchar(80) DEFAULT NULL,
  `uaemailtext` varchar(255) DEFAULT NULL,
  `SYNC_TERMIN` int(11) unsigned DEFAULT '0',
  `MAX_BELEGUNG` tinyint(4) NOT NULL DEFAULT '1',
  `TYPEFLAG` tinyint(4) NOT NULL DEFAULT '0',
  `sva` varchar(5) DEFAULT NULL,
  `ReminderBuffer` int(11) NOT NULL DEFAULT '0',
  `ErinnerungAktiv` int(11) NOT NULL DEFAULT '0',
  `uart_text_extern` varchar(100) NOT NULL DEFAULT ' ',
  `OPT` varchar(1) NOT NULL DEFAULT '0',
  `AVGTIME` varchar(12) DEFAULT NULL,
  `PRIO` int(1) NOT NULL DEFAULT '2',
  `TERMINGRUPPE_ID` int(11) DEFAULT NULL,
  `Stornosperre` int(3) NOT NULL DEFAULT '0' COMMENT 'Vorlaufzeit für Terminstorno',
  `changed_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `UA_PERSONEN_ID` (`UA_PERSONEN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=13881 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UART_INTERN_FREMDSPRACHIG`
--

DROP TABLE IF EXISTS `UART_INTERN_FREMDSPRACHIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UART_INTERN_FREMDSPRACHIG` (
  `ID` int(11) unsigned NOT NULL DEFAULT '0',
  `UAINTERN_KBZ` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `UA_PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `uainfo` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uaemailinfo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `uaemailtext` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slanguage` char(2) NOT NULL DEFAULT 'en',
  `uart_text_extern` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UART_ZUORD`
--

DROP TABLE IF EXISTS `UART_ZUORD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UART_ZUORD` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `UAINTERN_ID` int(11) unsigned NOT NULL DEFAULT '0',
  `RESS_ID` int(11) unsigned DEFAULT '0',
  `UADAUER` int(11) unsigned DEFAULT '0',
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `uaemailtext` varchar(255) DEFAULT NULL,
  `uaemailadr` varchar(99) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PERSONEN_ID` (`PERSONEN_ID`),
  KEY `UAINTERN_ID` (`UAINTERN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=2936 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `URLAUB`
--

DROP TABLE IF EXISTS `URLAUB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `URLAUB` (
  `URL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `URL_VON` date DEFAULT NULL,
  `URL_BIS` date DEFAULT NULL,
  `PERSONEN_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `FeiertagText` varchar(255) DEFAULT NULL,
  `Eintragungsdatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`URL_ID`),
  KEY `PERSONEN_ID` (`PERSONEN_ID`),
  KEY `URL_VON` (`URL_VON`,`URL_BIS`,`PERSONEN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=743592 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UZEIT`
--

DROP TABLE IF EXISTS `UZEIT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UZEIT` (
  `UZEIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `U_ID` int(11) NOT NULL DEFAULT '0',
  `UWOCHENTAG` int(11) NOT NULL DEFAULT '0',
  `UZEITVON` time NOT NULL DEFAULT '00:00:00',
  `UZEITBIS` time NOT NULL DEFAULT '00:00:00',
  `R_ID` int(11) DEFAULT NULL,
  `Datum_von` date DEFAULT NULL,
  `Datum_bis` date DEFAULT NULL,
  `Frequenz` int(11) NOT NULL DEFAULT '1',
  `Serien_id` int(11) DEFAULT NULL,
  `isactivefrom` date DEFAULT '1990-01-01',
  `PRIO` int(2) NOT NULL DEFAULT '2',
  PRIMARY KEY (`UZEIT_ID`),
  KEY `IDX_UZEIT` (`U_ID`,`UWOCHENTAG`,`UZEITVON`,`UZEITBIS`)
) ENGINE=MyISAM AUTO_INCREMENT=53225 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `UZEIT_BU`
--

DROP TABLE IF EXISTS `UZEIT_BU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `UZEIT_BU` (
  `UZEIT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `U_ID` int(11) NOT NULL DEFAULT '0',
  `UWOCHENTAG` int(11) NOT NULL DEFAULT '0',
  `UZEITVON` time NOT NULL DEFAULT '00:00:00',
  `UZEITBIS` time NOT NULL DEFAULT '00:00:00',
  `R_ID` int(11) DEFAULT NULL,
  `Datum_von` date DEFAULT NULL,
  `Datum_bis` date DEFAULT NULL,
  `Frequenz` int(11) NOT NULL DEFAULT '1',
  `Serien_id` int(11) DEFAULT NULL,
  `isactivefrom` date DEFAULT '1990-01-01',
  `PRIO` int(2) NOT NULL DEFAULT '2',
  PRIMARY KEY (`UZEIT_ID`),
  KEY `IDX_UZEIT` (`U_ID`,`UWOCHENTAG`,`UZEITVON`,`UZEITBIS`)
) ENGINE=MyISAM AUTO_INCREMENT=36924 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XBOOKING`
--

DROP TABLE IF EXISTS `XBOOKING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `XBOOKING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'PrimKey',
  `MASTER` int(11) NOT NULL COMMENT 'ID d. Arztes dem zugewiesen wird',
  `SLAVE` int(11) NOT NULL COMMENT 'ID d. Zuweisers in PERSONEN-Table',
  `Typ` int(11) NOT NULL,
  `set_patient_assigned` int(1) NOT NULL DEFAULT '0' COMMENT 'Wenn 1 wird patient_assigned = now() in Termin gesetzt',
  `changed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ZUGANGSART`
--

DROP TABLE IF EXISTS `ZUGANGSART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ZUGANGSART` (
  `zugangsart_id` int(11) NOT NULL AUTO_INCREMENT,
  `bezeichnung` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`zugangsart_id`),
  KEY `bezeichnung` (`bezeichnung`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a3ladmins`
--

DROP TABLE IF EXISTS `a3ladmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a3ladmins` (
  `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User` char(8) DEFAULT NULL,
  `Passwort` char(50) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLogin_ID` int(8) NOT NULL DEFAULT '1049',
  PRIMARY KEY (`ADMIN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `adminhistory`
--

DROP TABLE IF EXISTS `adminhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` varchar(100) NOT NULL,
  `doc` int(11) NOT NULL,
  `tool` int(1) NOT NULL DEFAULT '0' COMMENT '0=admin, 1=uart',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2563 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aek_admins`
--

DROP TABLE IF EXISTS `aek_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aek_admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `lastLogin` datetime DEFAULT NULL,
  `retries` int(11) NOT NULL DEFAULT '0',
  `isLocked` tinyint(1) DEFAULT '0',
  `recordsPerPage` int(11) NOT NULL DEFAULT '40',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aek_aerzte`
--

DROP TABLE IF EXISTS `aek_aerzte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aek_aerzte` (
  `PERSONEN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `personen_name` varchar(30) NOT NULL DEFAULT '',
  `personen_vname` varchar(45) NOT NULL DEFAULT '',
  `personen_login` varchar(45) NOT NULL DEFAULT '',
  `PERSONEN_PASS` varchar(50) DEFAULT NULL,
  `PERSONSUBTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONTYP_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `PERSONEN_EMAIL` varchar(75) DEFAULT NULL,
  `PERSONEN_STRA` varchar(50) DEFAULT NULL,
  `PERSONEN_TEL` varchar(30) DEFAULT NULL,
  `PERSONEN_PLZ` varchar(5) DEFAULT NULL,
  `PERSONEN_ORT` varchar(80) DEFAULT NULL,
  `PERSONEN_FREI` int(11) DEFAULT NULL,
  `PERSONEN_FREIPIN` varchar(10) DEFAULT NULL,
  `BLD_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `BEZIRK_ID` decimal(11,0) NOT NULL DEFAULT '0',
  `ORD_STRA` varchar(50) DEFAULT NULL,
  `ORD_PLZ` varchar(5) DEFAULT NULL,
  `ORD_ORT` varchar(80) DEFAULT NULL,
  `ORD_EMAIL` varchar(75) DEFAULT NULL,
  `ORD_TEL` varchar(30) DEFAULT NULL,
  `PERSONEN_REG_STAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `NOSEARCH` tinyint(4) DEFAULT NULL,
  `REFERENCE_ID` bigint(20) DEFAULT NULL,
  `DEMO` tinyint(4) DEFAULT NULL,
  `SVNR` varchar(12) DEFAULT '',
  `AUTOREG` int(11) DEFAULT '0',
  `SVNR_GEBDAT` varchar(15) DEFAULT NULL,
  `EXTID` varchar(20) DEFAULT NULL,
  `UPDATED` char(1) DEFAULT NULL,
  `PERSONEN_XPASS` varchar(20) DEFAULT NULL,
  `DEF_UART` decimal(11,0) DEFAULT NULL,
  `LOGIN` varchar(50) DEFAULT NULL,
  `sva_user` varchar(5) DEFAULT NULL,
  `Zusatzfach` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`PERSONEN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aek_ext_arzt`
--

DROP TABLE IF EXISTS `aek_ext_arzt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aek_ext_arzt` (
  `personen_id` decimal(11,0) NOT NULL DEFAULT '0',
  `kalenderstart` int(11) DEFAULT NULL,
  `kalenderende` int(11) DEFAULT NULL,
  `maxraumanzahl` int(11) DEFAULT NULL,
  `deftagesansicht` int(11) DEFAULT NULL,
  `defterminlaenge` int(11) DEFAULT NULL,
  `titel` varchar(50) NOT NULL DEFAULT '',
  `www` varchar(50) DEFAULT NULL,
  `defsuchmodus` tinyint(4) DEFAULT NULL,
  `LASTSESSION` varchar(50) DEFAULT NULL,
  `BEHGER` int(11) DEFAULT NULL,
  `LOGO` varchar(50) DEFAULT NULL,
  `FNLOGO` varchar(50) DEFAULT NULL,
  `rowheight` int(11) DEFAULT NULL,
  `rowheight_weekview` int(11) DEFAULT NULL,
  `maxcolumns` int(11) DEFAULT '5',
  `extrainfo` varchar(255) DEFAULT NULL,
  `extraordiinfo` varchar(255) DEFAULT NULL,
  `last_backup` datetime DEFAULT NULL,
  `institut` varchar(50) DEFAULT NULL,
  `calendarlogo` varchar(50) DEFAULT '../docsite/images/logo_kl.gif',
  `calendartext` varchar(50) DEFAULT NULL,
  `COMMUNITY` decimal(11,0) DEFAULT '-1',
  `weekview_days` smallint(6) NOT NULL DEFAULT '6',
  `COLOR_HOLIDAYS1` varchar(10) DEFAULT NULL,
  `COLOR_HOLIDAYS2` varchar(10) DEFAULT NULL,
  `module` varchar(35) NOT NULL DEFAULT '1111011111111111111010100001110',
  `crc` bigint(21) NOT NULL DEFAULT '0',
  `kalender_displaymodus` tinyint(4) NOT NULL DEFAULT '1',
  `VORANMELDUNG` char(1) DEFAULT NULL,
  `anamnese_template_id` int(11) DEFAULT NULL,
  `absagemail` varchar(1) NOT NULL DEFAULT '1',
  `contact_pref` smallint(6) NOT NULL DEFAULT '1',
  `customer_personal_code` char(20) DEFAULT NULL,
  `fax_nr` varchar(30) DEFAULT NULL,
  `sva_agb_gelesen` int(11) DEFAULT '0',
  `contact_mobile` varchar(255) DEFAULT NULL,
  `recordsPerPage` int(11) DEFAULT '8',
  `lastLogin` datetime DEFAULT NULL,
  `retries` int(11) NOT NULL DEFAULT '0',
  `isLocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`personen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aek_zeit`
--

DROP TABLE IF EXISTS `aek_zeit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aek_zeit` (
  `zeit_id` int(11) NOT NULL AUTO_INCREMENT,
  `personen_id` int(11) NOT NULL DEFAULT '0',
  `datum` date DEFAULT NULL,
  `vonZeit` time NOT NULL DEFAULT '00:00:00',
  `bisZeit` time NOT NULL DEFAULT '00:00:00',
  `kategorie` int(11) NOT NULL DEFAULT '0',
  `beschreibung` varchar(255) NOT NULL,
  PRIMARY KEY (`zeit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=976 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aek_zeit_kat`
--

DROP TABLE IF EXISTS `aek_zeit_kat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aek_zeit_kat` (
  `zeit_kat_id` int(11) NOT NULL AUTO_INCREMENT,
  `zeit_kat_text` varchar(20) NOT NULL DEFAULT '',
  `zeit_kat_beschreibung` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`zeit_kat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `arzt`
--

DROP TABLE IF EXISTS `arzt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `arzt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `passwort` varchar(100) DEFAULT NULL,
  `sms` int(5) DEFAULT '0' COMMENT 'Anzahl an verfügbaren SMS',
  `ORD_STRA` varchar(45) DEFAULT NULL,
  `ORD_PLZ` varchar(45) DEFAULT NULL,
  `ORD_ORT` varchar(45) DEFAULT NULL,
  `ORD_EMAIL` varchar(45) DEFAULT NULL,
  `ORD_TEL` varchar(45) DEFAULT NULL,
  `VNAME` varchar(45) DEFAULT NULL,
  `TITEL` varchar(45) DEFAULT 'Dr.',
  `mundhygieneSmsText` varchar(160) DEFAULT 'Erinnerung an Ihren nächsten Mundhygiene Termin. Bitte nehmen Sie zur Terminvereinbarung mit Dr. Mustermann Tel. 01/8792327 Kontakt auf.',
  `zahnkontrolleSmsText` varchar(160) DEFAULT 'Erinnerung an Ihren nächsten Zahnkontroll Termin. Bitte nehmen Sie zur Terminvereinbarung mit mit Dr. Mustermann Tel. 01/8792327 Kontakt auf.',
  `mailfooter` varchar(255) DEFAULT NULL,
  `erinnerungstext` varchar(700) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=612229 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `auspraegung`
--

DROP TABLE IF EXISTS `auspraegung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auspraegung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategorie` int(11) DEFAULT NULL,
  `bez` varchar(100) DEFAULT NULL,
  `allow_sms` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_kategorie` (`id_kategorie`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctenaadmins`
--

DROP TABLE IF EXISTS `doctenaadmins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctenaadmins` (
  `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User` char(25) DEFAULT NULL,
  `Passwort` char(50) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastLogin_ID` int(8) NOT NULL DEFAULT '1049',
  `KPI` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ADMIN_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `effekt`
--

DROP TABLE IF EXISTS `effekt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `effekt` (
  `id_eintrag` int(11) NOT NULL,
  `id_typ` int(11) NOT NULL,
  `erinnerung_gesendet` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_eintrag`,`id_typ`),
  KEY `id_typ` (`id_typ`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `effort`
--

DROP TABLE IF EXISTS `effort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `effort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entrydate` date DEFAULT NULL,
  `effortdate` date DEFAULT NULL,
  `todo_id` int(11) DEFAULT NULL,
  `pers_id` int(11) DEFAULT NULL,
  `ehours` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eintraegeundempfehlungen`
--

DROP TABLE IF EXISTS `eintraegeundempfehlungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eintraegeundempfehlungen` (
  `userId` int(11) NOT NULL,
  `bezeichnung` varchar(45) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eintrag`
--

DROP TABLE IF EXISTS `eintrag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eintrag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` decimal(11,0) DEFAULT NULL,
  `id_ereignis` int(11) DEFAULT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_virtual` tinyint(4) NOT NULL DEFAULT '0',
  `zusatztext` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_user` (`id_user`),
  KEY `id_ereignis` (`id_ereignis`)
) ENGINE=MyISAM AUTO_INCREMENT=1572 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `eintrag_wert`
--

DROP TABLE IF EXISTS `eintrag_wert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eintrag_wert` (
  `id_eintrag` int(11) NOT NULL,
  `id_attribut` int(11) NOT NULL,
  `wert` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_eintrag`,`id_attribut`),
  KEY `id_attribut` (`id_attribut`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ereignis`
--

DROP TABLE IF EXISTS `ereignis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ereignis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bez` varchar(100) DEFAULT NULL,
  `erinnerung_gesendet` binary(1) NOT NULL DEFAULT '0',
  `mail_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `f2w`
--

DROP TABLE IF EXISTS `f2w`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `f2w` (
  `id` decimal(11,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `familienfunktion`
--

DROP TABLE IF EXISTS `familienfunktion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familienfunktion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin` decimal(11,0) NOT NULL,
  `slave` decimal(11,0) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin` (`admin`,`slave`)
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gegebenheit`
--

DROP TABLE IF EXISTS `gegebenheit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gegebenheit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bez` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gegebenheit_kombination`
--

DROP TABLE IF EXISTS `gegebenheit_kombination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gegebenheit_kombination` (
  `id_gegebenheit` int(11) NOT NULL DEFAULT '0',
  `id_kombination` int(11) NOT NULL DEFAULT '0',
  `auswahl` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_gegebenheit`,`id_kombination`),
  KEY `id_kombination` (`id_kombination`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kategorie`
--

DROP TABLE IF EXISTS `kategorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bez` varchar(100) DEFAULT NULL,
  `kat_title` varchar(100) DEFAULT NULL,
  `kat_text` text,
  `mail_text` text,
  `navigationTitle` int(11) DEFAULT '0',
  `navigationItem` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kategorie_empfohlen`
--

DROP TABLE IF EXISTS `kategorie_empfohlen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie_empfohlen` (
  `id_user` tinyint(4) NOT NULL,
  `id_auspraegung` tinyint(4) NOT NULL,
  `sichtbar` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kategorie_empfohlen_helper`
--

DROP TABLE IF EXISTS `kategorie_empfohlen_helper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie_empfohlen_helper` (
  `id_user` tinyint(4) NOT NULL,
  `id_auspraegung` tinyint(4) NOT NULL,
  `c` tinyint(4) NOT NULL,
  `id_kombination` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kategorie_empfohlen_table`
--

DROP TABLE IF EXISTS `kategorie_empfohlen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie_empfohlen_table` (
  `id_kombination` int(11) NOT NULL DEFAULT '0',
  `id_auspraegung` int(11) NOT NULL,
  PRIMARY KEY (`id_kombination`,`id_auspraegung`),
  KEY `id_auspraegung` (`id_auspraegung`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kategorie_sichtbar`
--

DROP TABLE IF EXISTS `kategorie_sichtbar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kategorie_sichtbar` (
  `id_user` decimal(11,0) NOT NULL,
  `id_auspraegung` int(11) NOT NULL,
  `sichtbar` int(11) NOT NULL DEFAULT '1',
  `send_sms` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_user`,`id_auspraegung`),
  KEY `id_auspraegung` (`id_auspraegung`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kombination`
--

DROP TABLE IF EXISTS `kombination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kombination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lizenz`
--

DROP TABLE IF EXISTS `lizenz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lizenz` (
  `arztId` decimal(11,0) NOT NULL,
  `maxResourcenAnzahl` smallint(6) NOT NULL DEFAULT '30',
  `max_Subuser` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`arztId`),
  KEY `arztId` (`arztId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Lizenzeinstellungen fur Mandant';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mail_protokoll`
--

DROP TABLE IF EXISTS `mail_protokoll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_protokoll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) NOT NULL,
  `arztid` int(11) NOT NULL,
  `flag` int(11) NOT NULL,
  `versanddatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mail` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `uart` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142830 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mail_protokoll2`
--

DROP TABLE IF EXISTS `mail_protokoll2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_protokoll2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) NOT NULL,
  `arztid` int(11) NOT NULL,
  `flag` int(11) NOT NULL,
  `versanddatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `mail` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `uart` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143004 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mail_scheduler`
--

DROP TABLE IF EXISTS `mail_scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mail_scheduler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) NOT NULL,
  `terminresid` int(11) DEFAULT NULL,
  `uart` varchar(200) DEFAULT NULL,
  `arztid` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL,
  `versanddatum` date NOT NULL,
  `uhrzeit` int(11) NOT NULL,
  `mail` varchar(200) NOT NULL,
  `text` text NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `anmerkung` varchar(255) NOT NULL DEFAULT '',
  `custom` int(1) NOT NULL DEFAULT '0',
  `entfernt` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `terminid` (`terminid`,`terminresid`,`flag`),
  KEY `arztid` (`arztid`),
  KEY `flag` (`flag`),
  KEY `versanddatum` (`versanddatum`),
  KEY `arztid_2` (`arztid`,`flag`,`versanddatum`),
  KEY `arztid_3` (`arztid`,`flag`,`versanddatum`,`uhrzeit`)
) ENGINE=InnoDB AUTO_INCREMENT=4551254 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mn_nutrition_fitness`
--

DROP TABLE IF EXISTS `mn_nutrition_fitness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mn_nutrition_fitness` (
  `nfi_id` int(11) NOT NULL AUTO_INCREMENT,
  `nfi_usr_id` int(11) NOT NULL DEFAULT '0',
  `nfi_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nfi_nft_id` int(11) NOT NULL DEFAULT '0',
  `nfi_puls` int(11) DEFAULT NULL,
  `nfi_duration` int(11) DEFAULT NULL,
  `nfi_timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`nfi_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mn_nutrition_fitness_type`
--

DROP TABLE IF EXISTS `mn_nutrition_fitness_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mn_nutrition_fitness_type` (
  `nft_id` int(11) NOT NULL DEFAULT '0',
  `nft_title` varchar(50) NOT NULL DEFAULT '',
  `nft_factor` decimal(10,0) NOT NULL DEFAULT '0',
  `nft_timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`nft_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mn_nutrition_food`
--

DROP TABLE IF EXISTS `mn_nutrition_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mn_nutrition_food` (
  `nfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `nfo_usr_id` int(11) NOT NULL DEFAULT '0',
  `nfo_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nfo_gramm` int(11) DEFAULT NULL,
  `nfo_kcal` int(11) DEFAULT NULL,
  `nfo_kjoule` int(11) DEFAULT NULL,
  `nfo_fett` int(11) DEFAULT NULL,
  `nfo_eiweiss` int(11) DEFAULT NULL,
  `nfo_kohlenhydrate` int(11) DEFAULT NULL,
  `nfo_broteinheiten` int(11) DEFAULT NULL,
  `nfo_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`nfo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mn_nutrition_weight`
--

DROP TABLE IF EXISTS `mn_nutrition_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mn_nutrition_weight` (
  `nwt_id` int(11) NOT NULL AUTO_INCREMENT,
  `nwt_usr_id` int(11) NOT NULL DEFAULT '0',
  `nwt_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nwt_kilogramm` decimal(10,0) NOT NULL DEFAULT '0',
  `nwt_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`nwt_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ms_clientconfig`
--

DROP TABLE IF EXISTS `ms_clientconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ms_clientconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arztId` decimal(11,0) NOT NULL,
  `config` text NOT NULL,
  `log4j` text NOT NULL,
  `anmerkungen` text NOT NULL,
  `arztid_tmp` decimal(11,0) NOT NULL,
  `alphaDoc` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1274 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_person` decimal(11,0) DEFAULT NULL,
  `id_arzt` int(11) NOT NULL,
  `anrede` smallint(6) DEFAULT NULL,
  `titel` varchar(30) DEFAULT NULL,
  `vorname` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `mobil` varchar(30) DEFAULT NULL,
  `send_email` smallint(1) DEFAULT '1',
  `send_sms` smallint(1) NOT NULL DEFAULT '0',
  `send_mail_pat` smallint(6) NOT NULL DEFAULT '1',
  `send_sms_pat` smallint(6) NOT NULL DEFAULT '1',
  `erinnerung_mundhygiene` int(11) DEFAULT '0',
  `mundhygiene_datum` date DEFAULT NULL,
  `mundhygiene_datum_next` date DEFAULT NULL,
  `erinnerung_kontrolle` int(11) DEFAULT '0',
  `kontrolle_datum` date DEFAULT NULL,
  `kontrolle_datum_next` date DEFAULT NULL,
  `anmerkung_erinnerung` mediumtext,
  `anmerkung_intern` mediumtext,
  `status` int(11) DEFAULT '0',
  `aktivierung_code` varchar(100) DEFAULT NULL,
  `anmeldung_datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `aktualisierung_datum` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `id_person` (`id_person`),
  KEY `id_arzt_email` (`id_arzt`,`email`)
) ENGINE=MyISAM AUTO_INCREMENT=318 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patient_reminder_log`
--

DROP TABLE IF EXISTS `patient_reminder_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_reminder_log` (
  `patient_id` int(11) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `kategorie` smallint(6) NOT NULL,
  `typ` smallint(6) NOT NULL,
  `sendetyp` char(1) NOT NULL,
  `success` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pers`
--

DROP TABLE IF EXISTS `pers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nikname` varchar(4) DEFAULT NULL,
  `fstname` varchar(20) DEFAULT NULL,
  `lstname` varchar(20) DEFAULT NULL,
  `addres1` varchar(50) DEFAULT NULL,
  `addres2` varchar(50) DEFAULT NULL,
  `addres3` varchar(50) DEFAULT NULL,
  `citynam` varchar(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `hmphone` varchar(20) DEFAULT NULL,
  `bnphone` varchar(20) DEFAULT NULL,
  `mbphone` varchar(20) DEFAULT NULL,
  `emailad` varchar(20) DEFAULT NULL,
  `partner` varchar(10) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL,
  `pass` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_to_printpreview`
--

DROP TABLE IF EXISTS `person_to_printpreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_to_printpreview` (
  `personen_id` varchar(20) NOT NULL,
  `printPreviewPath` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typ` int(1) NOT NULL DEFAULT '0' COMMENT '0=anonym, 1=termin, 2=neuer acc, 3=bestehend',
  `terminid` decimal(11,0) NOT NULL,
  `arztid` int(11) NOT NULL,
  `personenid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `hash` varchar(65) NOT NULL,
  `titel` varchar(100) NOT NULL DEFAULT '',
  `bewertung` varchar(1500) NOT NULL,
  `punkte` int(1) NOT NULL DEFAULT '-1',
  `empfehlung` int(1) NOT NULL DEFAULT '-1',
  `betreuung` int(1) NOT NULL DEFAULT '-1',
  `personal` int(1) NOT NULL DEFAULT '-1',
  `ausstattung` int(1) NOT NULL DEFAULT '-1',
  `wartezeit` int(1) NOT NULL DEFAULT '-1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` varchar(60) DEFAULT NULL,
  `markiert` tinyint(1) NOT NULL DEFAULT '0',
  `sichtbar` tinyint(1) NOT NULL DEFAULT '1',
  `done` tinyint(1) NOT NULL DEFAULT '0',
  `randomstring` varchar(50) DEFAULT NULL,
  `IP_MELDUNG` varchar(255) DEFAULT NULL,
  `USERAGENT_MELDUNG` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `terminid` (`terminid`,`name`,`titel`,`bewertung`(767),`punkte`,`timestamp`),
  KEY `terminid_2` (`terminid`),
  KEY `arztid` (`arztid`)
) ENGINE=InnoDB AUTO_INCREMENT=13816 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rating_protokoll`
--

DROP TABLE IF EXISTS `rating_protokoll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating_protokoll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) NOT NULL,
  `patientid` int(11) NOT NULL,
  `arztid` int(11) NOT NULL,
  `flag` int(11) NOT NULL,
  `versanddatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mail` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `uart` varchar(200) NOT NULL,
  `hash` varchar(65) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=149990 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rechnung_arzt`
--

DROP TABLE IF EXISTS `rechnung_arzt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rechnung_arzt` (
  `rechnungsId` int(11) NOT NULL AUTO_INCREMENT,
  `arztId` int(11) NOT NULL,
  `bezahlt` varchar(45) DEFAULT NULL,
  `session` varchar(45) NOT NULL,
  `datum` date DEFAULT NULL,
  `beschreibung` varchar(45) DEFAULT NULL,
  `zeit` time DEFAULT NULL,
  `zahlungsart` varchar(45) DEFAULT NULL,
  `anzahl` int(11) DEFAULT NULL,
  `bestatigungszeit` time DEFAULT NULL,
  `bestatigungsdatum` date DEFAULT NULL,
  `emailVersandAn` varchar(100) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`rechnungsId`)
) ENGINE=MyISAM AUTO_INCREMENT=320073 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_VorschauErinnerungen`
--

DROP TABLE IF EXISTS `reminder_VorschauErinnerungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_VorschauErinnerungen` (
  `TerminID` int(11) NOT NULL,
  `PersonenIdArzt` int(11) NOT NULL,
  `TerminDatum` varchar(100) NOT NULL,
  `TerminVon` varchar(100) NOT NULL,
  `ResBezeichnung` varchar(100) NOT NULL,
  `UartInternKbz` varchar(100) NOT NULL,
  `PatientName` varchar(100) NOT NULL,
  `EmailText` varchar(800) NOT NULL,
  `PatientEmail` varchar(150) NOT NULL,
  `Last_Changed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`TerminID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_filter`
--

DROP TABLE IF EXISTS `reminder_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `arztid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `terminarten` varchar(100) DEFAULT NULL,
  `terminauswahl` int(11) DEFAULT NULL,
  `geschlecht` varchar(1) DEFAULT NULL,
  `alter_unten` int(11) DEFAULT NULL,
  `alter_oben` int(11) DEFAULT NULL,
  `geb` tinyint(1) DEFAULT NULL,
  `kontakt` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `arztid` (`arztid`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_logging`
--

DROP TABLE IF EXISTS `reminder_logging`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_logging` (
  `user_id` varchar(20) NOT NULL,
  `termin_id` varchar(50) NOT NULL,
  `patientName` varchar(200) NOT NULL,
  `terminart` varchar(50) NOT NULL,
  `patientTelefon` varchar(200) NOT NULL,
  `email` varchar(165) NOT NULL,
  `terminDatum` varchar(100) NOT NULL,
  `isNotUpdated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`termin_id`),
  KEY `termin_id` (`termin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_logging_email`
--

DROP TABLE IF EXISTS `reminder_logging_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_logging_email` (
  `error` varchar(255) NOT NULL DEFAULT '0',
  `versandDatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `versand_email` int(11) NOT NULL DEFAULT '0',
  `termin_id` varchar(50) NOT NULL,
  PRIMARY KEY (`termin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_logging_sms`
--

DROP TABLE IF EXISTS `reminder_logging_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_logging_sms` (
  `error` varchar(255) NOT NULL DEFAULT '0',
  `versandDatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `termin_id` varchar(50) NOT NULL,
  `versand_sms` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`termin_id`),
  KEY `termin_id` (`termin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_personen`
--

DROP TABLE IF EXISTS `reminder_personen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_personen` (
  `personen_id` int(11) NOT NULL,
  `Firma` varchar(50) NOT NULL,
  `Anrede` varchar(100) NOT NULL,
  `Titel` varchar(100) NOT NULL,
  `Vorname` varchar(100) NOT NULL,
  `Nachname` varchar(100) NOT NULL,
  `Adresse` varchar(200) NOT NULL,
  `PLZ` int(11) NOT NULL,
  `Ort` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Telefon` varchar(40) NOT NULL,
  `Firmenbuchnummer` varchar(100) NOT NULL,
  `UID` varchar(100) NOT NULL,
  `UIDlocked` int(1) NOT NULL DEFAULT '0' COMMENT 'Ist die UID fixiert?',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`personen_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_status`
--

DROP TABLE IF EXISTS `reminder_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_status` (
  `id` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `erstAktivierung` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alertSend` int(11) NOT NULL DEFAULT '0',
  `grenze` int(11) NOT NULL DEFAULT '50',
  `grenzeErinnert` int(1) NOT NULL DEFAULT '0',
  `geburtstag` int(11) NOT NULL DEFAULT '0',
  `geburtstag_mode` int(11) NOT NULL DEFAULT '0',
  `geburtstag_text` varchar(160) NOT NULL DEFAULT '',
  `smsabsender` varchar(40) NOT NULL DEFAULT 'mednanny',
  `mailbetreff` varchar(200) NOT NULL DEFAULT '[mednanny] Terminerinnerung',
  `fallback` int(11) NOT NULL DEFAULT '1',
  `premium` int(1) NOT NULL DEFAULT '1' COMMENT 'seit 2.5.16 nicht mehr relevant',
  `UST` int(3) NOT NULL DEFAULT '20' COMMENT 'Umsatzsteuer. AT20, DE19, IT22',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_uart_nachlauf`
--

DROP TABLE IF EXISTS `reminder_uart_nachlauf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_uart_nachlauf` (
  `ID` int(11) NOT NULL,
  `nachlauf_email` int(11) NOT NULL DEFAULT '86400',
  `emailText` varchar(3500) DEFAULT NULL,
  `versandZeit_email` int(2) NOT NULL DEFAULT '14',
  `nachlauf_sms` int(11) NOT NULL DEFAULT '86400',
  `smsText` varchar(322) DEFAULT NULL,
  `versandZeit_sms` int(11) NOT NULL DEFAULT '14',
  `smsAktiv` int(11) NOT NULL DEFAULT '0',
  `emailAktiv` int(11) NOT NULL DEFAULT '0',
  `versandZeit_emailWE` int(2) NOT NULL DEFAULT '14',
  `versandZeit_smsWE` int(2) NOT NULL DEFAULT '14',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_uart_nachlauf2`
--

DROP TABLE IF EXISTS `reminder_uart_nachlauf2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_uart_nachlauf2` (
  `ID` int(11) NOT NULL,
  `nachlauf_email` int(11) NOT NULL DEFAULT '86400',
  `emailText` varchar(3500) DEFAULT NULL,
  `versandZeit_email` int(2) NOT NULL DEFAULT '14',
  `nachlauf_sms` int(11) NOT NULL DEFAULT '86400',
  `smsText` varchar(322) DEFAULT NULL,
  `versandZeit_sms` int(11) NOT NULL DEFAULT '14',
  `smsAktiv` int(11) NOT NULL DEFAULT '0',
  `emailAktiv` int(11) NOT NULL DEFAULT '0',
  `versandZeit_emailWE` int(2) NOT NULL DEFAULT '14',
  `versandZeit_smsWE` int(2) NOT NULL DEFAULT '14',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_uart_recall`
--

DROP TABLE IF EXISTS `reminder_uart_recall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_uart_recall` (
  `ID` int(11) NOT NULL,
  `recall_email` int(11) NOT NULL DEFAULT '86400',
  `emailText` varchar(3500) DEFAULT NULL,
  `versandZeit_email` int(2) NOT NULL DEFAULT '14',
  `versandZeit_emailWE` int(2) NOT NULL DEFAULT '14',
  `recall_sms` int(11) NOT NULL DEFAULT '86400',
  `smsText` varchar(322) DEFAULT NULL,
  `versandZeit_sms` int(2) NOT NULL DEFAULT '14',
  `versandZeit_smsWE` int(2) NOT NULL DEFAULT '14',
  `smsAktiv` int(11) NOT NULL DEFAULT '0',
  `emailAktiv` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_uart_recall2`
--

DROP TABLE IF EXISTS `reminder_uart_recall2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_uart_recall2` (
  `ID` int(11) NOT NULL,
  `recall_email` int(11) NOT NULL DEFAULT '86400',
  `emailText` varchar(3500) DEFAULT NULL,
  `versandZeit_email` int(2) NOT NULL DEFAULT '14',
  `versandZeit_emailWE` int(2) NOT NULL DEFAULT '14',
  `recall_sms` int(11) NOT NULL DEFAULT '86400',
  `smsText` varchar(322) DEFAULT NULL,
  `versandZeit_sms` int(2) NOT NULL DEFAULT '14',
  `versandZeit_smsWE` int(2) NOT NULL DEFAULT '14',
  `smsAktiv` int(11) NOT NULL DEFAULT '0',
  `emailAktiv` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_uart_vorlauf`
--

DROP TABLE IF EXISTS `reminder_uart_vorlauf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_uart_vorlauf` (
  `ID` int(11) NOT NULL,
  `vorlauf_email` int(11) NOT NULL DEFAULT '86400',
  `emailText` varchar(3500) DEFAULT NULL,
  `versandZeit_email` int(2) NOT NULL DEFAULT '14',
  `vorlauf_sms` int(11) NOT NULL DEFAULT '86400',
  `smsText` varchar(322) DEFAULT NULL,
  `versandZeit_sms` int(11) NOT NULL DEFAULT '14',
  `smsAktiv` int(11) NOT NULL DEFAULT '0',
  `emailAktiv` int(11) NOT NULL DEFAULT '0',
  `versandZeit_emailWE` int(2) NOT NULL DEFAULT '14',
  `versandZeit_smsWE` int(2) NOT NULL DEFAULT '14',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_uart_vorlauf2`
--

DROP TABLE IF EXISTS `reminder_uart_vorlauf2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_uart_vorlauf2` (
  `ID` int(11) NOT NULL,
  `vorlauf_email` int(11) NOT NULL DEFAULT '86400',
  `emailText` varchar(3500) DEFAULT NULL,
  `versandZeit_email` int(2) NOT NULL DEFAULT '14',
  `vorlauf_sms` int(11) NOT NULL DEFAULT '86400',
  `smsText` varchar(322) DEFAULT NULL,
  `versandZeit_sms` int(11) NOT NULL DEFAULT '14',
  `smsAktiv` int(11) NOT NULL DEFAULT '0',
  `emailAktiv` int(11) NOT NULL DEFAULT '0',
  `versandZeit_emailWE` int(2) NOT NULL DEFAULT '14',
  `versandZeit_smsWE` int(2) NOT NULL DEFAULT '14',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reminder_vorlagen`
--

DROP TABLE IF EXISTS `reminder_vorlagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reminder_vorlagen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `docid` varchar(50) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_protokoll`
--

DROP TABLE IF EXISTS `sms_protokoll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_protokoll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) DEFAULT NULL,
  `arztid` int(11) NOT NULL,
  `flag` int(11) NOT NULL,
  `versanddatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request` text NOT NULL,
  `text` text NOT NULL,
  `konto` int(11) NOT NULL,
  `uart` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=152748 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_protokoll2`
--

DROP TABLE IF EXISTS `sms_protokoll2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_protokoll2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) DEFAULT NULL,
  `arztid` int(11) NOT NULL,
  `flag` int(11) NOT NULL,
  `versanddatum` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `request` text NOT NULL,
  `text` text NOT NULL,
  `konto` int(11) NOT NULL,
  `uart` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164169 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_scheduler`
--

DROP TABLE IF EXISTS `sms_scheduler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_scheduler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) DEFAULT NULL,
  `terminresid` int(11) DEFAULT NULL,
  `uart` varchar(200) DEFAULT NULL,
  `arztid` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL,
  `versanddatum` date NOT NULL,
  `uhrzeit` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  `anmerkung` varchar(255) NOT NULL DEFAULT '',
  `custom` int(1) NOT NULL DEFAULT '0',
  `entfernt` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `terminid` (`terminid`,`terminresid`,`flag`),
  KEY `versanddatum` (`versanddatum`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB AUTO_INCREMENT=3378589 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sms_scheduler2`
--

DROP TABLE IF EXISTS `sms_scheduler2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sms_scheduler2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) DEFAULT NULL,
  `terminresid` int(11) DEFAULT NULL,
  `uart` varchar(200) DEFAULT NULL,
  `arztid` varchar(255) NOT NULL,
  `flag` int(11) NOT NULL,
  `versanddatum` date NOT NULL,
  `uhrzeit` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `text` text NOT NULL,
  `anmerkung` varchar(255) NOT NULL DEFAULT '',
  `custom` int(1) NOT NULL DEFAULT '0',
  `entfernt` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `terminid` (`terminid`,`terminresid`,`flag`),
  KEY `versanddatum` (`versanddatum`),
  KEY `flag` (`flag`)
) ENGINE=InnoDB AUTO_INCREMENT=3368155 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `typ`
--

DROP TABLE IF EXISTS `typ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `typ` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_ereignis` int(11) DEFAULT NULL,
  `id_auspraegung` int(11) DEFAULT NULL,
  `dauer` int(11) DEFAULT NULL,
  `ende` int(11) NOT NULL DEFAULT '0',
  `bez` varchar(160) DEFAULT NULL,
  `is_month` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_ereignis` (`id_ereignis`),
  KEY `id_auspraegung` (`id_auspraegung`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_gegebenheit`
--

DROP TABLE IF EXISTS `user_gegebenheit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_gegebenheit` (
  `id_user` decimal(11,0) NOT NULL,
  `id_gegebenheit` int(11) NOT NULL DEFAULT '0',
  `auswahl` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_user`,`id_gegebenheit`),
  KEY `id_gegebenheit` (`id_gegebenheit`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wgkk_rating`
--

DROP TABLE IF EXISTS `wgkk_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wgkk_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `terminid` int(11) NOT NULL,
  `arztid` int(11) NOT NULL,
  `personenid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `hash` varchar(65) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `IP` varchar(60) DEFAULT NULL COMMENT 'eintrag',
  `f1` text NOT NULL,
  `f2` text NOT NULL,
  `f3` text NOT NULL,
  `f4` text NOT NULL,
  `f5` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=469 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wgkk_ratinguser`
--

DROP TABLE IF EXISTS `wgkk_ratinguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wgkk_ratinguser` (
  `id` int(11) NOT NULL COMMENT 'ID des WGKK Kalenders',
  `KBZ` varchar(255) NOT NULL,
  `LBZ` varchar(500) NOT NULL DEFAULT '',
  `LOGO` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zuweiserVorauswahl`
--

DROP TABLE IF EXISTS `zuweiserVorauswahl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zuweiserVorauswahl` (
  `personen_id` int(11) NOT NULL,
  `klinik` varchar(45) NOT NULL,
  `klinik_titel` varchar(100) NOT NULL,
  PRIMARY KEY (`personen_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 11:25:43
