-- Add owner role to a database user.
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'DBUSERHERE'
GO

-- Remove owner role to a database user.
sys.sp_droprolemember @rolename = N'db_owner', @membername = N'DBUSERHERE'
GO

-- Add Reader Role to a database user.
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'DBUSERHERE'
GO

-- Remove Reader Role to a database user.
sys.sp_droprolemember @rolename = N'db_datareader', @membername = N'DBUSERHERE'
GO

-- Add writer role to a database user
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'DBUSERHERE'
GO

-- Remove writer role to a database user
sys.sp_droprolemember @rolename = N'db_datawriter', @membername = N'DBUSERHERE'
GO