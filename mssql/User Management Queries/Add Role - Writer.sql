-- Add writer role to a database user
sys.sp_addrolemember @rolename = N'db_datawriter', @membername = N'DBUSERHERE'
GO