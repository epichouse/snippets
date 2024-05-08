/****** Object:  StoredProcedure [dbo].[sp_ThinkAutomation_GetProposalReferences]    Script Date: 09/04/2024 15:02:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Dan Shaw
-- Create date: 22/06/22 (remade 04/10/23)
-- Description:	SP to get all Data required by TA to process AC Emails
-- =============================================
CREATE PROCEDURE [dbo].[sp_ThinkAutomation_GetProposalReferences]

@ACShortRef VARCHAR(100)

AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    SELECT TOP (1000) [MainApplicant.Reference] as ACREF
      ,[Enquiry.Reference] as ACPNREF,[Enquiry.ApplicationSourceReference] as ACSOURCEREF
  FROM [Staging].[AutoConvert_Production_AllFields]
  where [Enquiry.UniqueShortReference] = @ACShortRef



END
GO


