/*
先切到 master →
如果已經存在 DataWarehouse 就刪掉重建 →
建立 DataWarehouse →
切進 DataWarehouse →
建立 bronze / silver / gold 三個 schema
*/

USE master;
go

--確認資料庫是否存在
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP  DATABASE DataWarehouse;
END
go
  
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
go
CREATE SCHEMA silver;
go
CREATE SCHEMA gold;
go
