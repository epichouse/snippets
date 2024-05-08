USE [MaiaDSG]
GO

INSERT INTO [dbo].[tblDocEmailTemplates]
           ([Name]
           ,[Subject]
           ,[Content]
           ,[Enabled]
           ,[ContentIsHTML]
           ,[AttachFrontSheet]
           ,[ListPriority]
           ,[IsQSTDocPackTemplate]
           ,[TemplateTypeID]
           ,[WorkflowID])
     VALUES
(
			'PRESTIGE - United Trust Non Regulated Fixed Rate',
			'PRESTIGE - United Trust Non Regulated Fixed Rate',	
			'<p>Please find attached the documents for the above customer in relation to proposal no %proposalno%.</p>
			<p>These instructions relate to a Non Regulated agreement only.</p>
			<p><strong>Instructions</strong></p>
			<p>The document pack contains the finance agreement for signing. </p>
			<p>The customer must sign and date:</p>
			<ol>
			<li>The Finance Agreement (page 2)</li>
			<li>Direct Debit Mandate (page 2)</li>
			<li>The bottom of each page where indicated </li>
			</ol>
			<p>Once complete please return all pages of the document pack along with all proofs and additional documents stated on the attachment titled ‘Front Page’.</p>
			<p>Best regards,</p>
			<p>Dealer Services </p>
			<p>DSG Prestige</p>',

			'True',

			'True',

			'False',

			1,

			'False',

			1,

			'9cb5fb75-fc5b-47fc-888b-21502386b3a5')

GO


