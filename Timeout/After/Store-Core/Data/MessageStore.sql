-- Script Date: 31/05/2016 01:02  - ErikEJ.SqlCeScripting version 3.5.2.56
-- Database information:
-- Locale Identifier: 1033
-- Encryption Mode: 
-- Case Sensitive: False
-- Database: MessageStore.sdf
-- ServerVersion: 4.0.8876.1
-- DatabaseSize: 84 KB
-- Created: 05/03/2016 14:36

-- User Table information:
-- Number of tables: 1
-- Messages: 0 row(s)

USE master
GO

CREATE Database MessageStore
GO

USE MessageStore
GO

CREATE TABLE [Messages] (
  [MessageId] uniqueidentifier NOT NULL
, [Topic] nvarchar(255) NULL
, [MessageType] nvarchar(32) NULL
, [Timestamp] datetime NULL
, [HeaderBag] ntext NULL
, [Body] ntext NULL
);
GO
ALTER TABLE [Messages] ADD CONSTRAINT [PK_MessageId] PRIMARY KEY ([MessageId]);
GO

