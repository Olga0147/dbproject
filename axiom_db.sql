-- Adminer 4.7.6 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `axiom_ATTRIBUTES`;
CREATE TABLE `axiom_ATTRIBUTES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` tinytext NOT NULL,
  `COMMENTS` text NOT NULL,
  `ATTRIBUTE_TYPE` int(11) NOT NULL,
  `ATTRIBUTE_SIZE` int(11) NOT NULL,
  `OWNER_CLASS_ID` int(11) NOT NULL,
  `IS_INDEXED` int(11) NOT NULL,
  `IS_NOTNULL` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OWNER_CLASS_ID` (`OWNER_CLASS_ID`),
  CONSTRAINT `axiom_ATTRIBUTES_ibfk_1` FOREIGN KEY (`OWNER_CLASS_ID`) REFERENCES `axiom_CLASSES` (`ID`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `axiom_ATTRIBUTES` (`ID`, `NAME`, `COMMENTS`, `ATTRIBUTE_TYPE`, `ATTRIBUTE_SIZE`, `OWNER_CLASS_ID`, `IS_INDEXED`, `IS_NOTNULL`) VALUES
(2,	'IS_TEMP',	'IS THIS CLASS TEMP FLAG',	1,	1,	1,	0,	0);

DROP TABLE IF EXISTS `axiom_CLASSES`;
CREATE TABLE `axiom_CLASSES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` tinytext NOT NULL,
  `I_NAME` tinytext NOT NULL,
  `COMMENTS` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `axiom_CLASSES` (`ID`, `NAME`, `I_NAME`, `COMMENTS`) VALUES
(1,	'TEST_CLASS0',	'0_TEST',	'JUST TEMP TEST CLASS');

DROP TABLE IF EXISTS `axiom_ELEMENTS`;
CREATE TABLE `axiom_ELEMENTS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OWNER_CLASS_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `OWNER_CLASS_ID` (`OWNER_CLASS_ID`),
  CONSTRAINT `axiom_ELEMENTS_ibfk_1` FOREIGN KEY (`OWNER_CLASS_ID`) REFERENCES `axiom_CLASSES` (`ID`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `axiom_ELEMENTS` (`ID`, `OWNER_CLASS_ID`) VALUES
(1,	1);

-- 2020-03-12 20:14:07