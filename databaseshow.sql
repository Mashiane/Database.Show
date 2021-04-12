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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `databaseindexes` VALUES (1,'PRIMARY','Yes','No','categories',1,'CategoryID','northwind.categories.PRIMARY'),(2,'Uidx_categories_category_name','No','Yes','categories',1,'CategoryName','northwind.categories.Uidx_categories_category_name'),(3,'idx_customers_city','No','No','customers',1,'City','northwind.customers.idx_customers_city'),(4,'idx_customers_company_name','No','No','customers',1,'CompanyName','northwind.customers.idx_customers_company_name'),(5,'idx_customers_postalcode','No','No','customers',1,'PostalCode','northwind.customers.idx_customers_postalcode'),(6,'idx_customers_region','No','No','customers',1,'Region','northwind.customers.idx_customers_region'),(7,'PRIMARY','Yes','No','customers',1,'CustomerID','northwind.customers.PRIMARY'),(8,'idx_employees_lastname','No','No','employees',1,'LastName','northwind.employees.idx_employees_lastname'),(9,'idx_employees_postalcode','No','No','employees',1,'PostalCode','northwind.employees.idx_employees_postalcode'),(10,'idx_ReportsTo','No','No','employees',1,'ReportsTo','northwind.employees.idx_ReportsTo'),(11,'PRIMARY','Yes','No','employees',1,'EmployeeID','northwind.employees.PRIMARY'),(12,'idx_FK_products_categoryid','No','No','products',1,'CategoryID','northwind.products.idx_FK_products_categoryid'),(13,'idx_FK_products_supplierid','No','No','products',1,'SupplierID','northwind.products.idx_FK_products_supplierid'),(14,'idx_products_product_name','No','No','products',1,'ProductName','northwind.products.idx_products_product_name'),(15,'PRIMARY','Yes','No','products',1,'ProductID','northwind.products.PRIMARY'),(16,'idx_suppliers_postalcode','No','No','suppliers',1,'PostalCode','northwind.suppliers.idx_suppliers_postalcode'),(17,'idx_suppliers_product_name','No','No','suppliers',1,'CompanyName','northwind.suppliers.idx_suppliers_product_name'),(18,'PRIMARY','Yes','No','suppliers',1,'SupplierID','northwind.suppliers.PRIMARY');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `databasetables` VALUES (1,'northwind.categories',1,'categories','categories','categories','CategoryID','CategoryID','700','No','Yes','CategoryID','CategoryID','No','No','No','No','No','No','No',NULL,4),(2,'northwind.customers',1,'customers','customers','customers','CustomerID','CustomerID','700','No','Yes','CustomerID','','No','No','No','No','No','No','No',NULL,11),(3,'northwind.employees',1,'employees','employees','employees','EmployeeID','EmployeeID','700','No','Yes','EmployeeID','EmployeeID','No','No','No','No','No','No','No',NULL,17),(4,'northwind.products',1,'products','products','products','ProductID','ProductID','700','No','Yes','ProductID','ProductID','No','No','No','No','No','No','No',NULL,10),(5,'northwind.suppliers',1,'suppliers','suppliers','suppliers','SupplierID','SupplierID','700','No','Yes','SupplierID','SupplierID','No','No','No','No','No','No','No',NULL,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `fieldnames` VALUES (1,'CategoryID','CategoryID','categoryid','',5,'int','Rating','NumberColumn','null',1,1,'80px','80px','null','null','Yes','No','80','','','','categories',1,5,'tinyintunsigned','','','Yes','Yes','null','No','null','No','null','null','null','null','No','No','Yes','null','null','null','No','No','null','null','Yes','No','No','No','northwind.categories.CategoryID','Yes','Yes','Yes','Yes'),(2,'CategoryName','CategoryName','categoryname','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','categories',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.categories.CategoryName','No','No','Yes','Yes'),(3,'Description','Description','description','',0,'string','TextArea','TextArea',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','categories',1,0,'mediumtext','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.categories.Description','No','No','Yes','Yes'),(4,'Picture','Picture','picture','',50,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','categories',1,50,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.categories.Picture','No','No','Yes','Yes'),(5,'CustomerID','CustomerID','customerid','',5,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,5,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,'Yes','No','No','No','northwind.customers.CustomerID','Yes','No','Yes','Yes'),(6,'CompanyName','CompanyName','companyname','',40,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,40,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.CompanyName','No','No','Yes','Yes'),(7,'ContactName','ContactName','contactname','Unknown',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.ContactName','No','No','Yes','Yes'),(8,'ContactTitle','ContactTitle','contacttitle','',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.ContactTitle','No','No','Yes','Yes'),(9,'Address','Address','address','',60,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,60,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Address','No','No','Yes','Yes'),(10,'City','City','city','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.City','No','No','Yes','Yes'),(11,'Region','Region','region','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Region','No','No','Yes','Yes'),(12,'PostalCode','PostalCode','postalcode','',10,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,10,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.PostalCode','No','No','Yes','Yes'),(13,'Country','Country','country','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Country','No','No','Yes','Yes'),(14,'Phone','Phone','phone','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Phone','No','No','Yes','Yes'),(15,'Fax','Fax','fax','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','customers',1,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.customers.Fax','No','No','Yes','Yes'),(16,'EmployeeID','EmployeeID','employeeid','',10,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,10,'intunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,'Yes','No','No','No','northwind.employees.EmployeeID','Yes','Yes','Yes','Yes'),(17,'LastName','LastName','lastname','',20,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,20,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.LastName','No','No','Yes','Yes'),(18,'FirstName','FirstName','firstname','',10,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,10,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.FirstName','No','No','Yes','Yes'),(19,'Title','Title','title','',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Title','No','No','Yes','Yes'),(20,'TitleOfCourtesy','TitleOfCourtesy','titleofcourtesy','',25,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,25,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.TitleOfCourtesy','No','No','Yes','Yes'),(21,'BirthDate','BirthDate','birthdate','',0,'string','DateTimePicker','DateTimeColumn',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,0,'datetime','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.BirthDate','No','No','Yes','Yes'),(22,'HireDate','HireDate','hiredate','',0,'string','DateTimePicker','DateTimeColumn',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,0,'datetime','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.HireDate','No','No','Yes','Yes'),(23,'Address','Address','address','',60,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,60,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Address','No','No','Yes','Yes'),(24,'City','City','city','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.City','No','No','Yes','Yes'),(25,'Region','Region','region','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Region','No','No','Yes','Yes'),(26,'PostalCode','PostalCode','postalcode','',10,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,10,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.PostalCode','No','No','Yes','Yes'),(27,'Country','Country','country','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Country','No','No','Yes','Yes'),(28,'HomePhone','HomePhone','homephone','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.HomePhone','No','No','Yes','Yes'),(29,'Extension','Extension','extension','',4,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,4,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Extension','No','No','Yes','Yes'),(30,'Photo','Photo','photo','',50,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,50,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Photo','No','No','Yes','Yes'),(31,'Notes','Notes','notes','',0,'string','TextArea','TextArea',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,0,'mediumtext','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','Yes','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.Notes','No','No','Yes','Yes'),(32,'ReportsTo','ReportsTo','reportsto','',10,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','employees',1,10,'intunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','Yes','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.employees.ReportsTo','No','No','Yes','Yes'),(33,'ProductID','ProductID','productid','',10,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,10,'intunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,'Yes','No','No','No','northwind.products.ProductID','Yes','Yes','Yes','Yes'),(34,'ProductName','ProductName','productname','',40,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,40,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.ProductName','No','No','Yes','Yes'),(35,'SupplierID','SupplierID','supplierid','',10,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,10,'intunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.SupplierID','No','No','Yes','Yes'),(36,'CategoryID','CategoryID','categoryid','',5,'int','Telephone','NumberColumn',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,5,'tinyintunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.CategoryID','No','No','Yes','Yes'),(37,'QuantityPerUnit','QuantityPerUnit','quantityperunit','',20,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,20,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.QuantityPerUnit','No','No','Yes','Yes'),(38,'UnitPrice','UnitPrice','unitprice','0',0,'double','Money','Money',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,0,'double','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.UnitPrice','No','No','Yes','Yes'),(39,'UnitsInStock','UnitsInStock','unitsinstock','0',5,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,5,'smallintunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.UnitsInStock','No','No','Yes','Yes'),(40,'UnitsOnOrder','UnitsOnOrder','unitsonorder','0',5,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,5,'smallintunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.UnitsOnOrder','No','No','Yes','Yes'),(41,'ReorderLevel','ReorderLevel','reorderlevel','0',5,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,5,'smallintunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.ReorderLevel','No','No','Yes','Yes'),(42,'Discontinued','Discontinued','discontinued','n',0,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','products',1,0,'enumyn','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.products.Discontinued','No','No','Yes','Yes'),(43,'SupplierID','SupplierID','supplierid','',10,'int','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,10,'intunsigned','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,'Yes','No','No','No','northwind.suppliers.SupplierID','Yes','Yes','Yes','Yes'),(44,'CompanyName','CompanyName','companyname','',40,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,40,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.CompanyName','No','No','Yes','Yes'),(45,'ContactName','ContactName','contactname','',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.ContactName','No','No','Yes','Yes'),(46,'ContactTitle','ContactTitle','contacttitle','',30,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,30,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.ContactTitle','No','No','Yes','Yes'),(47,'Address','Address','address','',60,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,60,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Address','No','No','Yes','Yes'),(48,'City','City','city','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.City','No','No','Yes','Yes'),(49,'Region','Region','region','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Region','No','No','Yes','Yes'),(50,'PostalCode','PostalCode','postalcode','',10,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,10,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.PostalCode','No','No','Yes','Yes'),(51,'Country','Country','country','',15,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,15,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Country','No','No','Yes','Yes'),(52,'Phone','Phone','phone','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Phone','No','No','Yes','Yes'),(53,'Fax','Fax','fax','',24,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,24,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.Fax','No','No','Yes','Yes'),(54,'HomePage','HomePage','homepage','',255,'string','TextField','TextField',NULL,1,1,'80px','80px',NULL,NULL,'Yes','No','80','','','','suppliers',1,255,'varchar','','','Yes','Yes',NULL,'No',NULL,'No',NULL,NULL,NULL,NULL,'No','No','Yes',NULL,NULL,NULL,'No','No',NULL,NULL,NULL,'No','No','No','northwind.suppliers.HomePage','No','No','Yes','Yes');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
INSERT INTO `mydatabases` VALUES (1,'localhost','northwind','root','',1);
