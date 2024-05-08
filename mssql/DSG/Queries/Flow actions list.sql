USE [MaiaDSG]
GO
/****** Object:  StoredProcedure [dbo].[GetCRMActionsList_Flow]    Script Date: 07/07/2021 14:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Dan Shaw
-- Create date:	07/07/2021
-- =============================================
ALTER PROCEDURE [dbo].[GetCRMActionsList_Digital]
    @StatusGroupID INT,
    @SalesGroupID INT,
    @AssigneeID uniqueidentifier =	NULL,
    @FromDate DATETIME = '2019-04-01',
    @PinnedActionStatusGroupID INT = NULL,
    @BusinessManagerID INT = NULL,
    @AllowBusinessManager BIT = NULL,
    @AllowedActionStatusGroupID  INT = NULL

AS
BEGIN
	SET NOCOUNT ON

    SELECT
		[tProposal Actions].[Proposal Action ID],
		[tProposal Actions].[Proposal Action Date/Time],
		[tProposal Actions].[Proposal ID],
		[tProposal Actions].[Proposal Status ID],
		[tProposal Actions].ActionStatusID,
		[tProposal Actions].[Priority],
		tProposal.[Proposal Date],
		tProposal.[Proposal Customer Forename]+ N' ' + tProposal.[Proposal Customer Surname] AS Customer,
		tProposal.[Funder ID],
		tProposal.[Dealer ID] AS DealerID,
		tblStatusGroupAssignment.StatusGroupID,
		[tProposal Status].[Proposal Status Name],
		tDealer.[stDealer Name] AS Dealer,
		tblFinanceTypes.HandledBy,
		tblTraderActionStatuses.Name AS ActionStatus,
		tExecutive.[stExecutive Name],
		tExecutive.[cExecutive ID],
		ISNULL(tFunder.ShortName, ISNULL(tFunder.[stFunder Name], '')) AS FunderName,
		tblActionReminders.ReminderTime,
		tblAllocatedSystemUser.USER_ID AS AssigneeID,
		'[' + ISNULL(tExecutive.ShortName,'') + '] ' + ISNULL(tblAllocatedSystemUser.FULL_NAME, 'Not Assigned') AS AssigneeName,
		ProposalCurrentStatuses.[Proposal Status Name] as [Proposal Current Status Name]

	FROM [tProposal Actions] WITH (NOLOCK)
		INNER JOIN tProposal  WITH (NOLOCK) ON [tProposal Actions].[Proposal ID] = tProposal.[Proposal ID]
		INNER JOIN [tProposal Status] WITH (NOLOCK) ON [tProposal Actions].[Proposal Status ID] = [tProposal Status].[Proposal Status ID]
		INNER JOIN [tProposal Status] as ProposalCurrentStatuses WITH (NOLOCK) ON tProposal.[Proposal Current Status ID] = ProposalCurrentStatuses.[Proposal Status ID]
		INNER JOIN tDealer  WITH (NOLOCK) ON tProposal.[Dealer ID] = tDealer.[cDealer ID]
		INNER JOIN tblFinanceTypes  WITH (NOLOCK) ON tProposal.[Facility Type] = tblFinanceTypes.ID
		INNER JOIN tblTraderActionStatuses  WITH (NOLOCK) ON [tProposal Actions].ActionStatusID = tblTraderActionStatuses.ID
		INNER JOIN dbo.tblSalesGroupAssignment  WITH (NOLOCK) ON dbo.tProposal.InternalProcessID = dbo.tblSalesGroupAssignment.SalesProcessID
		INNER JOIN tblStatusGroupAssignment  WITH (NOLOCK) ON [tProposal Actions].[Proposal Status ID] = tblStatusGroupAssignment.StatusID
		INNER JOIN tExecutive  WITH (NOLOCK) ON tProposal.[Executive ID] = tExecutive.[cExecutive ID]

		LEFT JOIN tFunder WITH (NOLOCK) ON tProposal.[Funder ID] = tFunder.[cFunder ID]
		LEFT JOIN tblActionReminders WITH (NOLOCK) ON tblActionReminders.ProposalActionID = [tProposal Actions].[Proposal Action ID]  
		LEFT JOIN tblActionAllocation WITH (NOLOCK) ON [tProposal Actions].[Proposal Action ID] = tblActionAllocation.ProposalActionID 
		LEFT JOIN tblSystemUsers AS tblAllocatedSystemUser WITH (NOLOCK) ON tblActionAllocation.AllocatedUserID = tblAllocatedSystemUser.USER_ID 
		LEFT JOIN tblSystemUserExecAllocation WITH (NOLOCK) ON tblSystemUserExecAllocation.EXEC_ID = tExecutive.[cExecutive ID]
		LEFT JOIN tblStatusGroupAssignment As PinnedActions WITH (NOLOCK) ON tblStatusGroupAssignment.StatusGroupID = @PinnedActionStatusGroupID 

	WHERE [tProposal Actions].[Proposal Action ID] > 21538594
		AND dbo.tblSalesGroupAssignment.SalesGroupID = @SalesGroupID 
		AND dbo.[tProposal Actions].ActionStatusID = 0

		AND (
			(@AllowedActionStatusGroupID IS NOT NULL AND tblStatusGroupAssignment.StatusGroupID = @AllowedActionStatusGroupID)		  
			OR (tblStatusGroupAssignment.StatusGroupID = @StatusGroupID
				AND (
					@BusinessManagerID IS NULL
					OR (@AllowedActionStatusGroupID IS NOT NULL AND tblStatusGroupAssignment.StatusGroupID = @AllowedActionStatusGroupID) 
					OR @AllowBusinessManager IS NULL 
					OR (
						(@AllowBusinessManager = 0 AND dbo.tProposal.[Executive ID] <> @BusinessManagerID)
						OR
						(@AllowBusinessManager = 1 AND dbo.tProposal.[Executive ID] = @BusinessManagerID)
					)
				)			 
			)
    		    AND (
				@AssigneeID IS NULL 
				OR dbo.[tblActionAllocation].AllocatedUserID = @AssigneeID
				OR (
					   @PinnedActionStatusGroupID IS NOT NULL AND dbo.[tProposal Actions].[Proposal Status ID] IN (
						  SELECT StatusID
						  FROM tblStatusGroupAssignment WITH (NOLOCK)
						  WHERE tblStatusGroupAssignment.StatusGroupID = @PinnedActionStatusGroupID) 
				)
			 )
		  )

		  
		  AND ([Dealer ID] = 14187)
    END
