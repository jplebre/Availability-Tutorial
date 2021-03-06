-- Script Date: 31/05/2016 01:02  - ErikEJ.SqlCeScripting version 3.5.2.56
-- Database information:
-- Locale Identifier: 1033
-- Encryption Mode: 
-- Case Sensitive: False
-- Database: Store.sdf
-- ServerVersion: 4.0.8876.1
-- DatabaseSize: 84 KB
-- Created: 05/03/2016 14:36

-- User Table information:
-- Number of tables: 2
-- LastReadFeedItem: 0 row(s)
-- Products: 0 row(s)

USE master
GO

CREATE Database Store
GO

USE Store
Go

CREATE TABLE [Products] (
  [Id] int IDENTITY (2,1) NOT NULL
, [ProductName] nvarchar(100) NOT NULL
, [ProductDescription] nvarchar(250) NULL
, [ProductPrice] float NOT NULL
);
GO
CREATE TABLE [LastReadFeedItem] (
  [Id] int IDENTITY (1,1) NOT NULL
, [FeedId] uniqueidentifier NOT NULL
, [LastEntryReadId] uniqueidentifier NOT NULL
);
GO
SET IDENTITY_INSERT [Products] OFF;
GO
SET IDENTITY_INSERT [LastReadFeedItem] OFF;
GO
ALTER TABLE [Products] ADD CONSTRAINT [PK_Products] PRIMARY KEY ([Id]);
GO
ALTER TABLE [LastReadFeedItem] ADD CONSTRAINT [PK_LastReadFeedItem] PRIMARY KEY ([Id]);
GO

