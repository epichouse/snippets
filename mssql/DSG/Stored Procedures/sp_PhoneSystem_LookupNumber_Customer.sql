/****** Object:  StoredProcedure [dbo].[sp_PhoneSystem_LookupNumber_Customer]    Script Date: 09/04/2024 15:04:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Dan Shaw
-- Create date: 13/12/23
-- Description:	SP to get current team, url and division of a proposal based on the caller
-- =============================================
CREATE PROCEDURE [dbo].[sp_PhoneSystem_LookupNumber_Customer]

@CallerPhoneNumber VARCHAR(100)

AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON


    SELECT TOP (1)[Enquiry.Status],[Enquiry.SubStatus],[Enquiry.Reference],[CustomField.BusinessUnit]
    FROM [Staging].[AutoConvert_Production_AllFields]
	WHERE [MainApplicant.Mobile] = @CallerPhoneNumber or [MainApplicant.Landline] = @CallerPhoneNumber
	ORDER BY [Enquiry.CreatedDate] DESC

	SELECT COUNT (*)[Enquiry.Reference]
    FROM [Staging].[AutoConvert_Production_AllFields]
	WHERE [MainApplicant.Mobile] = @CallerPhoneNumber or [MainApplicant.Landline] = @CallerPhoneNumber
	
END
GO


