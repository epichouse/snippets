-- Add owner role to a database user.
sys.sp_addrolemember @rolename = N'db_owner', @membername = N'DBUSERHERE'
GO