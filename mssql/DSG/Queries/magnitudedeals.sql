/****** Script for SelectTopNRows command from SSMS  ******/
SELECT        TOP (1000) tDeal.[dDeal Date/Time] AS [Deal Date/Time], tDeal.[stDeal Customer Forename] AS [Customer Forename], tDeal.[stDeal Customer Surname] AS [Customer Surname], tblDealerGroup.Name AS [Dealer Group Name], 
                         tDeal.[stDeal Customer E-Mail Address] AS [Customer Email Address]
FROM            tDeal INNER JOIN
                         tDealer ON tDeal.[cDealer ID] = tDealer.[cDealer ID] INNER JOIN
                         tblDealerGroup ON tDealer.DealerGroupID = tblDealerGroup.ID
WHERE        (tblDealerGroup.ID = 232) AND (tDeal.[dDeal Date/Time] BETWEEN '2021-01-01 00:00:00.000' AND '2021-10-31 00:00:00.000')