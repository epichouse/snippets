/****** Script for SelectTopNRows command from SSMS  ******/
SELECT        TOP (1500) tDeal.[stDeal Customer E-Mail Address], tFunder.[stFunder Name], tDeal.[stDeal Customer Forename], tDeal.[stDeal Customer Surname], tDeal.[niDeal Customer Age], tDeal.[stDeal Customer Address Postal Code], 
                         tDeal.[stDeal Customer Telephone Number]
FROM            tDeal INNER JOIN
                         tFunder ON tDeal.[cFunder ID] = tFunder.[cFunder ID]
WHERE        (tFunder.[cFunder ID] = 72 OR
                         tFunder.[cFunder ID] = 121 OR
                         tFunder.[cFunder ID] = 58) AND (tDeal.[dDeal Month] BETWEEN '2020-01-01 00:00:00:00' AND '2020-12-30 00:00:00:00') AND (tDeal.[stDeal Customer E-Mail Address] LIKE '%@%')
ORDER BY NEWID()