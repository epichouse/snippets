/****** Script for SelectTopNRows command from SSMS  ******/
SELECT        TOP (2000) tProposal.[Proposal Date], tProposal.[Proposal Customer Forename], tProposal.[Proposal Customer Surname], tProposal.[Proposal Customer Address Postal Code], tProposal.[Proposal Cust DOB], 
                         tFunder.[stFunder Name], tFunder.[cFunder ID]
FROM            tProposal INNER JOIN
                         tFunder ON tProposal.[Funder ID] = tFunder.[cFunder ID]
WHERE        (tProposal.[Proposal Date] BETWEEN '2020-05-01 00:00:00:00' AND '2021-05-01 00:00:00:00') AND (tFunder.[stFunder Name] = 'Marsh Finance Limited') OR
                         (tFunder.[stFunder Name] = 'Oodle Car Finance')

ORDER BY NEWID()
