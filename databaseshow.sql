/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databaseforeignkeys` (
  `fkid` int(11) NOT NULL AUTO_INCREMENT,
  `column` varchar(254) DEFAULT NULL,
  `fkname` varchar(254) DEFAULT NULL,
  `ondelete` varchar(254) DEFAULT NULL,
  `onupdate` varchar(254) DEFAULT NULL,
  `refcolumn` varchar(254) DEFAULT NULL,
  `reftable` varchar(254) DEFAULT NULL,
  `tablename` varchar(254) DEFAULT NULL,
  `databaseid` int(11) DEFAULT NULL,
  `fkey` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`fkid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `databaseforeignkeys` VALUES (4,'ReportsTo','FK_employees_reports_to','RESTRICT','RESTRICT','EmployeeID','employees','employees',3,'northwind.employees.FK_employees_reports_to'),(5,'CategoryID','FK_products_categoryid','RESTRICT','RESTRICT','CategoryID','categories','products',3,'northwind.products.FK_products_categoryid'),(6,'SupplierID','FK_products_supplierid','RESTRICT','RESTRICT','SupplierID','suppliers','products',3,'northwind.products.FK_products_supplierid');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databaseindexes` (
  `idxid` int(11) NOT NULL AUTO_INCREMENT,
  `idxname` varchar(254) DEFAULT NULL,
  `idxprimary` varchar(254) DEFAULT NULL,
  `idxunique` varchar(254) DEFAULT NULL,
  `tablename` varchar(254) DEFAULT NULL,
  `databaseid` int(11) DEFAULT NULL,
  `idxcolumns` text,
  `idxkey` varchar(254) DEFAULT NULL,
  PRIMARY KEY (`idxid`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `databaseindexes` VALUES (39,'idx_customers_city','No','No','customers',3,'City','northwind.customers.idx_customers_city'),(40,'idx_customers_company_name','No','No','customers',3,'CompanyName','northwind.customers.idx_customers_company_name'),(41,'idx_customers_postalcode','No','No','customers',3,'PostalCode','northwind.customers.idx_customers_postalcode'),(42,'idx_customers_region','No','No','customers',3,'Region','northwind.customers.idx_customers_region'),(43,'PRIMARY','Yes','No','customers',3,'CustomerID','northwind.customers.PRIMARY'),(44,'idx_employees_lastname','No','No','employees',3,'LastName','northwind.employees.idx_employees_lastname'),(45,'idx_employees_postalcode','No','No','employees',3,'PostalCode','northwind.employees.idx_employees_postalcode'),(46,'idx_ReportsTo','No','No','employees',3,'ReportsTo','northwind.employees.idx_ReportsTo'),(47,'PRIMARY','Yes','No','employees',3,'EmployeeID','northwind.employees.PRIMARY'),(48,'idx_FK_products_categoryid','No','No','products',3,'CategoryID','northwind.products.idx_FK_products_categoryid'),(49,'idx_FK_products_supplierid','No','No','products',3,'SupplierID','northwind.products.idx_FK_products_supplierid'),(50,'idx_products_product_name','No','No','products',3,'ProductName','northwind.products.idx_products_product_name'),(51,'PRIMARY','Yes','No','products',3,'ProductID','northwind.products.PRIMARY'),(52,'idx_suppliers_postalcode','No','No','suppliers',3,'PostalCode','northwind.suppliers.idx_suppliers_postalcode'),(53,'idx_suppliers_product_name','No','No','suppliers',3,'CompanyName','northwind.suppliers.idx_suppliers_product_name'),(54,'PRIMARY','Yes','No','suppliers',3,'SupplierID','northwind.suppliers.PRIMARY'),(55,'PRIMARY','Yes','No','categories',3,'CategoryID','northwind.categories.PRIMARY'),(56,'Uidx_categories_category_name','No','Yes','categories',3,'CategoryName','northwind.categories.Uidx_categories_category_name');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasetables` (
  `tableid` int(11) NOT NULL AUTO_INCREMENT,
  `tablekey` varchar(255) DEFAULT NULL,
  `databaseid` int(11) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `singular` varchar(255) DEFAULT NULL,
  `plural` varchar(255) DEFAULT NULL,
  `displayfield` varchar(255) DEFAULT NULL,
  `focuson` varchar(255) DEFAULT NULL,
  `dialogwidth` varchar(255) DEFAULT NULL,
  `fullscreen` varchar(255) DEFAULT NULL,
  `fullscreenonmobile` varchar(255) DEFAULT NULL,
  `primarykey` varchar(255) DEFAULT NULL,
  `autoincrement` varchar(255) DEFAULT NULL,
  `dense` varchar(255) DEFAULT NULL,
  `hidedetails` varchar(255) DEFAULT NULL,
  `outlined` varchar(255) DEFAULT NULL,
  `rounded` varchar(255) DEFAULT NULL,
  `clearable` varchar(255) DEFAULT NULL,
  `filled` varchar(255) DEFAULT NULL,
  `shaped` varchar(255) DEFAULT NULL,
  `lazyvalidation` varchar(255) DEFAULT NULL,
  `totalfields` int(11) DEFAULT NULL,
  PRIMARY KEY (`tableid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `databasetables` VALUES (11,'northwind.categories',3,'categories','categories','categories','CategoryID','CategoryID','700','No','Yes','CategoryID','CategoryID','No','No','No','No','No','No','No',NULL,4),(12,'northwind.customers',3,'customers','customers','customers','CustomerID','CustomerID','700','No','Yes','CustomerID','','No','No','No','No','No','No','No',NULL,11),(13,'northwind.employees',3,'employees','employees','employees','EmployeeID','EmployeeID','700','No','Yes','EmployeeID','EmployeeID','No','No','No','No','No','No','No',NULL,17),(14,'northwind.products',3,'products','products','products','ProductID','ProductID','700','No','Yes','ProductID','ProductID','No','No','No','No','No','No','No',NULL,10),(15,'northwind.suppliers',3,'suppliers','suppliers','suppliers','SupplierID','SupplierID','700','No','Yes','SupplierID','SupplierID','No','No','No','No','No','No','No',NULL,12);
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `databasetypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `databasetypes` VALUES (1,'MySQL','BANanoMySQLE'),(2,'SQLite','BANanoSQLiteE'),(3,'BANanoSQL','BANanoALASQLE'),(4,'MSSQL','BANanoMSSQLE');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldnames` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `vmodel` varchar(255) DEFAULT NULL,
  `defaultvalue` varchar(255) DEFAULT NULL,
  `maxlen` int(11) DEFAULT NULL,
  `datatype` varchar(255) DEFAULT NULL,
  `componenttype` varchar(255) DEFAULT NULL,
  `columntype` varchar(255) DEFAULT NULL,
  `itemtype` varchar(255) DEFAULT NULL,
  `rowpos` int(11) DEFAULT NULL,
  `columnpos` int(11) DEFAULT NULL,
  `width` varchar(255) DEFAULT NULL,
  `height` varchar(255) DEFAULT NULL,
  `alt` varchar(255) DEFAULT NULL,
  `lazysrc` varchar(255) DEFAULT NULL,
  `yesvalue` varchar(255) DEFAULT NULL,
  `novalue` varchar(255) DEFAULT NULL,
  `avatarsize` varchar(255) DEFAULT NULL,
  `datasource` varchar(255) DEFAULT NULL,
  `sourcekey` varchar(255) DEFAULT NULL,
  `sourcevalue` varchar(255) DEFAULT NULL,
  `tablename` varchar(255) DEFAULT NULL,
  `databaseid` int(11) DEFAULT NULL,
  `fieldlen` int(11) DEFAULT NULL,
  `fieldtype` varchar(255) DEFAULT NULL,
  `itemkeys` varchar(255) DEFAULT NULL,
  `itemvalues` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `ondb` varchar(255) DEFAULT NULL,
  `dense` varchar(255) DEFAULT NULL,
  `autofocus` varchar(255) DEFAULT NULL,
  `shaped` varchar(255) DEFAULT NULL,
  `readonly` varchar(255) DEFAULT NULL,
  `outlined` varchar(255) DEFAULT NULL,
  `hidden` varchar(255) DEFAULT NULL,
  `sorted` varchar(255) DEFAULT NULL,
  `rowdisplay` varchar(255) DEFAULT NULL,
  `multiple` varchar(255) DEFAULT NULL,
  `acceptnull` varchar(255) DEFAULT NULL,
  `ontable` varchar(255) DEFAULT NULL,
  `hidedetails` varchar(255) DEFAULT NULL,
  `clearable` varchar(255) DEFAULT NULL,
  `filled` varchar(255) DEFAULT NULL,
  `required` varchar(255) DEFAULT NULL,
  `disabled` varchar(255) DEFAULT NULL,
  `rounded` varchar(255) DEFAULT NULL,
  `filter` varchar(255) DEFAULT NULL,
  `dbsort` varchar(255) DEFAULT NULL,
  `inset` varchar(255) DEFAULT NULL,
  `returnobject` varchar(255) DEFAULT NULL,
  `useitems` varchar(255) DEFAULT NULL,
  `fieldkey` varchar(254) DEFAULT NULL,
  `pri` varchar(254) DEFAULT NULL,
  `ai` varchar(254) DEFAULT NULL,
  `onpdf` varchar(254) DEFAULT NULL,
  `onxls` varchar(20) NOT NULL,
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `fieldnames` VALUES (109,'CategoryID','CategoryID','categoryid','',5,'int','Telephone','NumberColumn',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','categories',3,5,'tinyintunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,'Yes','No','No','No','northwind.categories.CategoryID','Yes','Yes','Yes','Yes'),(110,'CategoryName','CategoryName','categoryname','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','categories',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.categories.CategoryName','No','No','Yes','Yes'),(111,'Description','Description','description','',0,'string','TextArea','TextArea',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','categories',3,0,'mediumtext','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.categories.Description','No','No','Yes','Yes'),(112,'Picture','Picture','picture','',50,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','categories',3,50,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.categories.Picture','No','No','Yes','Yes'),(113,'CustomerID','CustomerID','customerid','',5,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,5,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,'Yes','No','No','No','northwind.customers.CustomerID','Yes','No','Yes','Yes'),(114,'CompanyName','CompanyName','companyname','',40,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,40,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.CompanyName','No','No','Yes','Yes'),(115,'ContactName','ContactName','contactname','Unknown',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.ContactName','No','No','Yes','Yes'),(116,'ContactTitle','ContactTitle','contacttitle','',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.ContactTitle','No','No','Yes','Yes'),(117,'Address','Address','address','',60,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,60,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Address','No','No','Yes','Yes'),(118,'City','City','city','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.City','No','No','Yes','Yes'),(119,'Region','Region','region','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Region','No','No','Yes','Yes'),(120,'PostalCode','PostalCode','postalcode','',10,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,10,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.PostalCode','No','No','Yes','Yes'),(121,'Country','Country','country','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Country','No','No','Yes','Yes'),(122,'Phone','Phone','phone','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Phone','No','No','Yes','Yes'),(123,'Fax','Fax','fax','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',3,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Fax','No','No','Yes','Yes'),(124,'EmployeeID','EmployeeID','employeeid','',10,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,10,'intunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,'Yes','No','No','No','northwind.employees.EmployeeID','Yes','Yes','Yes','Yes'),(125,'LastName','LastName','lastname','',20,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,20,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.LastName','No','No','Yes','Yes'),(126,'FirstName','FirstName','firstname','',10,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,10,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.FirstName','No','No','Yes','Yes'),(127,'Title','Title','title','',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Title','No','No','Yes','Yes'),(128,'TitleOfCourtesy','TitleOfCourtesy','titleofcourtesy','',25,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,25,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.TitleOfCourtesy','No','No','Yes','Yes'),(129,'BirthDate','BirthDate','birthdate','',0,'string','DateTimePicker','DateTimeColumn',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,0,'datetime','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.BirthDate','No','No','Yes','Yes'),(130,'HireDate','HireDate','hiredate','',0,'string','DateTimePicker','DateTimeColumn',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,0,'datetime','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.HireDate','No','No','Yes','Yes'),(131,'Address','Address','address','',60,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,60,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Address','No','No','Yes','Yes'),(132,'City','City','city','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.City','No','No','Yes','Yes'),(133,'Region','Region','region','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Region','No','No','Yes','Yes'),(134,'PostalCode','PostalCode','postalcode','',10,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,10,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.PostalCode','No','No','Yes','Yes'),(135,'Country','Country','country','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Country','No','No','Yes','Yes'),(136,'HomePhone','HomePhone','homephone','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.HomePhone','No','No','Yes','Yes'),(137,'Extension','Extension','extension','',4,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,4,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Extension','No','No','Yes','Yes'),(138,'Photo','Photo','photo','',50,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,50,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Photo','No','No','Yes','Yes'),(139,'Notes','Notes','notes','',0,'string','TextArea','TextArea',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,0,'mediumtext','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','Yes','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Notes','No','No','Yes','Yes'),(140,'ReportsTo','ReportsTo','reportsto','',10,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',3,10,'intunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','Yes','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.ReportsTo','No','No','Yes','Yes'),(141,'ProductID','ProductID','productid','',10,'int','TextField','TextField','null',1,1,'80px','80px','null','null','Yes','No','80','','','','products',3,10,'intunsigned','','','Yes','Yes','null','No','null','No','null','No','null','null','No','No','Yes','null','null','null','No','No','null','null','Yes','No','No','No','northwind.products.ProductID','Yes','Yes','Yes','Yes'),(142,'ProductName','ProductName','productname','',40,'string','TextField','TextField','null',1,1,'80px','80px','null','null','Yes','No','80','','','','products',3,40,'varchar','','','Yes','Yes','null','No','null','No','null','null','null','null','No','No','Yes','null','null','null','No','No','null','null','null','No','No','No','northwind.products.ProductName','No','No','Yes','Yes'),(143,'SupplierID','SupplierID','supplierid','',10,'int','TextField','TextField','null',1,1,'80px','80px','null','null','Yes','No','80','','','','products',3,10,'intunsigned','','','Yes','Yes','null','No','null','No','null','null','null','null','No','No','Yes','null','null','null','No','No','null','null','null','No','No','No','northwind.products.SupplierID','No','No','Yes','Yes'),(144,'CategoryID','CategoryID','categoryid','',5,'int','Telephone','NumberColumn','null',1,1,'80px','80px','null','null','Yes','No','80','','','','products',3,5,'tinyintunsigned','','','Yes','Yes','null','No','null','No','null','No','null','null','No','No','Yes','null','null','null','No','No','null','null','null','No','No','No','northwind.products.CategoryID','No','No','Yes','Yes'),(145,'QuantityPerUnit','QuantityPerUnit','quantityperunit','',20,'string','TextField','TextField','null',1,1,'80px','80px','null','null','Yes','No','80','','','','products',3,20,'varchar','','','Yes','Yes','null','No','null','No','null','null','null','null','No','No','Yes','null','null','null','No','No','null','null','null','No','No','No','northwind.products.QuantityPerUnit','No','No','Yes','Yes'),(146,'UnitPrice','UnitPrice','unitprice','0',0,'double','Money','Money',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',3,0,'double','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.UnitPrice','No','No','Yes','Yes'),(147,'UnitsInStock','UnitsInStock','unitsinstock','0',5,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',3,5,'smallintunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.UnitsInStock','No','No','Yes','Yes'),(148,'UnitsOnOrder','UnitsOnOrder','unitsonorder','0',5,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',3,5,'smallintunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.UnitsOnOrder','No','No','Yes','Yes'),(149,'ReorderLevel','ReorderLevel','reorderlevel','0',5,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',3,5,'smallintunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.ReorderLevel','No','No','Yes','Yes'),(150,'Discontinued','Discontinued','discontinued','n',0,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',3,0,'enumyn','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.Discontinued','No','No','Yes','Yes'),(151,'SupplierID','SupplierID','supplierid','',10,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,10,'intunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,'Yes','No','No','No','northwind.suppliers.SupplierID','Yes','Yes','Yes','Yes'),(152,'CompanyName','CompanyName','companyname','',40,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,40,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.CompanyName','No','No','Yes','Yes'),(153,'ContactName','ContactName','contactname','',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.ContactName','No','No','Yes','Yes'),(154,'ContactTitle','ContactTitle','contacttitle','',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.ContactTitle','No','No','Yes','Yes'),(155,'Address','Address','address','',60,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,60,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Address','No','No','Yes','Yes'),(156,'City','City','city','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.City','No','No','Yes','Yes'),(157,'Region','Region','region','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Region','No','No','Yes','Yes'),(158,'PostalCode','PostalCode','postalcode','',10,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,10,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.PostalCode','No','No','Yes','Yes'),(159,'Country','Country','country','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Country','No','No','Yes','Yes'),(160,'Phone','Phone','phone','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Phone','No','No','Yes','Yes'),(161,'Fax','Fax','fax','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Fax','No','No','Yes','Yes'),(162,'HomePage','HomePage','homepage','',255,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',3,255,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.HomePage','No','No','Yes','Yes');
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mydatabases` (
  `dbid` int(11) NOT NULL AUTO_INCREMENT,
  `serveraddress` varchar(255) DEFAULT NULL,
  `databasename` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `databasetype` int(11) DEFAULT NULL,
  PRIMARY KEY (`dbid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `mydatabases` VALUES (3,'localhost','northwind','root','',1);
