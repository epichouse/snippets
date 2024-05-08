USE [Quest]
GO

/****** Object:  StoredProcedure [dbo].[GetDepartmentFromPhone]    Script Date: 09/04/2024 15:06:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Dan Shaw
-- Create date: 13/07/22
-- Description:	SP to get current proposal status using the applicant phone number
-- =============================================

CREATE PROCEDURE [dbo].[GetDepartmentFromPhone]
-- Add the parameters for the stored procedure here
-- Underwriting 1
-- Payouts 2
-- Sales 3
@CallerPhoneNumber VARCHAR(100)
AS
BEGIN
	declare @QSTApplicantID int
	declare @QSTPNID int
	declare @QSTStatus int
	declare @Dept int
	declare @ACApplicationRef VARCHAR(MAX)
	declare @URL VARCHAR(MAX)

	set @QSTApplicantID = (SELECT TOP (1)  [ApplicantID]
	FROM [Quest].[dbo].[tblApplicantContacts]
	WHERE ApplicantContactTypeID = 2 AND Details = @CallerPhoneNumber)

	set @QSTPNID = (SELECT TOP (1)  [ProposalID]
	FROM [Quest].[dbo].[tblApplicants]
	WHERE ID = @QSTApplicantID)

	set @QSTStatus = (SELECT TOP (1) [ProposalStatusID] AS ProposalStatus
	FROM [Quest].[dbo].[tblProposals]
	where id = @QSTPNID
	order by ID desc)

	--Get AC Reference for Screen Pop
	set @ACApplicationRef = (SELECT TOP (1) ProposalManagementSystemReference
	FROM [Quest].[dbo].[tblProposals]
	where id = @QSTPNID
	order by ID desc)

	if @QSTStatus in (1,2,3,4,5,8,14,19,26,28,29,30,31,39,40,41,42,43,44,46,47,56)
		set @Dept = 1 --UW
	if @QSTStatus in (10,11,12,16,17,20,21,22,24,25,38,49,51,53,54)
		set @Dept = 2 --Payouts
	if @QSTStatus in (6,7,9,15,18,23,27,32,33,34,35,45,48,50,52,55)
		set @Dept = 3 --Sales

	--testing numbers
	if @CallerPhoneNumber = '07777888881'
		set @Dept = 1 --UW
	if @CallerPhoneNumber = '07777888882'
		set @Dept = 2 --Payouts
	if @CallerPhoneNumber = '07777888883'
		set @Dept = 3 --Sales



	--One Time Override
	if  @CallerPhoneNumber = '07825184161'
		set @Dept = 3
		set @ACApplicationRef = '7ce6cd98-5560-4736-af54-a8a496fafc3c' --X4PEP89

	if @CallerPhoneNumber = '01614063931'
		set @Dept = 2
		set @ACApplicationRef = '7ce6cd98-5560-4736-af54-a8a496fafc3c' --X4PEP89

	select @Dept AS DeptID,'https://www.autoconvert.co.uk/application/view/'+ @ACApplicationRef AS URL;
	 
END;


GO


