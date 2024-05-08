/****** Script for SelectTopNRows command from SSMS  ******/
SELECT        TOP (3000) tblProposers.Name AS [Proposers Name], tblCalculatorProfiles.Description
FROM            tblProposers INNER JOIN
                         tblCalculatorProfiles ON tblProposers.CalculatorProfileID = tblCalculatorProfiles.ID

where (Description = 'CCF Single Rate A') 
or (Description = 'CCF Single Rate B') 
or (Description = 'CCF Single Rate C')
or (Description = 'CCF Single Rate D')
or (Description = 'CCF Single Rate E')
or (Description = 'CCF Single Rate F')
or (Description = 'CCF Single Rate G')
or (Description = 'CCF AutoR8 1')
or (Description = 'CCF AutoR8 1a')
or (Description = 'CCF AutoR8 2')
or (Description = 'CCF AutoR8 2a')
or (Description = 'CCF AutoR8 3')
or (Description = 'CCF AutoR8 3a')
or (Description = 'CCF AutoR8 4')
or (Description = 'CCF AutoR8 4a')
or (Description = 'CCF AutoR8 5')
or (Description = 'CCF AutoR8 5a')
or (Description = 'CCF AutoR8 6')
or (Description = 'CCF AutoR8 6a')
or (Description = 'CCF AutoR8 7')
or (Description = 'CCF AutoR8 7a')
or (Description = 'CCF AutoR8 8')
or (Description = 'CCF AutoR8 8a')

order by Description