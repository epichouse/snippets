USE [Quest]
GO

/****** Object:  StoredProcedure [dbo].[GetDivisionFromPhone]    Script Date: 09/04/2024 15:07:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO







-- =============================================
-- Author:		Dan Shaw
-- Create date: 17/07/22
-- Description:	SP to get division of proposal using the applicant phone number
-- This SP only looks for CCF Props currently
-- =============================================

CREATE PROCEDURE [dbo].[GetDivisionFromPhone]
-- Add the parameters for the stored procedure here

@CallerPhoneNumber VARCHAR(100)
AS
BEGIN
	declare @QSTApplicantID int
	declare @QSTPNID int
	declare @QSTProposerID int
	declare @QSTProposerProductSetID int
	declare @QSTProposerProductSet nvarchar(Max)
	declare @Division nvarchar(max)

	set @QSTApplicantID = (SELECT TOP (1)  [ApplicantID]
	FROM [Quest].[dbo].[tblApplicantContacts]
	WHERE ApplicantContactTypeID = 2 AND Details = @CallerPhoneNumber
	order by ApplicantID desc)

	set @QSTPNID = (SELECT TOP (1)  [ProposalID]
	FROM [Quest].[dbo].[tblApplicants]
	WHERE ID = @QSTApplicantID
	order by ID desc)

	set @QSTProposerID = (SELECT TOP (1) [ProposerID]
	FROM [Quest].[dbo].[tblProposals]
	where id = @QSTPNID)
	
	set @QSTProposerProductSetID = (SELECT TOP (1) [ProductSetID]
	FROM [Quest].[dbo].[tblProposers]
	where id = @QSTProposerID)

	set @QSTProposerProductSet = (SELECT TOP (1) [Description]
	FROM [Quest].[dbo].[tblProductSets]
	where id = @QSTProposerProductSetID)

	--testing numbers
	if @CallerPhoneNumber = '07777888884'
		set @Division = 'DSG' --DSG
	if @CallerPhoneNumber = '07777888885'
		set @Division = 'CCF' --CCF


	--if @CallerPhoneNumber = '01614063931'
	--	set @Division = 'CCF'

	select @Division AS Division
END;


GO


