-- INITIAL DATABASE

CREATE SCHEMA `ResDb`;

CREATE TABLE `ResDb`.`Store`
(
 `Id`          integer NOT NULL AUTO_INCREMENT ,
 `Valid`       boolean NOT NULL ,
 `StoreName`   varchar(1024) NOT NULL ,
 `Open`        time NOT NULL ,
 `Close`       time NOT NULL ,
 `Rating`      float NOT NULL ,
 `RatingTime`  integer NOT NULL ,

PRIMARY KEY (`Id`),
UNIQUE KEY  (`Id`)
) AUTO_INCREMENT=1;

CREATE TABLE `ResDb`.`StoreDetail`
(
 `StoreId`     integer NOT NULL ,
 `ContactInfo` varchar(1024) NULL ,
 `Address`     varchar(1024) NULL ,
 `Description` varchar(1024) NULL ,

PRIMARY KEY (`StoreId`),
KEY `FK_142` (`StoreId`),
CONSTRAINT `FK_140` FOREIGN KEY `FK_142` (`StoreId`) REFERENCES `ResDb`.`Store` (`Id`)
);

CREATE TABLE `ResDb`.`Category`
(
 `Id`           integer NOT NULL AUTO_INCREMENT ,
 `CategoryName` varchar(128) NOT NULL ,

PRIMARY KEY (`Id`),
UNIQUE KEY  (`Id`),
UNIQUE KEY  (`CategoryName`)
) AUTO_INCREMENT=1;

CREATE TABLE `ResDb`.`Store_Category`
(
 `Store_Id`    integer NOT NULL ,
 `Category_Id` integer NOT NULL ,

PRIMARY KEY (`Store_Id`, `Category_Id`),
KEY `FK_215` (`Category_Id`),
CONSTRAINT `FK_213` FOREIGN KEY `FK_215` (`Category_Id`) REFERENCES `ResDb`.`Category` (`Id`),
KEY `FK_218` (`Store_Id`),
CONSTRAINT `FK_216` FOREIGN KEY `FK_218` (`Store_Id`) REFERENCES `ResDb`.`Store` (`Id`)
);
