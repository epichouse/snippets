-- Add Reader Role to a database user.
sys.sp_addrolemember @rolename = N'db_datareader', @membername = N'DBUSERHERE'
GO