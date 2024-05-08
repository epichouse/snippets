/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT 
                         tDeal.[stDeal Customer E-Mail Address], tDeal.[dDeal Date/Time], tDeal.[stDeal Customer E-Mail Address] AS Expr1, tblExecutiveGroupAssignment.ExecutiveGroupID, tDeal.[stDeal Customer Forename], 
                         tDeal.[stDeal Customer Surname], tDeal.[stDeal Customer Telephone Number]
FROM            tDeal INNER JOIN
                         tblExecutiveGroupAssignment ON tDeal.[cExecutive ID] = tblExecutiveGroupAssignment.ExecutiveID
WHERE					(tDeal.[cDealer ID] = 14773 OR
                         tDeal.[cDealer ID] = 11871 OR
                         tDeal.[cDealer ID] = 14321 OR
                         tDeal.[cDealer ID] = 11639 OR
                         tDeal.[cDealer ID] = 13055 OR
                         tDeal.[cDealer ID] = 12614 OR
                         tDeal.[cDealer ID] = 14454 OR
                         tDeal.[cDealer ID] = 12943 OR
                         tDeal.[cDealer ID] = 14086 OR
                         tDeal.[cDealer ID] = 16025 OR
                         tDeal.[cDealer ID] = 10108 OR
                         tDeal.[cDealer ID] = 12627 OR
                         tDeal.[cDealer ID] = 10109 OR
                         tDeal.[cDealer ID] = 14669 OR
                         tDeal.[cDealer ID] = 12872 OR
						 tblExecutiveGroupAssignment.ExecutiveGroupID = 56)
						 
						 
						 AND (tDeal.[dDeal Date/Time] BETWEEN '2020-01-01' AND '2021-11-17')