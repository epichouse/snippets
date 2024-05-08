USE [Quest]
GO

/****** Object:  StoredProcedure [dbo].[GetACPropDataTA]    Script Date: 09/04/2024 15:05:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Dan Shaw
-- Create date: 22/06/22
-- Description:	SP to get all Data required by TA to process AC Emails
-- =============================================

CREATE PROCEDURE [dbo].[GetACPropDataTA]
-- Add the parameters for the stored procedure here

@ACShortRef VARCHAR(100)
AS
BEGIN
	declare @QSTPNID int
	declare @QSTPROPOSERID int
	declare @ACApplicantReference varchar(MAX)
	declare @ACProposalReferenceLong varchar(MAX)
	declare @ACSourceReference varchar(MAX)


	set @QSTPNID = (SELECT TOP (1) [ProposalID]
	FROM [Quest].[dbo].[tblProposalCustomDataItems]
	where ItemDataTypeID = 59 and itemvalue = @ACShortRef)

	set @ACApplicantReference = (Select TOP (1) [ItemValue] AS ACREF
	FROM [Quest].[dbo].[tblProposalCustomDataItems]
	where ItemDataTypeID = 60 and proposalid = @QSTPNID)
	
	set @ACProposalReferenceLong = (SELECT TOP (1) [ProposalManagementSystemReference]
	FROM [Quest].[dbo].[tblProposals]
	where id = @QSTPNID)

	set @QSTPROPOSERID = (SELECT TOP (1) [ProposerID]
	FROM [Quest].[dbo].[tblProposals]
	where ID = @QSTPNID)
	
	set @ACSourceReference = (SELECT TOP (1) [SETTING_VALUE]
	FROM [Quest].[dbo].[tblSystemUserGroupSettingAssignment]
	WHERE SETTING_TYPE_ID = 6 and GROUP_ID = @QSTPROPOSERID)


	select @ACApplicantReference as ACREF,@ACProposalReferenceLong as ACPNREF, @ACSourceReference as ACSOURCEREF
END;


GO


