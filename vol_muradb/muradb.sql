mysqldump: [Warning] Using a password on the command line interface can be insecure.

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

/*!40000 DROP DATABASE IF EXISTS `muradb`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `muradb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `muradb`;
DROP TABLE IF EXISTS `tapprovalactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tapprovalactions` (
  `requestID` char(35) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `actionType` varchar(50) DEFAULT '',
  `actiontID` char(35) NOT NULL DEFAULT '',
  `chainID` char(35) DEFAULT '',
  `comments` text,
  `siteID` varchar(25) DEFAULT '',
  `parentID` char(35) DEFAULT '',
  `userID` char(35) DEFAULT '',
  `groupID` char(35) DEFAULT '',
  PRIMARY KEY (`actiontID`),
  KEY `IX_tapprovalactions_requestID` (`requestID`),
  KEY `IX_tapprovalactions_chainID` (`chainID`),
  KEY `IX_tapprovalactions_siteID` (`siteID`),
  KEY `IX_tapprovalactions_parentID` (`parentID`),
  KEY `IX_tapprovalactions_userID` (`userID`),
  KEY `IX_tapprovalactions_groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tapprovalactions` WRITE;
/*!40000 ALTER TABLE `tapprovalactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tapprovalactions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tapprovalassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tapprovalassignments` (
  `contentID` char(35) DEFAULT '',
  `assignmentID` char(35) NOT NULL DEFAULT '',
  `exemptID` text,
  `chainID` char(35) DEFAULT '',
  `siteID` varchar(25) DEFAULT '',
  PRIMARY KEY (`assignmentID`),
  KEY `IX_tapprovalassignments_contentID` (`contentID`),
  KEY `IX_tapprovalassignments_chainID` (`chainID`),
  KEY `IX_tapprovalassignments_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tapprovalassignments` WRITE;
/*!40000 ALTER TABLE `tapprovalassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tapprovalassignments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tapprovalchains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tapprovalchains` (
  `created` datetime DEFAULT NULL,
  `lastupdatebyid` char(35) DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `chainID` char(35) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `lastupdateby` varchar(50) DEFAULT NULL,
  `siteID` varchar(25) DEFAULT '',
  `description` text,
  PRIMARY KEY (`chainID`),
  KEY `IX_tapprovalchains_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tapprovalchains` WRITE;
/*!40000 ALTER TABLE `tapprovalchains` DISABLE KEYS */;
/*!40000 ALTER TABLE `tapprovalchains` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tapprovalmemberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tapprovalmemberships` (
  `membershipID` char(35) NOT NULL DEFAULT '',
  `created` datetime DEFAULT NULL,
  `orderno` int(10) DEFAULT '1',
  `chainID` char(35) DEFAULT '',
  `siteID` varchar(25) DEFAULT '',
  `groupID` char(35) DEFAULT '',
  PRIMARY KEY (`membershipID`),
  KEY `IX_tapprovalmemberships_chainID` (`chainID`),
  KEY `IX_tapprovalmemberships_siteID` (`siteID`),
  KEY `IX_tapprovalmemberships_groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tapprovalmemberships` WRITE;
/*!40000 ALTER TABLE `tapprovalmemberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `tapprovalmemberships` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tapprovalrequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tapprovalrequests` (
  `contentHistID` char(35) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `requestID` char(35) NOT NULL DEFAULT '',
  `chainID` char(35) DEFAULT '',
  `siteID` varchar(25) DEFAULT '',
  `userID` char(35) DEFAULT '',
  `groupID` char(35) DEFAULT '',
  PRIMARY KEY (`requestID`),
  KEY `IX_tapprovalrequests_contentHistID` (`contentHistID`),
  KEY `IX_tapprovalrequests_chainID` (`chainID`),
  KEY `IX_tapprovalrequests_siteID` (`siteID`),
  KEY `IX_tapprovalrequests_userID` (`userID`),
  KEY `IX_tapprovalrequests_groupID` (`groupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tapprovalrequests` WRITE;
/*!40000 ALTER TABLE `tapprovalrequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tapprovalrequests` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tchangesetcategoryassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tchangesetcategoryassign` (
  `changesetid` char(35) DEFAULT '',
  `assignmentid` char(35) NOT NULL DEFAULT '',
  `categoryid` char(35) DEFAULT '',
  `siteid` varchar(25) DEFAULT '',
  PRIMARY KEY (`assignmentid`),
  KEY `IX_tchangesetcategoryassign_changesetid` (`changesetid`),
  KEY `IX_tchangesetcategoryassign_categoryid` (`categoryid`),
  KEY `IX_tchangesetcategoryassign_siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tchangesetcategoryassign` WRITE;
/*!40000 ALTER TABLE `tchangesetcategoryassign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tchangesetcategoryassign` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tchangesetrollback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tchangesetrollback` (
  `changesetID` char(35) DEFAULT '',
  `previousHistID` char(35) DEFAULT '',
  `rollbackID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(25) DEFAULT '',
  `changesetHistID` char(35) DEFAULT '',
  PRIMARY KEY (`rollbackID`),
  KEY `IX_tchangesetrollback_changesetID` (`changesetID`),
  KEY `IX_tchangesetrollback_previousHistID` (`previousHistID`),
  KEY `IX_tchangesetrollback_siteID` (`siteID`),
  KEY `IX_tchangesetrollback_changesetHistID` (`changesetHistID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tchangesetrollback` WRITE;
/*!40000 ALTER TABLE `tchangesetrollback` DISABLE KEYS */;
/*!40000 ALTER TABLE `tchangesetrollback` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tchangesets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tchangesets` (
  `changesetID` char(35) NOT NULL,
  `siteID` varchar(25) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `created` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `published` tinyint(3) DEFAULT NULL,
  `lastUpdate` datetime DEFAULT NULL,
  `lastUpdateBy` varchar(50) DEFAULT NULL,
  `lastUpdateByID` char(35) DEFAULT NULL,
  `remoteID` varchar(255) DEFAULT NULL,
  `remotePubDate` datetime DEFAULT NULL,
  `remoteSourceURL` varchar(255) DEFAULT NULL,
  `closeDate` datetime DEFAULT NULL,
  PRIMARY KEY (`changesetID`),
  KEY `IX_tchangesets_siteID` (`siteID`),
  KEY `IX_tchangesets_publishDate` (`publishDate`),
  KEY `IX_tchangesets_remoteID` (`remoteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tchangesets` WRITE;
/*!40000 ALTER TABLE `tchangesets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tchangesets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tchangesettagassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tchangesettagassign` (
  `changesetid` char(35) DEFAULT '',
  `assignmentid` char(35) NOT NULL DEFAULT '',
  `tag` varchar(100) DEFAULT NULL,
  `siteid` varchar(25) DEFAULT '',
  PRIMARY KEY (`assignmentid`),
  KEY `IX_tchangesettagassign_changesetid` (`changesetid`),
  KEY `IX_tchangesettagassign_tag` (`tag`),
  KEY `IX_tchangesettagassign_siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tchangesettagassign` WRITE;
/*!40000 ALTER TABLE `tchangesettagassign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tchangesettagassign` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tclassextend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclassextend` (
  `subTypeID` char(35) NOT NULL,
  `siteID` varchar(25) DEFAULT NULL,
  `baseTable` varchar(50) DEFAULT NULL,
  `baseKeyField` varchar(50) DEFAULT NULL,
  `dataTable` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `subType` varchar(50) DEFAULT NULL,
  `isActive` tinyint(3) DEFAULT NULL,
  `notes` longtext,
  `lastUpdate` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `lastUpdateBy` varchar(100) DEFAULT NULL,
  `hasSummary` tinyint(4) DEFAULT '1',
  `hasBody` tinyint(4) DEFAULT '1',
  `description` longtext,
  `availableSubTypes` longtext,
  `iconclass` varchar(50) DEFAULT NULL,
  `hasAssocFile` tinyint(4) DEFAULT '1',
  `hasConfigurator` int(10) DEFAULT '1',
  `adminonly` int(10) DEFAULT NULL,
  PRIMARY KEY (`subTypeID`),
  KEY `IX_extend_type` (`type`,`subType`),
  KEY `IX_extend_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tclassextend` WRITE;
/*!40000 ALTER TABLE `tclassextend` DISABLE KEYS */;
/*!40000 ALTER TABLE `tclassextend` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tclassextendattributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclassextendattributes` (
  `attributeID` int(11) NOT NULL AUTO_INCREMENT,
  `extendSetID` char(35) DEFAULT NULL,
  `siteID` varchar(25) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `label` text,
  `hint` text,
  `type` varchar(100) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  `isActive` tinyint(3) DEFAULT NULL,
  `required` varchar(50) DEFAULT NULL,
  `validation` varchar(50) DEFAULT NULL,
  `regex` text,
  `message` text,
  `defaultValue` varchar(100) DEFAULT NULL,
  `optionList` longtext,
  `optionLabelList` longtext,
  `adminonly` int(10) DEFAULT NULL,
  PRIMARY KEY (`attributeID`),
  KEY `Index_2` (`extendSetID`),
  KEY `IX_extend_attr_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tclassextendattributes` WRITE;
/*!40000 ALTER TABLE `tclassextendattributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tclassextendattributes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tclassextenddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclassextenddata` (
  `dataID` int(11) NOT NULL AUTO_INCREMENT,
  `baseID` char(35) NOT NULL,
  `attributeID` int(11) NOT NULL,
  `siteID` varchar(25) DEFAULT NULL,
  `attributeValue` longtext,
  `remoteID` varchar(35) DEFAULT NULL,
  `datetimevalue` datetime DEFAULT NULL,
  `numericvalue` float DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`),
  KEY `Index_2` (`baseID`),
  KEY `Index_3` (`attributeID`),
  KEY `IX_extend_remoteID1` (`remoteID`),
  KEY `IX_extend_date1` (`datetimevalue`),
  KEY `IX_extend_numeric1` (`numericvalue`),
  KEY `IX_extend_string1` (`stringvalue`),
  KEY `IX_tclassextenddata_baseID_attributeID` (`baseID`,`attributeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tclassextenddata` WRITE;
/*!40000 ALTER TABLE `tclassextenddata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tclassextenddata` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tclassextenddatauseractivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclassextenddatauseractivity` (
  `dataID` int(11) NOT NULL AUTO_INCREMENT,
  `baseID` char(35) NOT NULL,
  `attributeID` int(11) NOT NULL,
  `siteID` varchar(25) DEFAULT NULL,
  `attributeValue` longtext,
  `remoteID` varchar(35) DEFAULT NULL,
  `datetimevalue` datetime DEFAULT NULL,
  `numericvalue` float DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`),
  KEY `Index_2` (`baseID`),
  KEY `Index_3` (`attributeID`),
  KEY `IX_extend_remote2` (`remoteID`),
  KEY `IX_extend_date2` (`datetimevalue`),
  KEY `IX_extend_numeric2` (`numericvalue`),
  KEY `IX_extend_string2` (`stringvalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tclassextenddatauseractivity` WRITE;
/*!40000 ALTER TABLE `tclassextenddatauseractivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tclassextenddatauseractivity` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tclassextendrcsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclassextendrcsets` (
  `orderNo` int(10) DEFAULT NULL,
  `availableSubTypes` text,
  `siteID` varchar(25) DEFAULT '',
  `relatedContentSetID` char(35) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `subTypeID` varchar(35) DEFAULT '',
  PRIMARY KEY (`relatedContentSetID`),
  KEY `IX_tclassextendrcsets_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tclassextendrcsets` WRITE;
/*!40000 ALTER TABLE `tclassextendrcsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tclassextendrcsets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tclassextendsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclassextendsets` (
  `extendSetID` char(35) NOT NULL,
  `subTypeID` char(35) DEFAULT NULL,
  `categoryID` longtext,
  `siteID` varchar(25) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `orderno` int(11) DEFAULT NULL,
  `isActive` tinyint(3) DEFAULT NULL,
  `container` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`extendSetID`),
  KEY `Index_2` (`subTypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tclassextendsets` WRITE;
/*!40000 ALTER TABLE `tclassextendsets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tclassextendsets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tclustercommands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclustercommands` (
  `commandID` char(35) NOT NULL DEFAULT '',
  `instanceID` char(35) DEFAULT NULL,
  `command` longtext,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`commandID`),
  KEY `IX_tclustercommands_instanceID` (`instanceID`),
  KEY `IX_tclustercommands_created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tclustercommands` WRITE;
/*!40000 ALTER TABLE `tclustercommands` DISABLE KEYS */;
INSERT INTO `tclustercommands` VALUES ('5131AF57-3C9A-45BE-83E3B83BCCA14C28','D3EBAD9F-E95E-426D-A1147F41D01884A3','getBean(\'contentManager\').purgeContentCache(contentID=\'00000000000000000000000000000000001\',siteID=\'default\',broadcast=false)','2019-03-21 01:32:24'),('77920F6A-0A8E-4FA8-B8BB7E1CF0AB0C44','FC1A7BD2-1029-4C96-8CF890D6A04CEB3A','getBean(\'contentManager\').purgeContentCache(contentID=\'00000000000000000000000000000000001\',siteID=\'default\',broadcast=false)','2019-03-21 01:32:24'),('99B5A727-4BF4-403C-BA29B2B632CE6041','FC1A7BD2-1029-4C96-8CF890D6A04CEB3A','getBean(\'settingsManager\').getSite(\'default\').purgeCache(name=\'output\',broadcast=false)','2019-03-21 01:32:23'),('B0591153-BDA8-4F10-811C71DED6A249AD','D3EBAD9F-E95E-426D-A1147F41D01884A3','getBean(\'settingsManager\').getSite(\'default\').purgeCache(name=\'output\',broadcast=false)','2019-03-21 01:32:23'),('C4BA84E2-B9AD-4E81-84386A9B823618FC','ABF65E48-4B25-42D4-96DB310301097574','getBean(\'contentManager\').purgeContentCache(contentID=\'00000000000000000000000000000000001\',siteID=\'default\',broadcast=false)','2019-03-21 01:32:24'),('F46F8CB1-6BB7-42F6-BA6196E53B22F5AA','ABF65E48-4B25-42D4-96DB310301097574','getBean(\'settingsManager\').getSite(\'default\').purgeCache(name=\'output\',broadcast=false)','2019-03-21 01:32:23');
/*!40000 ALTER TABLE `tclustercommands` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tclusterpeers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tclusterpeers` (
  `instanceID` char(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`instanceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tclusterpeers` WRITE;
/*!40000 ALTER TABLE `tclusterpeers` DISABLE KEYS */;
INSERT INTO `tclusterpeers` VALUES ('ABF65E48-4B25-42D4-96DB310301097574'),('B34EAB33-29AD-42F5-83EC2D67A6181933'),('D3EBAD9F-E95E-426D-A1147F41D01884A3'),('F998EF60-A131-4A4B-8CA7D701113757C8'),('FC1A7BD2-1029-4C96-8CF890D6A04CEB3A');
/*!40000 ALTER TABLE `tclusterpeers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontent` (
  `TContent_ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `SiteID` varchar(25) DEFAULT NULL,
  `ModuleID` char(35) DEFAULT NULL,
  `ParentID` char(35) DEFAULT NULL,
  `ContentID` char(35) DEFAULT NULL,
  `ContentHistID` char(35) DEFAULT NULL,
  `RemoteID` varchar(255) DEFAULT NULL,
  `remoteurl` text,
  `RemotePubDate` varchar(50) DEFAULT NULL,
  `remotesourceurl` text,
  `remotesource` text,
  `Credits` varchar(255) DEFAULT NULL,
  `FileID` char(35) DEFAULT NULL,
  `Template` varchar(50) DEFAULT NULL,
  `Type` varchar(25) DEFAULT NULL,
  `subType` varchar(25) DEFAULT NULL,
  `Active` tinyint(3) DEFAULT '0',
  `OrderNo` int(10) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(255) DEFAULT NULL,
  `Summary` longtext,
  `Filename` varchar(255) DEFAULT NULL,
  `metadesc` text,
  `metakeywords` text,
  `Body` longtext,
  `lastUpdate` datetime DEFAULT NULL,
  `lastUpdateBy` varchar(50) DEFAULT NULL,
  `lastUpdateByID` varchar(50) DEFAULT NULL,
  `DisplayStart` datetime DEFAULT NULL,
  `DisplayStop` datetime DEFAULT NULL,
  `Display` tinyint(3) DEFAULT NULL,
  `Approved` tinyint(3) DEFAULT NULL,
  `IsNav` tinyint(3) DEFAULT NULL,
  `Restricted` tinyint(3) DEFAULT NULL,
  `restrictgroups` text,
  `Target` varchar(50) DEFAULT NULL,
  `targetparams` text,
  `responseChart` tinyint(3) DEFAULT NULL,
  `responseMessage` longtext,
  `responsesendto` text,
  `responsedisplayfields` text,
  `moduleassign` text,
  `displayTitle` tinyint(3) DEFAULT NULL,
  `notes` text,
  `inheritObjects` varchar(25) DEFAULT NULL,
  `isFeature` tinyint(3) DEFAULT NULL,
  `ReleaseDate` datetime DEFAULT NULL,
  `IsLocked` tinyint(3) DEFAULT NULL,
  `nextN` int(10) DEFAULT NULL,
  `sortBy` varchar(50) DEFAULT NULL,
  `sortDirection` varchar(50) DEFAULT NULL,
  `featureStart` datetime DEFAULT NULL,
  `featureStop` datetime DEFAULT NULL,
  `forceSSL` tinyint(3) NOT NULL DEFAULT '0',
  `audience` text,
  `keypoints` text,
  `searchExclude` tinyint(3) DEFAULT NULL,
  `path` text,
  `tags` text,
  `doCache` tinyint(3) DEFAULT NULL,
  `urltitle` varchar(255) DEFAULT NULL,
  `htmltitle` text,
  `created` datetime DEFAULT NULL,
  `mobileExclude` tinyint(3) DEFAULT NULL,
  `changesetID` char(35) DEFAULT NULL,
  `imageSize` varchar(50) DEFAULT NULL,
  `imageHeight` varchar(15) DEFAULT NULL,
  `imageWidth` varchar(15) DEFAULT NULL,
  `childTemplate` varchar(50) DEFAULT NULL,
  `majorVersion` int(11) DEFAULT NULL,
  `minorVersion` int(11) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `displayInterval` varchar(200) DEFAULT NULL,
  `objectParams` text,
  PRIMARY KEY (`TContent_ID`),
  KEY `IX_TContent` (`ContentID`),
  KEY `IX_TContent_1` (`ContentHistID`),
  KEY `IX_TContent_2` (`SiteID`),
  KEY `IX_TContent_3` (`ParentID`),
  KEY `IX_TContent_4` (`RemoteID`),
  KEY `IX_TContent_5` (`ModuleID`),
  KEY `IX_tcontent_mobileExclude` (`mobileExclude`),
  KEY `IX_tcontent_changesetID` (`changesetID`),
  KEY `IX_tcontent_urltitle` (`urltitle`),
  KEY `IX_tcontent_displaystart` (`DisplayStart`),
  KEY `IX_tcontent_displaystop` (`DisplayStop`),
  KEY `IX_tcontent_approved` (`Approved`),
  KEY `IX_tcontent_active` (`Active`),
  KEY `IX_tcontent_display` (`Display`),
  KEY `IX_tcontent_isfeature` (`isFeature`),
  KEY `IX_tcontent_type` (`Type`),
  KEY `IX_tcontent_filename` (`Filename`),
  KEY `IX_tcontent_title` (`Title`),
  KEY `IX_tcontent_subtype` (`subType`),
  KEY `IX_tcontent_isnav` (`IsNav`),
  KEY `ntID_Type_subType_Display_DisplayStart_DisplayStop_mobileExclude` (`SiteID`,`Active`,`Approved`,`IsNav`,`ModuleID`,`searchExclude`,`ContentID`,`Type`,`subType`,`Display`,`DisplayStart`,`DisplayStop`,`mobileExclude`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontent` WRITE;
/*!40000 ALTER TABLE `tcontent` DISABLE KEYS */;
INSERT INTO `tcontent` VALUES (1,'default','00000000000000000000000000000000003','00000000000000000000000000000000END','00000000000000000000000000000000003','6300ED4A-1320-5CC3-F9D6A2D279E386D0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Components','Components',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'Components','Components',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(2,'default','00000000000000000000000000000000004','00000000000000000000000000000000END','00000000000000000000000000000000004','6300ED59-1320-5CC3-F9706221E0EFF7A2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Forms','Forms',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,'Forms','Forms',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(3,'default','00000000000000000000000000000000000','00000000000000000000000000000000END','00000000000000000000000000000000001','6300ED69-1320-5CC3-F922E3012E2C6BAE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default.cfm','Page','Default',0,1,'Home','Home',NULL,NULL,NULL,NULL,NULL,'2019-03-21 01:12:45','System',NULL,NULL,NULL,1,1,1,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,0,NULL,'Cascade',0,NULL,0,10,'orderno','asc',NULL,NULL,0,NULL,NULL,0,'00000000000000000000000000000000001',NULL,NULL,'Home','Home','2019-03-21 01:12:45',NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(4,'default','00000000000000000000000000000000006','00000000000000000000000000000000END','00000000000000000000000000000000006','6300ED79-1320-5CC3-F92E6325C26664B6',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Advertising','Advertising',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,'Advertising',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(5,'default','00000000000000000000000000000000000','00000000000000000000000000000000END','00000000000000000000000000000000000','6300ED88-1320-5CC3-F9E241684D21FEC9',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Site Manager','Site Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,'Site Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(6,'default','00000000000000000000000000000000008','00000000000000000000000000000000END','00000000000000000000000000000000008','6300ED98-1320-5CC3-F9398EB23A57CBD0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Site Members','Site Members',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,'Site Members',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(7,'default','00000000000000000000000000000000005','00000000000000000000000000000000END','00000000000000000000000000000000005','6300EDA8-1320-5CC3-F93DF074187C935E',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Email Broadcaster','Email Broadcaster',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,'Email Broadcaster',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(8,'default','00000000000000000000000000000000009','00000000000000000000000000000000END','00000000000000000000000000000000009','6300EDB7-1320-5CC3-F9D664F38EBBD2D0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Mailing Lists','Mailing Lists',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,'Mailing Lists',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(9,'default','00000000000000000000000000000000010','00000000000000000000000000000000END','00000000000000000000000000000000010','6300EDC7-1320-5CC3-F9DB8034C9626B70',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Categories','Categories',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,'Categories',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(10,'default','00000000000000000000000000000000011','00000000000000000000000000000000END','00000000000000000000000000000000011','6300EDD6-1320-5CC3-F9625545444B880F',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Collections Manager','Collections Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,'Content Collections',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(11,'default','00000000000000000000000000000000012','00000000000000000000000000000000END','00000000000000000000000000000000012','6300EDE6-1320-5CC3-F94E2FCEF5DE046D',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','Default',1,NULL,'Filemanager Manager','Filemanager Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,NULL,'Filemanager Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(12,'default','00000000000000000000000000000000014','00000000000000000000000000000000END','00000000000000000000000000000000014','A4011698-5F4D-44F3-8762B53FC7B7C884',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','default',1,NULL,'Content Staging Manager','Content Staging Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL),(13,'default','00000000000000000000000000000000015','00000000000000000000000000000000END','00000000000000000000000000000000015','5523EB12-7AF3-42D4-8465FA6B85B9A602',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','default',1,NULL,'Comments Manager','Comments Manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'default','00000000000000000000000000000000099','00000000000000000000000000000000END','00000000000000000000000000000000099','9051C98E-845C-4F46-B01235A2817FD186',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','default',1,NULL,'Remote Variations','Remote Variations',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'default','00000000000000000000000000000000016','00000000000000000000000000000000END','00000000000000000000000000000000016','1ED14013-58E8-488B-A25495379CEC25EE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Module','default',1,NULL,'Mura ORM Scaffolding',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'default','00000000000000000000000000000000000','00000000000000000000000000000000END','00000000000000000000000000000000001','7559931C-6D76-4DC8-95D9E5791E90BBF1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default.cfm','Page','Default',0,1,'Home','Home',NULL,NULL,NULL,NULL,'<h2>Docker Testing Port 8001</h2>\r\n\r\n<p><img alt=\"\" src=\"/sites/default/assets/Image/whats-on-lg.png\" style=\"height:209px; width:209px\" /></p>','2019-03-21 01:14:11','Admin User','6263A801-07A0-4CB5-8D74708CBFB9BE89',NULL,NULL,1,1,1,0,NULL,'_self',NULL,0,NULL,NULL,NULL,NULL,0,NULL,'Cascade',0,NULL,0,10,'orderno','asc',NULL,NULL,0,NULL,NULL,0,'00000000000000000000000000000000001',NULL,1,'Home','Home','2019-03-21 01:12:45',0,NULL,'small','AUTO','AUTO',NULL,0,0,NULL,NULL,'{}'),(17,'default','00000000000000000000000000000000000','00000000000000000000000000000000END','00000000000000000000000000000000001','FC2B6E24-C764-4180-BE4EE032229C11C7',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default.cfm','Page','Default',1,1,'Home','Home',NULL,NULL,NULL,NULL,'<h2>Docker Testing Port 8001</h2>\r\n\r\n<p><img alt=\"\" src=\"/sites/default/assets/Image/whats-on-lg.png\" style=\"height:209px; width:209px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"/sites/default/assets/Image/WHATS%20ON%20(chalkboard%20style).jpg\" style=\"height:299px; width:960px\" /></p>','2019-03-21 01:32:23','Admin User','6263A801-07A0-4CB5-8D74708CBFB9BE89',NULL,NULL,1,1,1,0,NULL,'_self',NULL,0,NULL,NULL,NULL,NULL,0,NULL,'Cascade',0,NULL,0,10,'orderno','asc',NULL,NULL,0,NULL,NULL,0,'00000000000000000000000000000000001',NULL,1,'Home','Home','2019-03-21 01:12:45',0,NULL,'small','AUTO','AUTO',NULL,0,0,NULL,NULL,'{}');
/*!40000 ALTER TABLE `tcontent` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentassignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentassignments` (
  `contentID` char(35) NOT NULL DEFAULT '',
  `contentHistID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(25) NOT NULL DEFAULT '',
  `userID` char(35) NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`contentID`,`contentHistID`,`siteID`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentassignments` WRITE;
/*!40000 ALTER TABLE `tcontentassignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentassignments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentcategories` (
  `categoryID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(25) DEFAULT NULL,
  `parentID` char(35) DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `lastUpdate` datetime DEFAULT NULL,
  `lastUpdateBy` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `notes` longtext,
  `isInterestGroup` int(10) DEFAULT NULL,
  `isActive` int(10) DEFAULT NULL,
  `isOpen` int(10) DEFAULT NULL,
  `sortBy` varchar(50) DEFAULT NULL,
  `sortDirection` varchar(50) DEFAULT NULL,
  `restrictGroups` varchar(255) DEFAULT NULL,
  `path` longtext,
  `remoteID` varchar(255) DEFAULT NULL,
  `remoteSourceURL` varchar(255) DEFAULT NULL,
  `remotePubDate` datetime DEFAULT NULL,
  `urltitle` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `isfeatureable` int(10) DEFAULT NULL,
  PRIMARY KEY (`categoryID`),
  KEY `IX_TContentCategories` (`siteID`),
  KEY `IX_category_remoteID` (`remoteID`),
  KEY `IX_tcontentcategories_name` (`name`),
  KEY `IX_tcontentcategories_urltitle` (`urltitle`),
  KEY `IX_tcontentcategories_parentid` (`parentID`),
  KEY `IX_tcontentcategories_filename` (`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentcategories` WRITE;
/*!40000 ALTER TABLE `tcontentcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentcategories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentcategoryassign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentcategoryassign` (
  `contentHistID` char(35) NOT NULL DEFAULT '',
  `categoryID` char(35) NOT NULL DEFAULT '',
  `contentID` char(35) DEFAULT NULL,
  `isFeature` int(10) DEFAULT NULL,
  `orderno` int(10) DEFAULT NULL,
  `siteID` varchar(50) DEFAULT NULL,
  `featureStart` datetime DEFAULT NULL,
  `featureStop` datetime DEFAULT NULL,
  PRIMARY KEY (`contentHistID`,`categoryID`),
  KEY `IX_tcontentcategoryassign_isfeature` (`isFeature`),
  KEY `IX_tcontentcategoryassign_featurestart` (`featureStart`),
  KEY `IX_tcontentcategoryassign_featurestop` (`featureStop`),
  KEY `IX_tcontentcategoryassign_contentID` (`contentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentcategoryassign` WRITE;
/*!40000 ALTER TABLE `tcontentcategoryassign` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentcategoryassign` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentcommentcommenters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentcommentcommenters` (
  `commenterID` char(35) NOT NULL DEFAULT '',
  `name` varchar(50) DEFAULT NULL,
  `remoteID` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`commenterID`),
  KEY `IX_tcontentcommentcommenters_remoteID` (`remoteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentcommentcommenters` WRITE;
/*!40000 ALTER TABLE `tcontentcommentcommenters` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentcommentcommenters` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentcomments` (
  `commentid` char(35) NOT NULL DEFAULT '',
  `contentid` char(35) DEFAULT NULL,
  `contenthistid` char(35) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `comments` longtext,
  `entered` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `siteid` varchar(25) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `isApproved` tinyint(3) DEFAULT '0',
  `subscribe` tinyint(3) DEFAULT NULL,
  `userID` char(35) DEFAULT NULL,
  `parentID` char(35) DEFAULT NULL,
  `path` longtext,
  `remoteID` char(35) DEFAULT NULL,
  `flagCount` int(10) DEFAULT '0',
  `isSpam` int(10) DEFAULT '0',
  `isDeleted` int(10) DEFAULT '0',
  PRIMARY KEY (`commentid`),
  KEY `IX_TContentComments` (`contentid`),
  KEY `IX_tcontentcomments_parentID` (`parentID`),
  KEY `IX_tcontentcomments_remoteid` (`remoteID`),
  KEY `IX_tcontentcomments_entered` (`entered`),
  KEY `IX_tcontentcomments_userid` (`userID`),
  KEY `IX_tcontentcomments_siteid` (`siteid`),
  KEY `IX_tcontentcomments_flagCount` (`flagCount`),
  KEY `IX_tcontentcomments_isSpam` (`isSpam`),
  KEY `IX_tcontentcomments_isDeleted` (`isDeleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentcomments` WRITE;
/*!40000 ALTER TABLE `tcontentcomments` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentcomments` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentdisplaytitleapprovals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentdisplaytitleapprovals` (
  `contentid` char(35) NOT NULL DEFAULT '',
  `isApproved` tinyint(3) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `siteid` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentdisplaytitleapprovals` WRITE;
/*!40000 ALTER TABLE `tcontentdisplaytitleapprovals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentdisplaytitleapprovals` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontenteventreminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontenteventreminders` (
  `contentId` char(35) NOT NULL DEFAULT '',
  `siteId` varchar(35) NOT NULL DEFAULT '',
  `email` varchar(200) NOT NULL DEFAULT '',
  `RemindDate` datetime DEFAULT NULL,
  `RemindHour` int(10) DEFAULT NULL,
  `RemindMinute` int(10) DEFAULT NULL,
  `RemindInterval` int(10) DEFAULT NULL,
  `isSent` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontenteventreminders` WRITE;
/*!40000 ALTER TABLE `tcontenteventreminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontenteventreminders` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentfeedadvancedparams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentfeedadvancedparams` (
  `paramID` char(35) NOT NULL DEFAULT '',
  `feedID` char(35) NOT NULL DEFAULT '',
  `param` decimal(18,0) DEFAULT NULL,
  `relationship` varchar(50) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  `condition` varchar(50) DEFAULT NULL,
  `criteria` varchar(200) DEFAULT NULL,
  `dataType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`paramID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentfeedadvancedparams` WRITE;
/*!40000 ALTER TABLE `tcontentfeedadvancedparams` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentfeedadvancedparams` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentfeeditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentfeeditems` (
  `feedID` char(35) NOT NULL DEFAULT '',
  `itemID` char(35) NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`feedID`,`itemID`),
  KEY `IX_tcontentfeeditems_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentfeeditems` WRITE;
/*!40000 ALTER TABLE `tcontentfeeditems` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentfeeditems` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentfeeds` (
  `feedID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(35) DEFAULT NULL,
  `parentID` char(35) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `isActive` tinyint(3) DEFAULT NULL,
  `isPublic` tinyint(3) DEFAULT NULL,
  `isDefault` tinyint(3) DEFAULT NULL,
  `isFeaturesOnly` tinyint(3) DEFAULT NULL,
  `description` longtext,
  `maxItems` int(10) DEFAULT NULL,
  `allowHTML` tinyint(3) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `lastUpdateBy` varchar(100) DEFAULT NULL,
  `lastUpdate` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `restricted` tinyint(3) DEFAULT NULL,
  `restrictGroups` longtext,
  `version` varchar(50) DEFAULT NULL,
  `channellink` longtext,
  `Type` varchar(50) DEFAULT NULL,
  `sortBy` varchar(50) DEFAULT NULL,
  `sortDirection` varchar(50) DEFAULT NULL,
  `nextN` int(10) DEFAULT NULL,
  `displayName` tinyint(3) DEFAULT NULL,
  `displayRatings` tinyint(3) DEFAULT NULL,
  `displayComments` tinyint(3) DEFAULT NULL,
  `altname` varchar(250) DEFAULT NULL,
  `remoteID` varchar(255) DEFAULT NULL,
  `remoteSourceURL` varchar(255) DEFAULT NULL,
  `remotePubDate` datetime DEFAULT NULL,
  `imageSize` varchar(50) DEFAULT NULL,
  `imageHeight` varchar(15) DEFAULT NULL,
  `imageWidth` varchar(15) DEFAULT NULL,
  `displayList` longtext,
  `showNavOnly` tinyint(3) DEFAULT NULL,
  `showExcludeSearch` tinyint(3) DEFAULT NULL,
  `viewalllink` varchar(255) DEFAULT NULL,
  `viewalllabel` varchar(100) DEFAULT NULL,
  `cssclass` varchar(255) DEFAULT NULL,
  `autoimport` tinyint(4) DEFAULT '0',
  `isLocked` tinyint(4) DEFAULT '0',
  `contentpoolid` text,
  `useCategoryIntersect` int(10) DEFAULT NULL,
  `authtype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`feedID`),
  KEY `IX_TContentFeeds` (`siteID`),
  KEY `IX_feed_remoteID` (`remoteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentfeeds` WRITE;
/*!40000 ALTER TABLE `tcontentfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentfeeds` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentfilemetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentfilemetadata` (
  `caption` text,
  `remotePubDate` datetime DEFAULT NULL,
  `fileid` char(35) DEFAULT '',
  `contenthistid` char(35) DEFAULT '',
  `credits` text,
  `metaID` char(35) NOT NULL DEFAULT '',
  `remoteSource` varchar(255) DEFAULT NULL,
  `remoteSourceURL` varchar(255) DEFAULT NULL,
  `contentid` char(35) DEFAULT '',
  `altText` varchar(255) DEFAULT NULL,
  `remoteID` varchar(255) DEFAULT NULL,
  `remoteURL` varchar(255) DEFAULT NULL,
  `siteID` varchar(25) DEFAULT '',
  `exif` text,
  PRIMARY KEY (`metaID`),
  KEY `IX_tcontentfilemetadata_fileid` (`fileid`),
  KEY `IX_tcontentfilemetadata_contenthistid` (`contenthistid`),
  KEY `IX_tcontentfilemetadata_contentid` (`contentid`),
  KEY `IX_tcontentfilemetadata_remoteID` (`remoteID`),
  KEY `IX_tcontentfilemetadata_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentfilemetadata` WRITE;
/*!40000 ALTER TABLE `tcontentfilemetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentfilemetadata` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentfilenamearchive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentfilenamearchive` (
  `contentID` char(35) DEFAULT '',
  `filename` varchar(255) DEFAULT NULL,
  `archiveid` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(25) DEFAULT '',
  PRIMARY KEY (`archiveid`),
  KEY `IX_tcontentfilenamearchive_contentID` (`contentID`),
  KEY `IX_tcontentfilenamearchive_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentfilenamearchive` WRITE;
/*!40000 ALTER TABLE `tcontentfilenamearchive` DISABLE KEYS */;
INSERT INTO `tcontentfilenamearchive` VALUES ('00000000000000000000000000000000001',NULL,'2B83B0EB-7923-4603-9F0753E9444B1C8D','default'),('00000000000000000000000000000000001',NULL,'59F6333C-BF3E-48CC-920CBCF7307C1D65','default');
/*!40000 ALTER TABLE `tcontentfilenamearchive` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentobjects` (
  `ContentHistID` char(35) NOT NULL DEFAULT '',
  `ObjectID` varchar(100) NOT NULL DEFAULT '',
  `Object` varchar(50) NOT NULL DEFAULT '',
  `ContentID` char(35) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `OrderNo` int(10) NOT NULL,
  `SiteID` varchar(25) DEFAULT NULL,
  `ColumnID` int(10) NOT NULL DEFAULT '0',
  `Params` longtext,
  PRIMARY KEY (`ContentHistID`,`ObjectID`,`Object`,`ColumnID`,`OrderNo`),
  KEY `IX_TContentObjects` (`SiteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentobjects` WRITE;
/*!40000 ALTER TABLE `tcontentobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentobjects` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentpublicsubmissionapprovals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentpublicsubmissionapprovals` (
  `contentID` char(35) NOT NULL DEFAULT '',
  `isApproved` int(10) unsigned NOT NULL,
  `email` varchar(150) NOT NULL,
  `siteID` varchar(25) NOT NULL,
  PRIMARY KEY (`contentID`,`siteID`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentpublicsubmissionapprovals` WRITE;
/*!40000 ALTER TABLE `tcontentpublicsubmissionapprovals` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentpublicsubmissionapprovals` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentratings` (
  `contentID` char(35) NOT NULL DEFAULT '',
  `userID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(35) NOT NULL DEFAULT '',
  `rate` int(10) DEFAULT NULL,
  `entered` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contentID`,`userID`,`siteID`),
  KEY `IDX_ENTERED` (`entered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentratings` WRITE;
/*!40000 ALTER TABLE `tcontentratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentratings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentrelated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentrelated` (
  `contentHistID` char(35) NOT NULL DEFAULT '',
  `relatedID` char(35) NOT NULL DEFAULT '',
  `contentID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(25) NOT NULL DEFAULT '',
  `relatedContentSetID` varchar(35) DEFAULT '00000000000000000000000000000000000',
  `orderNo` int(10) DEFAULT NULL,
  `relatedContentID` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`relatedContentID`),
  KEY `IX_tcontentrelated_relatedID` (`relatedID`),
  KEY `IX_tcontentrelated_contentHistID` (`contentHistID`),
  KEY `IX_tcontentrelated_relatedContentSetID` (`relatedContentSetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentrelated` WRITE;
/*!40000 ALTER TABLE `tcontentrelated` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentrelated` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentremotepointer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentremotepointer` (
  `contentid` char(35) DEFAULT '',
  `created` varchar(50) DEFAULT NULL,
  `pointerid` char(35) NOT NULL DEFAULT '',
  `remoteid` varchar(50) DEFAULT NULL,
  `remoteurl` varchar(250) DEFAULT NULL,
  `siteID` varchar(25) DEFAULT '',
  PRIMARY KEY (`pointerid`),
  KEY `IX_tcontentremotepointer_contentid` (`contentid`),
  KEY `IX_tcontentremotepointer_remoteid` (`remoteid`),
  KEY `IX_tcontentremotepointer_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentremotepointer` WRITE;
/*!40000 ALTER TABLE `tcontentremotepointer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentremotepointer` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentsourcemaps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentsourcemaps` (
  `contenthistid` char(35) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `sourceid` char(35) DEFAULT '',
  `mapid` char(35) NOT NULL DEFAULT '',
  `contentid` char(35) DEFAULT '',
  `siteid` varchar(25) DEFAULT '',
  PRIMARY KEY (`mapid`),
  KEY `IX_tcontentsourcemaps_contenthistid` (`contenthistid`),
  KEY `IX_tcontentsourcemaps_sourceid` (`sourceid`),
  KEY `IX_tcontentsourcemaps_contentid` (`contentid`),
  KEY `IX_tcontentsourcemaps_siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentsourcemaps` WRITE;
/*!40000 ALTER TABLE `tcontentsourcemaps` DISABLE KEYS */;
INSERT INTO `tcontentsourcemaps` VALUES ('7559931C-6D76-4DC8-95D9E5791E90BBF1','2019-03-21 01:14:11','6300ED69-1320-5CC3-F922E3012E2C6BAE','B357AEB0-227E-42C9-A134A69C750E5F32','00000000000000000000000000000000001','default'),('FC2B6E24-C764-4180-BE4EE032229C11C7','2019-03-21 01:32:23','7559931C-6D76-4DC8-95D9E5791E90BBF1','DB3338A0-CE10-466F-9D3F3F031BCA0827','00000000000000000000000000000000001','default');
/*!40000 ALTER TABLE `tcontentsourcemaps` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentstats` (
  `contentID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(25) NOT NULL DEFAULT '',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `rating` float NOT NULL DEFAULT '0',
  `totalVotes` int(10) unsigned NOT NULL DEFAULT '0',
  `upVotes` int(10) unsigned NOT NULL DEFAULT '0',
  `downVotes` int(10) unsigned NOT NULL DEFAULT '0',
  `comments` int(10) unsigned NOT NULL DEFAULT '0',
  `majorVersion` int(11) DEFAULT NULL,
  `minorVersion` int(11) DEFAULT NULL,
  `lockID` char(35) DEFAULT NULL,
  `lockType` varchar(50) DEFAULT NULL,
  `disableComments` int(10) DEFAULT '0',
  PRIMARY KEY (`contentID`,`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentstats` WRITE;
/*!40000 ALTER TABLE `tcontentstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentstats` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontenttags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontenttags` (
  `tagID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentID` char(35) NOT NULL,
  `contentHistID` char(35) NOT NULL,
  `siteID` varchar(25) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `taggroup` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagID`),
  KEY `Index_2` (`contentHistID`),
  KEY `Index_3` (`siteID`),
  KEY `Index_4` (`contentID`),
  KEY `Index_5` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontenttags` WRITE;
/*!40000 ALTER TABLE `tcontenttags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontenttags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tcontentvariationtargeting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tcontentvariationtargeting` (
  `contentid` char(35) DEFAULT '',
  `initjs` text,
  `targetingid` char(35) NOT NULL DEFAULT '',
  `siteid` varchar(25) DEFAULT '',
  `targetingjs` text,
  PRIMARY KEY (`targetingid`),
  KEY `IX_tcontentvariationtargeting_contentid` (`contentid`),
  KEY `IX_tcontentvariationtargeting_siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tcontentvariationtargeting` WRITE;
/*!40000 ALTER TABLE `tcontentvariationtargeting` DISABLE KEYS */;
/*!40000 ALTER TABLE `tcontentvariationtargeting` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tdirectories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tdirectories` (
  `dirID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(35) DEFAULT NULL,
  `subdir` varchar(255) DEFAULT NULL,
  `editfilename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dirID`),
  KEY `IX_tdirectories_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tdirectories` WRITE;
/*!40000 ALTER TABLE `tdirectories` DISABLE KEYS */;
/*!40000 ALTER TABLE `tdirectories` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `temailreturnstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temailreturnstats` (
  `emailID` char(35) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `url` mediumtext,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `temailreturnstats` WRITE;
/*!40000 ALTER TABLE `temailreturnstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `temailreturnstats` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `temails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temails` (
  `EmailID` char(35) NOT NULL DEFAULT '',
  `siteid` varchar(25) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `BodyText` longtext,
  `BodyHtml` longtext,
  `CreatedDate` datetime DEFAULT NULL,
  `DeliveryDate` datetime DEFAULT NULL,
  `status` tinyint(3) DEFAULT NULL,
  `GroupList` longtext,
  `LastUpdateBy` varchar(50) DEFAULT NULL,
  `LastUpdateByID` varchar(35) DEFAULT NULL,
  `NumberSent` int(10) NOT NULL DEFAULT '0',
  `ReplyTo` varchar(50) DEFAULT NULL,
  `format` varchar(50) DEFAULT NULL,
  `fromLabel` varchar(50) DEFAULT NULL,
  `isDeleted` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmailID`),
  KEY `IX_TEmails` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `temails` WRITE;
/*!40000 ALTER TABLE `temails` DISABLE KEYS */;
/*!40000 ALTER TABLE `temails` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `temailstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temailstats` (
  `EmailID` char(35) DEFAULT NULL,
  `Email` char(100) DEFAULT NULL,
  `emailOpen` int(10) NOT NULL DEFAULT '0',
  `returnClick` int(10) NOT NULL DEFAULT '0',
  `bounce` int(10) NOT NULL DEFAULT '0',
  `sent` int(10) NOT NULL DEFAULT '0',
  `Created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `temailstats` WRITE;
/*!40000 ALTER TABLE `temailstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `temailstats` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tentity` (
  `created` datetime DEFAULT NULL,
  `bundleable` int(10) DEFAULT '0',
  `entityid` char(35) NOT NULL DEFAULT '',
  `lastupdate` datetime DEFAULT NULL,
  `path` text,
  `displayName` varchar(250) DEFAULT NULL,
  `code` longtext,
  `name` varchar(250) DEFAULT NULL,
  `scaffold` int(10) DEFAULT '0',
  `dynamic` int(10) DEFAULT '0',
  PRIMARY KEY (`entityid`),
  KEY `IX_tentity_created` (`created`),
  KEY `IX_tentity_lastupdate` (`lastupdate`),
  KEY `IX_tentity_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tentity` WRITE;
/*!40000 ALTER TABLE `tentity` DISABLE KEYS */;
INSERT INTO `tentity` VALUES ('2019-03-21 01:14:15',0,'0EE3FA1B-EDA9-422D-96C099838138F9EF','2019-03-21 01:14:15','/var/www/core/mura/content/contentFileMetaDataBean.cfc','fileMetaData',NULL,'fileMetaData',0,0),('2019-03-21 01:14:15',0,'1A509832-C308-4FF4-8F42A7D6AF99B019','2019-03-21 01:14:15','/var/www/core/mura/category/categoryBean.cfc','category',NULL,'category',0,0),('2019-03-21 01:14:15',0,'427DEF88-64D4-4DEB-AA126D0E1C24ECF8','2019-03-21 01:14:15','/var/www/core/mura/content/file/fileBean.cfc','file',NULL,'file',0,0),('2019-03-21 01:14:15',0,'510E4B8C-C23F-4DDE-B9E281FEFEB211FD','2019-03-21 01:14:15','/var/www/core/mura/content/contentCategoryAssignBean.cfc','contentCategoryAssign',NULL,'contentCategoryAssign',0,0),('2019-03-21 01:14:15',0,'6DCFBF9E-8061-4634-83A09B688BA466B5','2019-03-21 01:14:15','/var/www/core/mura/content/changeset/changesetCategoryAssignmentBean.cfc','changesetCategoryAssignment',NULL,'changesetCategoryAssignment',0,0),('2019-03-21 01:14:15',0,'AF335BE8-C641-45ED-B5708FFE6ECA986B','2019-03-21 01:14:15','/var/www/core/mura/user/userBean.cfc','user',NULL,'user',0,0),('2019-03-21 01:14:15',0,'B4CF272A-8695-464B-ABAA5F74362E7C38','2019-03-21 01:14:15','/var/www/core/mura/content/contentStatsBean.cfc','stats',NULL,'stats',0,0),('2019-03-21 01:14:15',0,'C7ECED1A-BAA0-4BB4-A8EC6004CD70D82B','2019-03-21 01:14:15','/var/www/core/mura/user/addressBean.cfc','address',NULL,'address',0,0),('2019-03-21 01:14:15',0,'D2245FBF-DEAF-4329-98F44C8BC33C4A63','2019-03-21 01:14:15','/var/www/core/mura/user/userBean.cfc','group',NULL,'group',0,0),('2019-03-21 01:14:15',0,'DC8056DF-29B0-4F31-83556B24CC042FDD','2019-03-21 01:14:15','/var/www/core/mura/settings/settingsBean.cfc','site',NULL,'site',0,0),('2019-03-21 01:14:15',0,'E6EDC78E-966F-4C0E-A0F922F1A3051631','2019-03-21 01:14:15','/var/www/core/mura/content/contentBean.cfc','content',NULL,'content',0,0),('2019-03-21 01:14:15',0,'EDAE17A1-8091-40C1-BD667171DDBD8AF1','2019-03-21 01:14:15','/var/www/core/mura/content/contentCommentBean.cfc','comment',NULL,'comment',0,0),('2019-03-21 01:14:15',0,'F8363055-E41B-40B0-8168C895A9CA64DE','2019-03-21 01:14:15','/var/www/core/mura/content/changeset/changesetBean.cfc','changeset',NULL,'changeset',0,0);
/*!40000 ALTER TABLE `tentity` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tfiles` (
  `fileID` char(35) NOT NULL DEFAULT '',
  `contentID` char(35) DEFAULT NULL,
  `siteID` varchar(25) DEFAULT NULL,
  `moduleID` char(35) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `image` longblob,
  `imageSmall` longblob,
  `imageMedium` longblob,
  `fileSize` int(10) DEFAULT NULL,
  `contentType` varchar(100) DEFAULT NULL,
  `contentSubType` varchar(200) DEFAULT NULL,
  `fileExt` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `deleted` tinyint(3) DEFAULT NULL,
  `caption` text,
  `credits` varchar(255) DEFAULT NULL,
  `alttext` varchar(255) DEFAULT NULL,
  `remoteID` varchar(255) DEFAULT NULL,
  `remoteURL` varchar(255) DEFAULT NULL,
  `remotePubDate` datetime DEFAULT NULL,
  `remoteSource` varchar(255) DEFAULT NULL,
  `remoteSourceURL` varchar(255) DEFAULT NULL,
  `exif` text,
  PRIMARY KEY (`fileID`),
  KEY `IX_tfiles_siteid` (`siteID`),
  KEY `IX_tfiles_contentid` (`contentID`),
  KEY `IX_tfiles_remoteid` (`remoteID`),
  KEY `IX_tfiles_moduleid` (`moduleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tfiles` WRITE;
/*!40000 ALTER TABLE `tfiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `tfiles` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tformresponsepackets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tformresponsepackets` (
  `ResponseID` char(35) NOT NULL DEFAULT '',
  `FormID` char(35) DEFAULT NULL,
  `SiteID` varchar(25) DEFAULT NULL,
  `FieldList` longtext,
  `Data` longtext,
  `Entered` datetime DEFAULT NULL,
  PRIMARY KEY (`ResponseID`),
  KEY `IX_TFormResponsePackets` (`FormID`,`SiteID`),
  KEY `IX_tformresponsepackets_FormID_SiteID` (`FormID`,`SiteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tformresponsepackets` WRITE;
/*!40000 ALTER TABLE `tformresponsepackets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tformresponsepackets` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tformresponsequestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tformresponsequestions` (
  `responseID` char(35) NOT NULL,
  `formID` char(35) NOT NULL,
  `formField` varchar(255) NOT NULL,
  `formValue` longtext,
  `pollValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`responseID`,`formID`,`formField`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tformresponsequestions` WRITE;
/*!40000 ALTER TABLE `tformresponsequestions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tformresponsequestions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `timagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timagesizes` (
  `sizeID` char(35) NOT NULL DEFAULT '',
  `siteID` varchar(35) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `height` varchar(10) DEFAULT NULL,
  `width` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`sizeID`),
  KEY `IX_timagesizes_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `timagesizes` WRITE;
/*!40000 ALTER TABLE `timagesizes` DISABLE KEYS */;
INSERT INTO `timagesizes` VALUES ('E8809D0C-C4BD-4BE5-810EA679461FF6F0','default','carouselimage','628','1506');
/*!40000 ALTER TABLE `timagesizes` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tmailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmailinglist` (
  `MLID` char(35) DEFAULT NULL,
  `SiteID` varchar(25) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Description` longtext,
  `LastUpdate` datetime DEFAULT NULL,
  `isPurge` int(10) DEFAULT NULL,
  `isPublic` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tmailinglist` WRITE;
/*!40000 ALTER TABLE `tmailinglist` DISABLE KEYS */;
INSERT INTO `tmailinglist` VALUES ('21EF7EF9-F007-433B-8DAB0D9B856C8144','default','Please Remove Me from All Lists','','2019-03-21 01:12:45',1,1);
/*!40000 ALTER TABLE `tmailinglist` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tmailinglistmembers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmailinglistmembers` (
  `MLID` char(35) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `SiteID` varchar(25) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `isVerified` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tmailinglistmembers` WRITE;
/*!40000 ALTER TABLE `tmailinglistmembers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tmailinglistmembers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `toauthclients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toauthclients` (
  `clientsecret` varchar(100) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `lastupdate` datetime DEFAULT NULL,
  `clientid` char(35) NOT NULL DEFAULT '',
  `redirecturl` text,
  `name` varchar(50) NOT NULL,
  `granttype` varchar(50) DEFAULT 'basic',
  `lastupdateby` varchar(50) DEFAULT NULL,
  `siteid` varchar(25) NOT NULL DEFAULT '',
  `userid` char(35) DEFAULT '',
  `lastupdatebidy` varchar(35) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`clientid`),
  KEY `IX_toauthclients_siteid` (`siteid`),
  KEY `IX_toauthclients_userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `toauthclients` WRITE;
/*!40000 ALTER TABLE `toauthclients` DISABLE KEYS */;
/*!40000 ALTER TABLE `toauthclients` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `toauthtokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `toauthtokens` (
  `data` text,
  `token` char(35) NOT NULL DEFAULT '',
  `expires` datetime NOT NULL,
  `clientid` char(35) NOT NULL DEFAULT '',
  `granttype` varchar(50) DEFAULT 'client_credentials',
  `userid` char(35) DEFAULT '',
  `accessCode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`token`),
  KEY `IX_toauthtokens_clientid` (`clientid`),
  KEY `IX_toauthtokens_userid` (`userid`),
  KEY `IX_toauthtokens_accessCode` (`accessCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `toauthtokens` WRITE;
/*!40000 ALTER TABLE `toauthtokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `toauthtokens` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tpermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpermissions` (
  `ContentID` char(35) NOT NULL,
  `GroupID` char(35) NOT NULL,
  `SiteID` varchar(25) NOT NULL,
  `Type` varchar(50) NOT NULL,
  PRIMARY KEY (`ContentID`,`GroupID`,`SiteID`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tpermissions` WRITE;
/*!40000 ALTER TABLE `tpermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpermissions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tplugindisplayobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tplugindisplayobjects` (
  `objectID` char(35) NOT NULL DEFAULT '',
  `moduleID` char(35) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `displayObjectFile` varchar(200) DEFAULT NULL,
  `displaymethod` varchar(100) DEFAULT NULL,
  `docache` varchar(5) DEFAULT NULL,
  `configuratorInit` varchar(50) DEFAULT NULL,
  `configuratorJS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objectID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tplugindisplayobjects` WRITE;
/*!40000 ALTER TABLE `tplugindisplayobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tplugindisplayobjects` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tplugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tplugins` (
  `pluginID` int(11) NOT NULL AUTO_INCREMENT,
  `moduleID` char(35) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `provider` varchar(100) DEFAULT NULL,
  `providerURL` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `deployed` tinyint(3) DEFAULT NULL,
  `package` varchar(100) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `loadPriority` int(10) DEFAULT NULL,
  PRIMARY KEY (`pluginID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tplugins` WRITE;
/*!40000 ALTER TABLE `tplugins` DISABLE KEYS */;
/*!40000 ALTER TABLE `tplugins` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tpluginscripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpluginscripts` (
  `scriptID` char(35) NOT NULL DEFAULT '',
  `moduleID` char(35) DEFAULT NULL,
  `runat` varchar(50) DEFAULT NULL,
  `scriptfile` varchar(200) DEFAULT NULL,
  `docache` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`scriptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tpluginscripts` WRITE;
/*!40000 ALTER TABLE `tpluginscripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpluginscripts` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tpluginsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tpluginsettings` (
  `moduleID` char(35) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `settingValue` longtext,
  PRIMARY KEY (`moduleID`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tpluginsettings` WRITE;
/*!40000 ALTER TABLE `tpluginsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `tpluginsettings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `trazunasettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trazunasettings` (
  `servertype` varchar(50) NOT NULL DEFAULT 'local',
  `hostID` varchar(50) NOT NULL,
  `damPath` varchar(250) DEFAULT NULL,
  `hostName` varchar(50) NOT NULL,
  `settingsID` char(35) NOT NULL DEFAULT '',
  `apiKey` varchar(50) NOT NULL,
  `siteID` varchar(25) DEFAULT '',
  PRIMARY KEY (`settingsID`),
  KEY `IX_trazunasettings_siteID` (`siteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `trazunasettings` WRITE;
/*!40000 ALTER TABLE `trazunasettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `trazunasettings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tredirects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tredirects` (
  `redirectID` char(35) NOT NULL DEFAULT '',
  `URL` mediumtext,
  `created` datetime DEFAULT NULL,
  `userid` char(35) DEFAULT NULL,
  `siteid` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`redirectID`),
  KEY `IX_tredirects_userid` (`userid`),
  KEY `IX_tredirects_siteid` (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tredirects` WRITE;
/*!40000 ALTER TABLE `tredirects` DISABLE KEYS */;
/*!40000 ALTER TABLE `tredirects` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tsessiontracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsessiontracking` (
  `trackingID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentID` char(35) DEFAULT NULL,
  `siteID` varchar(25) DEFAULT NULL,
  `userid` char(35) DEFAULT NULL,
  `remote_addr` varchar(50) DEFAULT NULL,
  `server_name` varchar(50) DEFAULT NULL,
  `query_string` mediumtext,
  `referer` varchar(255) DEFAULT NULL,
  `user_agent` varchar(200) DEFAULT NULL,
  `script_name` varchar(200) DEFAULT NULL,
  `urlToken` varchar(130) NOT NULL DEFAULT '',
  `entered` datetime NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `lang` varchar(50) DEFAULT NULL,
  `locale` varchar(50) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `originalUrlToken` varchar(130) DEFAULT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`trackingID`),
  KEY `IDX_ENTERED` (`entered`),
  KEY `IX_TSessionTracking` (`siteID`),
  KEY `IX_TSessionTracking_1` (`contentID`),
  KEY `IX_TSessionTracking_2` (`urlToken`),
  KEY `IX_TSessionTracking_3` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tsessiontracking` WRITE;
/*!40000 ALTER TABLE `tsessiontracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `tsessiontracking` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsettings` (
  `siteid` varchar(25) NOT NULL DEFAULT '',
  `Site` varchar(50) DEFAULT NULL,
  `MaxNestLevel` int(10) DEFAULT NULL,
  `PageLimit` int(10) DEFAULT NULL,
  `Locking` varchar(50) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `exportLocation` varchar(100) DEFAULT NULL,
  `FileDir` varchar(50) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `MailserverIP` varchar(50) DEFAULT NULL,
  `MailServerUsername` varchar(50) DEFAULT NULL,
  `MailServerPassword` varchar(50) DEFAULT NULL,
  `EmailBroadcaster` int(10) DEFAULT NULL,
  `Extranet` int(10) DEFAULT NULL,
  `ExtranetPublicReg` int(10) DEFAULT NULL,
  `ExtranetPublicRegNotify` varchar(255) DEFAULT NULL,
  `ExtranetSSL` int(10) DEFAULT NULL,
  `Cache` int(10) DEFAULT NULL,
  `ViewDepth` int(10) DEFAULT NULL,
  `NextN` int(10) DEFAULT NULL,
  `DataCollection` int(10) DEFAULT NULL,
  `columnCount` int(10) DEFAULT NULL,
  `columnNames` text,
  `primaryColumn` int(10) DEFAULT NULL,
  `publicSubmission` int(10) DEFAULT NULL,
  `AdManager` int(10) DEFAULT NULL,
  `archiveDate` datetime DEFAULT NULL,
  `contactName` varchar(50) DEFAULT NULL,
  `contactAddress` varchar(50) DEFAULT NULL,
  `contactCity` varchar(50) DEFAULT NULL,
  `contactState` varchar(50) DEFAULT NULL,
  `contactZip` varchar(50) DEFAULT NULL,
  `contactEmail` varchar(100) DEFAULT NULL,
  `contactPhone` varchar(50) DEFAULT NULL,
  `privateUserPoolID` varchar(50) DEFAULT NULL,
  `publicUserPoolID` varchar(50) DEFAULT NULL,
  `advertiserUserPoolID` varchar(50) DEFAULT NULL,
  `orderNo` int(10) DEFAULT NULL,
  `emailBroadcasterLimit` int(10) NOT NULL DEFAULT '0',
  `feedManager` int(10) DEFAULT NULL,
  `displayPoolID` varchar(50) DEFAULT NULL,
  `galleryMainScaleBy` varchar(50) DEFAULT NULL,
  `galleryMainScale` int(10) DEFAULT NULL,
  `gallerySmallScaleBy` varchar(50) DEFAULT NULL,
  `gallerySmallScale` int(10) DEFAULT NULL,
  `galleryMediumScaleBy` varchar(50) DEFAULT NULL,
  `galleryMediumScale` int(10) DEFAULT NULL,
  `sendLoginScript` longtext,
  `mailingListConfirmScript` longtext,
  `publicSubmissionApprovalScript` longtext,
  `reminderScript` longtext,
  `loginURL` varchar(255) DEFAULT NULL,
  `editProfileURL` varchar(255) DEFAULT NULL,
  `CommentApprovalDefault` tinyint(3) DEFAULT NULL,
  `deploy` tinyint(3) DEFAULT NULL,
  `lastDeployment` datetime DEFAULT NULL,
  `accountActivationScript` longtext,
  `googleAPIKey` varchar(100) DEFAULT NULL,
  `useDefaultSMTPServer` tinyint(3) DEFAULT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `mailserverSMTPPort` varchar(5) DEFAULT NULL,
  `mailserverPOPPort` varchar(5) DEFAULT NULL,
  `mailserverTLS` varchar(5) DEFAULT NULL,
  `mailserverSSL` varchar(5) DEFAULT NULL,
  `siteLocale` varchar(50) DEFAULT NULL,
  `domainAlias` longtext,
  `cacheCapacity` int(10) DEFAULT NULL,
  `cacheFreeMemoryThreshold` int(10) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `hasChangesets` tinyint(3) DEFAULT NULL,
  `baseID` char(35) DEFAULT NULL,
  `enforcePrimaryDomain` tinyint(4) DEFAULT '0',
  `enforceChangesets` tinyint(4) DEFAULT '0',
  `smallImageHeight` varchar(20) DEFAULT NULL,
  `smallImageWidth` varchar(20) DEFAULT NULL,
  `mediumImageHeight` varchar(20) DEFAULT NULL,
  `mediumImageWidth` varchar(20) DEFAULT NULL,
  `largeImageHeight` varchar(20) DEFAULT NULL,
  `largeImageWidth` varchar(20) DEFAULT NULL,
  `contentApprovalScript` longtext,
  `contentRejectionScript` longtext,
  `hasComments` int(10) DEFAULT '0',
  `hasLockableNodes` int(10) DEFAULT '0',
  `enableLockdown` varchar(255) DEFAULT NULL,
  `customTagGroups` varchar(255) DEFAULT NULL,
  `filePoolID` varchar(25) DEFAULT NULL,
  `categoryPoolID` varchar(25) DEFAULT NULL,
  `contentPoolID` text,
  `sendAuthCodeScript` longtext,
  `reCAPTCHASiteKey` varchar(50) DEFAULT NULL,
  `reCAPTCHASecret` varchar(50) DEFAULT NULL,
  `reCAPTCHALanguage` varchar(25) DEFAULT NULL,
  `JSONApi` int(10) DEFAULT '0',
  `useSSL` int(10) DEFAULT '0',
  `isremote` int(10) DEFAULT '0',
  `resourceSSL` int(10) DEFAULT '0',
  `resourceDomain` varchar(100) DEFAULT NULL,
  `remoteport` int(10) DEFAULT '80',
  `remotecontext` varchar(100) DEFAULT NULL,
  `contentPendingScript` longtext,
  `contentCanceledScript` longtext,
  `showDashboard` int(10) DEFAULT '0',
  `placeholderImgID` varchar(35) DEFAULT NULL,
  `placeholderImgExt` varchar(10) DEFAULT NULL,
  `scaffolding` int(10) DEFAULT NULL,
  PRIMARY KEY (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tsettings` WRITE;
/*!40000 ALTER TABLE `tsettings` DISABLE KEYS */;
INSERT INTO `tsettings` VALUES ('default','Default',NULL,1000,'none','localhost',NULL,NULL,'email@domain.com','','','',0,0,0,NULL,0,0,1,20,1,3,'Left Column^Main Content^Right Column',2,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','default','default',1,0,1,'default','y',600,'s',80,'s',180,NULL,NULL,NULL,NULL,'?display=login','?display=editProfile',1,0,NULL,NULL,NULL,1,'default','','','','',NULL,NULL,0,0,NULL,1,'F9C934E8-EF0B-4487-9DC5D6AA68894EEE',0,0,'80','80','180','180','600','AUTO',NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL,80,NULL,NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tsettings` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tsystemobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tsystemobjects` (
  `Object` varchar(50) DEFAULT NULL,
  `SiteID` varchar(25) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `OrderNo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tsystemobjects` WRITE;
/*!40000 ALTER TABLE `tsystemobjects` DISABLE KEYS */;
INSERT INTO `tsystemobjects` VALUES ('event_reminder_form','default','Event Reminder Form',12),('forward_email','default','Forward Email',13),('site_map','default','Site Map',2),('peer_nav','default','Peer Navigation',3),('sub_nav','default','Sub Navigation',4),('standard_nav','default','Standard Navigation',5),('folder_nav','default','Folder Navigation',6),('comments','default','Comment Form',9),('seq_nav','default','Sequential Nav',8),('rater','default','Content Rater',16),('favorites','default','User Favorites',17),('related_content','default','Related Content',19),('user_tools','default','User Tools',20),('tag_cloud','default','Tag Cloud',21),('goToFirstChild','default','Go To First Child',23),('multilevel_nav','default','Multi-Level Navigation',7);
/*!40000 ALTER TABLE `tsystemobjects` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `ttrash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ttrash` (
  `objectID` char(35) NOT NULL,
  `parentID` char(35) NOT NULL,
  `siteID` varchar(25) NOT NULL,
  `objectClass` varchar(50) NOT NULL,
  `objectType` varchar(50) NOT NULL,
  `objectSubType` varchar(50) NOT NULL,
  `objectLabel` varchar(255) NOT NULL,
  `objectstring` longtext,
  `deletedDate` datetime DEFAULT NULL,
  `deletedBy` varchar(50) NOT NULL,
  `deleteid` char(35) DEFAULT NULL,
  `orderno` int(10) DEFAULT NULL,
  PRIMARY KEY (`objectID`),
  KEY `IX_ttrash_deleteddate` (`deletedDate`),
  KEY `IX_ttrash_siteid` (`siteID`),
  KEY `IX_ttrash_objecttype` (`objectClass`),
  KEY `IX_ttrash_parentid` (`parentID`),
  KEY `IX_ttrash_deleteid` (`deleteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `ttrash` WRITE;
/*!40000 ALTER TABLE `ttrash` DISABLE KEYS */;
/*!40000 ALTER TABLE `ttrash` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tuseraddresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuseraddresses` (
  `addressID` char(35) NOT NULL DEFAULT '',
  `userID` char(35) DEFAULT NULL,
  `siteID` varchar(25) DEFAULT NULL,
  `addressName` varchar(50) DEFAULT NULL,
  `address1` varchar(50) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `isPrimary` tinyint(3) DEFAULT NULL,
  `addressNotes` longtext,
  `addressURL` varchar(200) DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `addressEmail` varchar(100) DEFAULT NULL,
  `hours` longtext,
  PRIMARY KEY (`addressID`),
  KEY `Index_2` (`longitude`),
  KEY `Index_3` (`latitude`),
  KEY `Index_4` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tuseraddresses` WRITE;
/*!40000 ALTER TABLE `tuseraddresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuseraddresses` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tuserdevice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuserdevice` (
  `created` datetime DEFAULT NULL,
  `deviceid` char(35) NOT NULL DEFAULT '',
  `lastLogin` datetime DEFAULT NULL,
  `siteID` varchar(25) DEFAULT '',
  `userID` char(35) DEFAULT '',
  PRIMARY KEY (`deviceid`),
  KEY `IX_tuserdevice_siteID` (`siteID`),
  KEY `IX_tuserdevice_userID` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tuserdevice` WRITE;
/*!40000 ALTER TABLE `tuserdevice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuserdevice` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tuserremotesessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuserremotesessions` (
  `userID` char(35) NOT NULL,
  `authToken` char(32) DEFAULT NULL,
  `data` text,
  `created` datetime DEFAULT NULL,
  `lastAccessed` datetime NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `tuserremotesessions_authtoken` (`authToken`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tuserremotesessions` WRITE;
/*!40000 ALTER TABLE `tuserremotesessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuserremotesessions` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tusers` (
  `UserID` char(35) NOT NULL DEFAULT '',
  `GroupName` varchar(255) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `UserName` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `PasswordCreated` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Company` varchar(50) DEFAULT NULL,
  `JobTitle` varchar(50) DEFAULT NULL,
  `mobilePhone` varchar(50) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `Type` int(10) DEFAULT NULL,
  `subType` varchar(50) DEFAULT NULL,
  `Ext` int(10) DEFAULT NULL,
  `ContactForm` longtext,
  `Admin` int(10) DEFAULT NULL,
  `S2` int(10) DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `LastUpdate` datetime DEFAULT NULL,
  `LastUpdateBy` varchar(50) DEFAULT NULL,
  `LastUpdateByID` varchar(35) DEFAULT NULL,
  `Perm` tinyint(3) DEFAULT NULL,
  `InActive` tinyint(3) DEFAULT NULL,
  `isPublic` int(10) DEFAULT NULL,
  `SiteID` varchar(50) DEFAULT NULL,
  `Subscribe` int(10) DEFAULT NULL,
  `notes` longtext,
  `description` longtext,
  `interests` longtext,
  `keepPrivate` tinyint(3) DEFAULT NULL,
  `photoFileID` varchar(35) DEFAULT NULL,
  `IMName` varchar(100) DEFAULT NULL,
  `IMService` varchar(50) DEFAULT NULL,
  `created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `remoteID` varchar(35) DEFAULT NULL,
  `tags` longtext,
  `tablist` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  KEY `IX_tusers_groupname` (`GroupName`),
  KEY `IX_tusers_type` (`Type`),
  KEY `IX_tusers_subtype` (`subType`),
  KEY `IX_tusers_remoteid` (`remoteID`),
  KEY `IX_tusers_siteid` (`SiteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tusers` WRITE;
/*!40000 ALTER TABLE `tusers` DISABLE KEYS */;
INSERT INTO `tusers` VALUES ('6263A801-07A0-4CB5-8D74708CBFB9BE89',NULL,'Admin','User','admin','$2a$10$JHpNgrWyjKl57LRjDxWREuVlJCiQWkVB.QPf82ULWeMUhvxCvzn.S','2019-03-21 01:13:39','email@domain.com',NULL,NULL,NULL,NULL,2,'Default',NULL,NULL,NULL,1,'2019-03-21 01:31:55','2019-03-21 01:12:45','System','22FC551F-FABE-EA01-C6EDD0885DDC1682',0,0,0,'default',0,NULL,NULL,NULL,0,NULL,NULL,NULL,'2019-03-21 01:12:45',NULL,NULL,NULL),('866BA78E-9324-4C03-B2308889690C2FCA','Admin',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Default',NULL,NULL,NULL,0,NULL,'2019-03-21 01:12:45','System',NULL,1,0,0,'default',0,NULL,NULL,NULL,0,NULL,NULL,NULL,'2019-03-21 01:12:45',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tusers` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tusersfavorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tusersfavorites` (
  `favoriteID` char(35) NOT NULL DEFAULT '',
  `userID` char(35) NOT NULL DEFAULT '',
  `favoriteName` varchar(255) DEFAULT NULL,
  `favorite` mediumtext,
  `type` varchar(30) NOT NULL DEFAULT '',
  `siteID` varchar(35) DEFAULT NULL,
  `dateCreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `columnNumber` int(10) DEFAULT NULL,
  `rowNumber` int(10) DEFAULT NULL,
  `maxRSSItems` int(10) DEFAULT NULL,
  PRIMARY KEY (`favoriteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tusersfavorites` WRITE;
/*!40000 ALTER TABLE `tusersfavorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `tusersfavorites` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tusersinterests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tusersinterests` (
  `userID` char(35) NOT NULL DEFAULT '',
  `categoryID` char(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`userID`,`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tusersinterests` WRITE;
/*!40000 ALTER TABLE `tusersinterests` DISABLE KEYS */;
/*!40000 ALTER TABLE `tusersinterests` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tusersmemb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tusersmemb` (
  `UserID` char(35) NOT NULL DEFAULT '',
  `GroupID` char(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`UserID`,`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tusersmemb` WRITE;
/*!40000 ALTER TABLE `tusersmemb` DISABLE KEYS */;
/*!40000 ALTER TABLE `tusersmemb` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tuserstags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuserstags` (
  `tagID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` char(35) NOT NULL,
  `siteID` varchar(25) NOT NULL,
  `tag` varchar(100) NOT NULL,
  PRIMARY KEY (`tagID`),
  KEY `Index_2` (`userID`),
  KEY `Index_3` (`siteID`),
  KEY `Index_4` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tuserstags` WRITE;
/*!40000 ALTER TABLE `tuserstags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tuserstags` ENABLE KEYS */;
UNLOCK TABLES;
DROP TABLE IF EXISTS `tuserstrikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuserstrikes` (
  `username` varchar(100) NOT NULL,
  `strikes` int(10) DEFAULT NULL,
  `lastAttempt` datetime NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tuserstrikes` WRITE;
/*!40000 ALTER TABLE `tuserstrikes` DISABLE KEYS */;
INSERT INTO `tuserstrikes` VALUES ('admin',0,'2019-03-21 01:30:55');
/*!40000 ALTER TABLE `tuserstrikes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

