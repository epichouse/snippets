/****** Script for SelectTopNRows command from SSMS  ******/
SELECT        TOP (1000) tblCustomDataItemTypes.ItemName, tProposal.[Proposal ID], tProposal.[Proposal Customer Forename], tProposal.[Proposal Customer Surname], tProposal.[Proposal Cust DOB], tProposal.[Proposal Cust Occupation], 
                         tProposal.[Proposal JH Marital Status], tProposal.[Proposal Date], tblProposalCustomDataItems.ItemValue, tProposal.[Proposal Customer E-Mail]
FROM            tblCustomDataItemTypes INNER JOIN
                         tblProposalCustomDataItems ON tblCustomDataItemTypes.ID = tblProposalCustomDataItems.ItemDataTypeID INNER JOIN
                         tProposal ON tblProposalCustomDataItems.ID = tProposal.[Proposal ID]
WHERE        (
						 tblProposalCustomDataItems.ItemValue = '570' OR
						 tblProposalCustomDataItems.ItemValue = '571' OR
						 tblProposalCustomDataItems.ItemValue = '572' OR
                         tblProposalCustomDataItems.ItemValue = '573' OR
                         tblProposalCustomDataItems.ItemValue = '574' OR
                         tblProposalCustomDataItems.ItemValue = '575' OR
                         tblProposalCustomDataItems.ItemValue = '576' OR
                         tblProposalCustomDataItems.ItemValue = '577' OR
                         tblProposalCustomDataItems.ItemValue = '578' OR
                         tblProposalCustomDataItems.ItemValue = '579' OR
                         tblProposalCustomDataItems.ItemValue = '580' OR
						 tblProposalCustomDataItems.ItemValue = '581' OR
						 tblProposalCustomDataItems.ItemValue = '582' OR
						 tblProposalCustomDataItems.ItemValue = '583' OR
						 tblProposalCustomDataItems.ItemValue = '584' OR
                         tblProposalCustomDataItems.ItemValue = '585' OR
                         tblProposalCustomDataItems.ItemValue = '586' OR
                         tblProposalCustomDataItems.ItemValue = '587' OR
                         tblProposalCustomDataItems.ItemValue = '588' OR
                         tblProposalCustomDataItems.ItemValue = '589' OR
                         tblProposalCustomDataItems.ItemValue = '590' OR
                         tblProposalCustomDataItems.ItemValue = '591' OR
                         tblProposalCustomDataItems.ItemValue = '592' OR
                         tblProposalCustomDataItems.ItemValue = '593' OR
                         tblProposalCustomDataItems.ItemValue = '594' OR
                         tblProposalCustomDataItems.ItemValue = '595' OR
                         tblProposalCustomDataItems.ItemValue = '596' OR
                         tblProposalCustomDataItems.ItemValue = '597' OR
                         tblProposalCustomDataItems.ItemValue = '598' OR
                         tblProposalCustomDataItems.ItemValue = '599' OR
                         tblProposalCustomDataItems.ItemValue = '600' OR
                         tblProposalCustomDataItems.ItemValue = '601' OR
						 tblProposalCustomDataItems.ItemValue = '602' OR
						 tblProposalCustomDataItems.ItemValue = '603' OR
						 tblProposalCustomDataItems.ItemValue = '604' OR
						 tblProposalCustomDataItems.ItemValue = '605' OR
                         tblProposalCustomDataItems.ItemValue = '606' OR
                         tblProposalCustomDataItems.ItemValue = '607' OR
                         tblProposalCustomDataItems.ItemValue = '608' OR
                         tblProposalCustomDataItems.ItemValue = '609' OR
                         tblProposalCustomDataItems.ItemValue = '610' OR
                         tblProposalCustomDataItems.ItemValue = '611' OR
                         tblProposalCustomDataItems.ItemValue = '612' OR
                         tblProposalCustomDataItems.ItemValue = '613' OR
                         tblProposalCustomDataItems.ItemValue = '614' OR
                         tblProposalCustomDataItems.ItemValue = '615' OR
                         tblProposalCustomDataItems.ItemValue = '616' OR
                         tblProposalCustomDataItems.ItemValue = '617' OR
                         tblProposalCustomDataItems.ItemValue = '618' OR
                         tblProposalCustomDataItems.ItemValue = '619' OR
                         tblProposalCustomDataItems.ItemValue = '620' OR
                         tblProposalCustomDataItems.ItemValue = '621' OR
                         tblProposalCustomDataItems.ItemValue = '622' OR
                         tblProposalCustomDataItems.ItemValue = '623' OR
                         tblProposalCustomDataItems.ItemValue = '624') 
						 AND (tProposal.[Proposal JH Marital Status] IS NOT NULL)
						 AND (tProposal.[Proposal Customer E-Mail] IS NOT NULL)