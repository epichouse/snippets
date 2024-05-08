USE [MaiaDSG]
GO

--This update statement sets all of the dealers in the specified postcodes, that are currently assigned to CCF Jamie Stewart, to the new terrirory
UPDATE [dbo].[tDealer]
SET [cExecutive ID] = 384
where ([cExecutive ID] = 261) and ([stDealer Address Postal Code] like 'DG%' or
[stDealer Address Postal Code] like 'G%' or
[stDealer Address Postal Code] like 'KA%' or
[stDealer Address Postal Code] like 'ML%' or
[stDealer Address Postal Code] like 'PA%')


-- This following two update statements are changing the name's of the existing territory to specify East Scotland, rather than Scotland overall.
UPDATE [dbo].[tExecutive]
SET DealerFriendlyName = 'The East Scotland CCF Team'
WHERE [cExecutive ID] = 261

UPDATE [dbo].[tExecutive]
SET ShortName = 'CCF ES'
WHERE [cExecutive ID] = 261