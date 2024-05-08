USE [ThinkAutomationV4_MetaData_Duplicate]
GO
--Dan Shaw 23/09/2022
--This script changes all TA Connection Strings Relating to MaiaDSG or Email2DB_PrePropActions to use SQLMI-DSGFS-PROD-01

--Copy of Payout Info In
UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>6E15F20066</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Ross Wild*#xD;#xA;Account Manager#xD;#xA;ross.wild@dsgfs.com#xD;#xA;Tel: 0844 880 9273 Fax: 0844 880 8293#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;---------- Forwarded message ----------#xD;#xA;From: Gavin Marsh &lt;gdm80@hotmail.co.uk&gt;#xD;#xA;Date: 8 April 2016 at 10:05#xD;#xA;Subject: New Doc 139#xD;#xA;To: Ross Wild &lt;ross.wild@dsgfs.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Sent from Samsung Mobile on O2#xD;#xA;</HelperMessage>
	<HelperSubject>PN482461</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>Copy of Payout Info In</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>6266279066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>54</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>08EB3C90C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F76A6940C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>809227B0C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>9FAF27B0C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>425827C0C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>42EE3550F7</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|moneybarn.com</Line><Line>Or|%msg_from%|?|hitachicapital.co.uk</Line><Line>Or|%msg_from%|?|bnpparibas-pf.co.uk</Line><Line>Or|%msg_from%|?|bmwfin.com</Line><Line>Or|%msg_from%|?|alphera.co.uk</Line><Line>And|%msg_from%|?|creation.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0314AA90C6</ID>
			<Comment>Global Exception to Processing Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>E742AB30C6</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>492BABC0C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>1140AC50C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>6A5327C0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>570727C0C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>BEDA27C0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>1B2135F0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B70B27F093</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>38FA281093</ID>
			<Comment>Prevent loop from &quot;noreply&quot; acknowledgements</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E1C2283093</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>FE8B284093</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3DC427D0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>464427D0C5</ID>
			<Enabled>-1</Enabled>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Hello %msg_fromname% ,#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Your below email &lt;strong&gt;was not processed&lt;/strong&gt; or added to Aquarius because a valid proposal number was not included. A valid existing proposal number must be specified somewhere in your email in order to be processed.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Please try again with a valid proposal number.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      If you still receive this error even though you have included a valid PN, please forward it to &lt;a href=&quot;mailto:support@dsgfs.com&quot;&gt;support@dsgfs.com&lt;/a&gt; and let us know.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      %msg_html%#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>[Unprocessed] Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>AEA427E0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>84B827E0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B6E635F0C5</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FA5A27F0C5</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9B7C27F0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>130F2800C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>DF553A20C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FEC53A30C5</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D1103A30C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9EEC3A40C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>26253A50C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>61613A50C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>E0473A60C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D52D3A70C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>570E3A80C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>B2433A90C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>59F83AA0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>1F9D3AB0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>D32F3AC0C5</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>06353AD0C5</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>2AA93AE0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>5B862910C5</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>3CA42920C5</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>56CE2930C5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>40D82950C5</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>696B1D4041</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Your email has been received, processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 minutes.&amp;nbsp;&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>2F4C2990C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Copy of Payout Info In'

--Copy of UW Process Emails
UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>6B9B2940CB</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>Mrs Susan Roughton#xD;#xA;Proposal Ref: 3667581#xD;#xA;87 Arail Street, Six Bells, Abertillery, Gwent, NP13 2NH#xD;#xA;168 Mount Pleasant Estate, NP13 2HZ#xD;#xA;#xD;#xA;This proposal is regretfully declined. In the strictest confidence for your private information, and not for disclosure to any other party, including the applicant or dealer, the reason is:#xD;#xA;#xD;#xA;#xD;#xA; - Adverse Credit#xD;#xA;#xD;#xA;#xD;#xA;The decision was based on information provided by Experian. The applicant should contact Experian, PO Box 7710, Nottingham, NG807WE Telephone Number: 0844 481 8000 or visit www.creditexpert.co.uk, if they require further details of the information provided by this credit reference agency. #xD;#xA;#xD;#xA;If you are able, supported by documentary proof, to demonstrate that none of the above reasons for decline apply or able to provide further addresses or information that may affect this decision, you should contact the New Business Department and ask them to review the decision.#xD;#xA;#xD;#xA;Regards #xD;#xA;Private &amp; Commercial Finance Group plc#xD;#xA;Consumer Finance Division#xD;#xA;Pinners Hall, 105 - 108 Old Broad Street, London, EC2N 1ER#xD;#xA;Telephone: 0207-2277506, Fax: 0207-9760243, Email: autodecision@pcf.bank#xD;#xA;31 Dec 2019 13:10#xD;#xA;#xD;#xA;Disclaimer#xD;#xA;#xD;#xA;PCF Bank Limited is authorised by the Prudential Regulation Authority and regulated by the Financial Conduct Authority and the Prudential Regulation Authority, FRN number 747017. The Bank is registered in England and Wales, registration number 02794633 and is wholly owned by PCF Group plc, a company registered in England and Wales, registration number 02863246 and listed on the Alternative Investment Market. Certain subsidiaries of the Bank are authorised and regulated by the Financial Conduct Authority for consumer credit activities. Registered offices are at Pinners Hall, 105-108 Old Broad Street, London EC2N 1ER.#xD;#xA;#xD;#xA;You can find out more about how we use your personal information by reading our recently updated privacy policy at www.pcf.bank/privacy#xD;#xA;#xD;#xA;This message is for the designated recipient only and may contain privileged, proprietary, or otherwise private and/or confidential information. The sender does not waive any related rights and obligations. If you are not the designated recipient any use by you of the email is prohibited. Please notify the sender immediately and destroy any copies and attachments.#xD;#xA;#xD;#xA;The contents of any attachment to this e-mail may contain software viruses or other defects which might affect your own computer system once received or opened. While PCF Bank Limited and its affiliates take reasonable precautions to minimise that risk, we cannot accept liability or responsibility for any damage or loss which may occur or be sustained as a result of a software virus or other defect. You are responsible for making virus checks before opening any attachment.#xD;#xA;#xD;#xA;</HelperMessage>
	<HelperSubject>Deferral Susan Roughton</HelperSubject>
	<HelperTo>customer.services@dsgfs.com</HelperTo>
	<TriggerName>Copy of UW Process Emails</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>6316380066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 11:58:21</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>232</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<MaxLength>100</MaxLength>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=Email2DB_PrePropActions</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>8FF219A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>2DD620A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>90612030CC</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_MotoNovo_ID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>MotoNovo_ID</InsertFieldName>
			<LookFor>201</LookFor>
			<Name>MotoNovo_ID</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_ThisMany>-1</Until_ThisMany>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilTheseWords>_</UntilTheseWords>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>FBA16050CC</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_1stStop_ID</EnvironmentVarName>
			<InsertFieldName>1stStop_ID</InsertFieldName>
			<LookFor>Ref: </LookFor>
			<Name>1stStop_ID</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>E86E1C60CC</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_PNC_ID</EnvironmentVarName>
			<InsertFieldName>PNC_ID</InsertFieldName>
			<LookFor>Proposal Ref: </LookFor>
			<Name>PNC_ID</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>D1641CF0CC</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_NR_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>NR_ProposalID</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>15181CC0CC</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_MM_ID</EnvironmentVarName>
			<InsertFieldName>MM_ID</InsertFieldName>
			<LookFor>Registration:</LookFor>
			<Name>MM_VRM</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_ThisMany>-1</Until_ThisMany>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilTheseWords>We</UntilTheseWords>
			<UntilThisManyChars>12</UntilThisManyChars>
			<DefaultValue>N/A</DefaultValue>
			<Validate>-1</Validate>
			<ValidateHigh>9</ValidateHigh>
		</Trigger.Field>
		<Trigger.Field>
			<ID>6CBC1B50D3</ID>
			<EnvironmentVarName>EM2_MM_CustomerName</EnvironmentVarName>
			<InsertFieldName>MM_CustomerName</InsertFieldName>
			<LookFor>Customer:</LookFor>
			<Name>MM_CustomerName</Name>
			<Until_TheseWords>-1</Until_TheseWords>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilTheseWords>Dated:</UntilTheseWords>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>328BD850D3</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_MM_Status</EnvironmentVarName>
			<InsertFieldName>MM_Status</InsertFieldName>
			<LookFor>Current Status:</LookFor>
			<Name>MM_Status</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_TheseWords>-1</Until_TheseWords>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilTheseWords>Vehicle:</UntilTheseWords>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>5F921F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E9681F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>60061F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DAA81F60C5</ID>
			<Comment>From: %msg_from%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B8301F40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_subject%|?|AUTO REPLY</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>67871F40C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>D9211F40C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>30631F50C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3CC82BD11E</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|oodlefinance.com</Line><Line>Or|%msg_from%|=|add.info@minifin.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>85932BD11E</ID>
			<Comment>Skip processing; email as unprocessed</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>43D725511E</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>1DB6216010</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>EF2E2BD11E</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B47F431010</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|bnpparibas-pf.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>5B01261010</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E01C375010</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>89C8431010</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>11E83AD156</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|?|underwriting.rdm@dsgfs.com</Line><Line>Or|%msg_to%|?|underwriting.external@connectedcarfinance.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>2A843AD156</ID>
			<Comment>UW Email from RDM</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1D6A413156</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E718413156</ID>
			<Comment>Valid PN</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>64CD2D8156</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>242</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>86FE3CF156</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %StatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E9B42C5127</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>85602CA127</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>42EA2CF127</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>5E3E2D3127</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>38292D8127</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>A2CE2DD127</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>AC002E1127</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>C0472E6127</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D0022EA127</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>ED272EF127</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>C2612F3127</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Additional Info&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Additional Info&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>BF822F8127</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>9CFC2FD127</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>FAB6F3F156</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>59B6205156</ID>
			<Enabled>-1</Enabled>
			<From>noreply@dsgfs.com</From>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>BE14413156</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>C112281156</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>9CB23AD156</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>DC54592156</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|?|underwriting@dsgfs.com</Line><Line>Or|%msg_to%|?|underwriting@connectedcarfinance.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7831592156</ID>
			<Comment>UW Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E2B81DC0CB</ID>
			<Comment>Email from Lender or Elsewhere?</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>616C2600CB</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|lsmf.co.uk</Line><Line>Or|%msg_from%|?|1ststop.co.uk</Line><Line>Or|%msg_from%|?|pcf.bank</Line><Line>Or|%msg_from%|?|ammf.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>E62530B0CE</ID>
			<LogicalType>5</LogicalType>
			<LabelName>Lender Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>C6982600CB</ID>
			<Comment>Lender Email/Decision Processing</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>F5F41B50CC</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>44</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>42802290D2</ID>
			<Enabled>-1</Enabled>
			<Name>ProposalFunderID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B47149A0CB</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|motonovofinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B51A49A0CB</ID>
			<Comment>MotoNovo</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>7788B000CD</ID>
			<Enabled>-1</Enabled>
			<Name>FunderID</Name>
			<Value>82</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>E7B11CA0CC</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 [Proposal ID]#xD;#xA;  FROM [MaiaDSG].[dbo].[vieDSGProposalActions]#xD;#xA;  WHERE [Funder ID] = %FunderID% AND ProposalFunderID= &apos;%MotoNovo_ID%&apos;</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal ID</Name><AssignTo>%ProposalID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>26FF2B70CC</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ProposalID%|len=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>69492B70CC</ID>
			<Comment>Valid PN found - processing</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>5A3BBEF0CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>6DBCC350CE</ID>
			<Comment>Attachments found - processing</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>35192750CC</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>8FB92780CC</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>793627B0CC</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>65CE27F0CC</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>806EE850CE</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E3883560D4</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>8A462620D4</ID>
			<Comment>Email has inline attachments, these can&apos;t be added to Aquarius yet</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>82C647A0D4</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[U/W Email with Inline Attachments] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3C123560D4</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>337B1DC0CE</ID>
			<Comment>Adding database action</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>048A3260CC</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>EE79D540CE</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>EF021E60CC</ID>
			<Comment>Unable to find proposal ID based on funder ID, skipping</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>3906E710CE</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed U/W Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E6672B70CC</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>40CD2990CC</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3B1749A0CB</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9D593BB0CC</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|CarFinance@1ststop.co.uk</Line><Line>And|%msg_subject%|?|Full Approval</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>09BB2530CC</ID>
			<Comment>1st Stop</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>317330A0CD</ID>
			<Enabled>-1</Enabled>
			<Name>FunderID</Name>
			<Value>100</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>F8ED3190CD</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 [Proposal ID]#xD;#xA;  FROM [MaiaDSG].[dbo].[vieDSGProposalActions]#xD;#xA;  WHERE [Funder ID] = %FunderID% AND ProposalFunderID= &apos;%1stStop_ID%&apos;</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal ID</Name><AssignTo>%ProposalID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BDAF3C20CC</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ProposalID%|len=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>4B773C50CC</ID>
			<Comment>Valid PN found - processing</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3A0C3190CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0B473250CE</ID>
			<Comment>Attachments found - processing</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>42D63C70CC</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>14223CA0CC</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>03302550CC</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>77033CF0CC</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>70EE2190EE</ID>
			<Enabled>-1</Enabled>
			<Name>Processed</Name>
			<Value>1</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6FE738B0CE</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>90192BB0EE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentinlinecount%|&gt;=|1</Line><Line>And|%Processed%|&lt;&gt;|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>1E7E1D70EE</ID>
			<Comment>Email has inline attachments, these can&apos;t be added to Aquarius yet</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>6B442D70EE</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[U/W Email with Inline Attachments] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>040C2E00EE</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>74C840F0CE</ID>
			<Comment>Adding database action</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>59183D20CC</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, 12, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>E0C43560CE</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>2D703D80CC</ID>
			<Comment>Unable to find proposal ID based on funder ID, skipping</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>869D35D0CE</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed U/W Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>66183D50CC</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>36CC3DA0CC</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>8FBC3DD0CC</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>7FA63250CC</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|pcf.bank</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>82703290CC</ID>
			<Comment>PNC</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>59527E5005</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed U/W Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>91558AA005</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>122025816C</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_body%|?|currently being reviewed by our underwriters</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>8B1A25816C</ID>
			<Comment>Skip processing</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>49734DE16C</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed U/W Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>983068016C</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A82525816C</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>D16FC890CD</ID>
			<Enabled>-1</Enabled>
			<Name>FunderID</Name>
			<Value>51</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>905122A16C</ID>
			<Enabled>-1</Enabled>
			<Name>SkipDuplicatePNCDecision</Name>
			<DBConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</DBConnectionString>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>2E70CD50CD</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 [Proposal ID]#xD;#xA;  FROM [MaiaDSG].[dbo].[vieDSGProposalActions]#xD;#xA;  WHERE [Funder ID] = %FunderID% AND ProposalFunderID = &apos;%PNC_ID%&apos;</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal ID</Name><AssignTo>%ProposalID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>7DC63310CC</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ProposalID%|len=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D4313350CC</ID>
			<Comment>Valid PN found - processing</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>E4F529516C</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 [Proposal Action ID]#xD;#xA;  FROM [MaiaDSG].[dbo].[vieDSGProposalActions]#xD;#xA;  WHERE ([Funder ID] = %FunderID% AND ProposalFunderID = &apos;%PNC_ID%&apos; AND [Proposal Status ID] in(5, 4, 17, 18,20) AND [Proposal Action UserID] = &apos;PTM&apos;)</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Action ID</Name><AssignTo>%SkipDuplicatePNCDecision%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1F00F1916C</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SkipDuplicatePNCDecision%|^|</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>18DEF1916C</ID>
			<Comment>PNC PTM decision already added</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>168739B16C</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed U/W Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>190E46416C</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>5F4DF1916C</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigg'
 WHERE Name = 'Copy of UW Process Emails'

--UW Process Emails
UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>A0861E50C6</TriggerID>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>Hello Guys#xD;#xA;#xD;#xA;                 Please note the only proof of address the customer has (as he has only been in country for less than 2 weeks) is the tenancy agreement I have already sent.#xD;#xA;#xD;#xA;I have already sent his passport.#xD;#xA;#xD;#xA;He does not require a work permit as he has a British Passport, therefore a British Citizen.#xD;#xA;#xD;#xA;Contact of employment has already been sent.#xD;#xA;#xD;#xA;Drivers License to follow.#xD;#xA;#xD;#xA;No Previous UK Addresses.#xD;#xA;#xD;#xA;These have been sent to Chelsea Ward.#xD;#xA;#xD;#xA;Thanks#xD;#xA;#xD;#xA;Mark#xD;#xA;#xD;#xA;#xD;#xA;Mark Pearson#xD;#xA;Senior Sales Executive#xD;#xA;#xD;#xA;Acorn Mitsubishi#xD;#xA;Hagley Road West#xD;#xA;Quinton#xD;#xA;Birmingham#xD;#xA;B62 9AH#xD;#xA;#xD;#xA;Tel: 0121 506 6050#xD;#xA;Fax: 0121 506 6055#xD;#xA;#xD;#xA;Email: mark.pearson@acornmitsubishi.co.uk&lt;mailto:mark.pearson@acornmitsubishi.co.uk&gt;   or visit our website:  www.acorn-mitsubishi.co.uk&lt;http://www.acorn-mitsubishi.co.uk/&gt; or take a look at the accessories range: www.acorn-mitsubishi.co.uk/accessories/&lt;http://www.acorn-mitsubishi.co.uk/accessories/&gt;#xD;#xA;#xD;#xA;[Q1 Offers (3)]#xD;#xA;#xD;#xA;From: DSG Customer Services [mailto:customer.services@dsgfs.com]#xD;#xA;Sent: 08 April 2016 09:34#xD;#xA;To: Ryan Hensman &lt;Ryan.Hensman@acornmitsubishi.co.uk&gt;; Mark Pearson &lt;mark.pearson@acornmitsubishi.co.uk&gt;#xD;#xA;Cc: chelsea.ward@dsgfs.com; shozib.akhtar@dsgfs.com; helen.royle@dsgfs.com#xD;#xA;Subject: [Additional Information]: Vowles, Martin - PN483311#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;[http://www.dsgfs.com/images/EmailHeaderLogo.png]&lt;https://quest.dsgfs.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Additional Information Required#xD;#xA;To#xD;#xA;#xD;#xA;Acorn Mitsubishi#xD;#xA;#xD;#xA;From#xD;#xA;#xD;#xA;DSG Financial Services Ltd#xD;#xA;#xD;#xA;Customer#xD;#xA;#xD;#xA;Martin Vowles#xD;#xA;#xD;#xA;Thank you for your proposal. In order to further progress the application we need to request some additional information. If you would like us to call the customer and get the information please let us know and we will gladly make contact.#xD;#xA;#xD;#xA;Information Required:#xD;#xA;- Please provide the following:#xD;#xA;#xD;#xA;#xD;#xA;* Proof of address dated within the last 3 months in the form of a bank statement or utility bill in lieu of Voters Roll trace#xD;#xA;* Passport#xD;#xA;* Visa / work permit for the UK (if non EU passport holder). PLEASE NOTE THAT THE TERM OF THE AGREEMENT MUST NOT EXCEED THE VALIDITY PERIOD OF THE WORK PERMIT / VISA.#xD;#xA;* Proof of employment in the form of a copy of their contract of employment (*** This must include details of the customers remuneration).#xD;#xA;*Written consent from the customer to contact their employer (email or letter)#xD;#xA;* Driving licence - please note if the customer holds a non EU driving licence and has resided in the UK for over 12 months, we are unable to proceed until they obtain their UK driving licence#xD;#xA;* Details of any previous UK addresses (if there are any)#xD;#xA;Please send us the requested information as soon as possible. Thank you for your continued support.#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;DSG Financial Services Ltd is authorised and regulated by the Financial Conduct Authority#xD;#xA;#xD;#xA;Tel: 0844 880 0660 | Web: www.dsgfs.com&lt;http://www.dsgfs.com&gt;#xD;#xA;DSG Financial Services Ltd, Unity House, Hercules Park, Bird Hall Lane, Stockport, SK3 0UX. Registered in England 02313903#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;</HelperMessage>
	<HelperSubject>RE: [Additional Information]: Vowles, Martin - PN483311</HelperSubject>
	<HelperTo>customer.services@dsgfs.com</HelperTo>
	<TriggerName>UW Process Emails</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>6316380066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 11:58:21</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>232</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<MaxLength>100</MaxLength>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=Email2DB_PrePropActions</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>8FF219A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>2DD620A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>5F921F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E9681F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>60061F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DAA81F60C5</ID>
			<Comment>From: %msg_from%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B8301F40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_subject%|?|AUTO REPLY</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>67871F40C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>D9211F40C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>30631F50C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>42EB1F50C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>FDF128F0C5</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed U/W Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw.internal@dsgfs.com</EmailForwardTo>
			<FromAddress>%msg_from%</FromAddress>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>BD0F1F50C5</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Hello %msg_fromname% ,#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Your below email &lt;strong&gt;was not processed&lt;/strong&gt; or added to Aquarius because a valid proposal number was not included. A valid existing proposal number must be specified somewhere in your email in order to be processed.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Please try again with a valid proposal number.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      If you still receive this error even though you have included a valid PN, please forward it to &lt;a href=&quot;mailto:support@dsgfs.com&quot;&gt;support@dsgfs.com&lt;/a&gt; and let us know.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      %msg_html%#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>[Unprocessed] Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9C453E00CA</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|payouts@dsgfs.com</Line><Line>Or|%msg_from%|=|support@dsgfs.com</Line><Line>Or|%msg_from%|=|add-info@alphera.co.uk</Line><Line>Or|%msg_from%|=|contactus@ratesetter.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>40F23E10CA</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>43B93E30CA</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>F4701BE041</ID>
			<Enabled>-1</Enabled>
			<From>underwriting@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Thank you for contacting us. We are in receipt of your&amp;nbsp;email.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      We advise you to always include the proposal number in your correspondence with us as this automatically adds it to our internal proposal management system. Due to the proposal number missing in your email, it will now be manually reviewed by the team which is a slower turnaround.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      &lt;strong&gt;If you simply include the six-digit number (it begins with PN) in the subject&amp;nbsp;of the email, we will be able to help you more efficiently in future.&lt;/strong&gt;#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Kind Regards#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      DSG Customer Service#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>CB8521D0C7</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5A691F50C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>1A4A1F60C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>2F8EDAF0C5</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9C5C1F70C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A9E01F70C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>FA546CA0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>55266CF0C5</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F0C06D50C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>5FAD6DB0C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>76E66E30C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>42B06E90C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>58186F10C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D4A16F90C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>9B687010C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>5330C2E0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>36577100C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>7DAE71A0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>20707230C5</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>C1A372C0C5</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>0EA57370C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>6BA620B0C5</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7FE420C0C5</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>F97E20D0C5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>994FDC70C5</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>E7CD2100C5</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Your email has been received, processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 minutes.&amp;nbsp;&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_replyto%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>86FA1E60CA</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|payouts@dsgfs.com</Line><Line>Or|%msg_from%|=|support@dsgfs.com</Line><Line>Or|%msg_from%|=|add-info@alphera.co.uk</Line><Line>Or|%msg_from%|=|contactus@ratesetter.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>9FB01E70CA</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>4EB51E90CA</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>945D1FF041</ID>
			<Enabled>-1</Enabled>
			<From>underwriting@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Thank you for contacting us.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Please accept this email as confirmation that we are in receipt of your query/supporting information. This will be reviewed as soon as possible.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Please note that supporting information received after 17:15 or on a weekend may not be reviewed until the next working day.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Kind Regards#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      DSG Customer Service#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>301F1E60CA</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>85CD2110C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'UW Process Emails'

--CCF Inbound Email Processing
UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>FB0F1FA0E9</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>Please can we send docs ASAP. Customer in showroom xx#xD;#xA;#xD;#xA;-- #xD;#xA;PN544444#xD;#xA;&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Chelsea Ward*#xD;#xA;Business Manager#xD;#xA;chelsea.ward@dsgfs.com#xD;#xA;Tel: 0844 880 6787 Fax: 0844 880 8293#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>urgent docs - PN554025 | Primary Applicant: Whitfield, Kimberly, TRUSTFORD</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>CCF Inbound Email Processing</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>7B36FDF0E9</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>169</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F98D28E04E</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>Payouts_CheckForActionsToStopProcessing</InsertFieldName>
			<LookFor>Payouts_CheckForActionsToStopProcessing</LookFor>
			<Name>Payouts_CheckForActionsToStopProcessing</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT [dbo].[Payouts_CheckForActionsToStopProcessing] (%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>C1B6214046</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>3C532920C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>CA233D0048</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>40C13D0048</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>98EB3D0048</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F3C71D20CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|moneybarn.com</Line><Line>Or|%msg_from%|=|payments.cf@hitachicapital.co.uk</Line><Line>Or|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FDB93690C6</ID>
			<Comment>Global Exception to Processing Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>925799D0C6</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal@connectedcarfinance.co.uk</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4A44FD00C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B5F73690C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1A0C2870C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F4A82880C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5ADF28A0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>7B3728B0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E45D3D0048</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>376F31C142</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|s?|DSG Financial Services Ltd Confirmation - Send Mail as</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>026727C142</ID>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ccf.internal@connectedcarfinance.co.uk</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>063731C142</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F5741B40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>8BC99000C5</ID>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ccf.internal@connectedcarfinance.co.uk</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>D0D62D6082</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;     #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;     #xD;#xA;&lt;title&gt;&lt;/title&gt;   #xD;#xA;&lt;/head&gt;   #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;This email is from %msg_from%     &lt;/p&gt;#xD;#xA;&lt;p&gt;      %msg_html%&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>ccf.internal@connectedcarfinance.co.uk</SendTo>
			<Subject>[Unprocessed]: FW: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B4DEF570C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>82A71C90C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B9DC3D0048</ID>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>404EF970A5</ID>
			<LogicalType>5</LogicalType>
			<LabelName>RDM Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>6882FA70A5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|?|sales.rdm</Line><Line>Or|%msg_to%|?|sales.external</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0B19FB50A5</ID>
			<Comment>Sales Email from RDM</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>8738FC60A5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E3BDFD60A5</ID>
			<Comment>Valid PN</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>84312E40A5</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>246</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>D61FFF70A5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>FBF619A0A5</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>C9B919B0A5</ID>
			<Enabled>-1</Enabled>
			<From>noreply@dsgfs.com</From>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>D87819D0A5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>FCBE19F0A5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>01321A00A5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E10B1F40B5</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1D4E1E80C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>05BB1E80C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>73843D3048</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>238A3D3048</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B03E2F10C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A68F2900C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>339B53A0C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>1E18F410C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>2F863D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>495D3D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>80643D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>5F1C3D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>3FE63D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D67D3D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>279A3D7048</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;CCF Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;CCF Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>C1AD38208A</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>F6E738708A</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.RelatedItems#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;CCF Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;CCF Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6F5538C08A</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>052C3D8048</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E87F3DA048</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>A8331E208A</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7C472C208A</ID>
			<Comment>Lookup current prop status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>D33258708A</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID] FROM tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>616E2A708A</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|3</Line><Line>Or|%StatusID%|=|5</Line><Line>Or|%StatusID%|=|6</Line><Line>Or|%StatusID%|=|38</Line><Line>Or|%StatusID%|=|50</Line><Line>Or|%StatusID%|=|100</Line><Line>Or|%StatusID%|=|1</Line><Line>Or|%StatusID%|=|4</Line><Line>Or|%StatusID%|=|7</Line><Line>Or|%StatusID%|=|14</Line><Line>Or|%StatusID%|=|16</Line><Line>Or|%StatusID%|=|18</Line><Line>Or|%StatusID%|=|21</Line><Line>Or|%StatusID%|=|22</Line><Line>Or|%StatusID%|=|37</Line><Line>Or|%StatusID%|=|39</Line><Line>Or|%StatusID%|=|51</Line><Line>Or|%StatusID%|=|52</Line><Line>Or|%StatusID%|=|122</Line><Line>Or|%StatusID%|=|123</Line><Line>Or|%StatusID%|=|128</Line><Line>Or|%StatusID%|=|131</Line><Line>Or|%StatusID%|=|133</Line><Line>Or|%StatusID%|=|135</Line><Line>Or|%StatusID%|=|160</Line><Line>Or|%StatusID%|=|193</Line><Line>Or|%StatusID%|=|207</Line><Line>Or|%StatusID%|=|208</Line><Line>Or|%StatusID%|=|209</Line><Line>Or|%StatusID%|=|210</Line><Line>Or|%StatusID%|=|220</Line><Line>Or|%StatusID%|=|221</Line><Line>Or|%StatusID%|=|222</Line><Line>Or|%StatusID%|=|223</Line><Line>Or|%StatusID%|=|224</Line><Line>Or|%StatusID%|=|225</Line><Line>Or|%StatusID%|=|232</Line><Line>Or|%StatusID%|=|237</Line><Line>Or|%StatusID%|=|247</Line><Line>Or|%StatusID%|=|268</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>083B2A708A</ID>
			<Comment>U/W</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>93B4E9308A</ID>
			<Enabled>-1</Enabled>
			<Name>ActionID</Name>
			<Value>51</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>50983DD048</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %ActionID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4C19F5508A</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>CFD72A708A</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>190B1E508A</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|9</Line><Line>Or|%StatusID%|=|49</Line><Line>Or|%StatusID%|=|65</Line><Line>Or|%StatusID%|=|109</Line><Line>Or|%StatusID%|=|130</Line><Line>Or|%StatusID%|=|179</Line><Line>Or|%StatusID%|=|170</Line><Line>Or|%StatusID%|=|171</Line><Line>Or|%StatusID%|=|8</Line><Line>Or|%StatusID%|=|20</Line><Line>Or|%StatusID%|=|23</Line><Line>Or|%StatusID%|=|67</Line><Line>Or|%StatusID%|=|76</Line><Line>Or|%StatusID%|=|88</Line><Line>Or|%StatusID%|=|90</Line><Line>Or|%StatusID%|=|91</Line><Line>Or|%StatusID%|=|95</Line><Line>Or|%StatusID%|=|96</Line><Line>Or|%StatusID%|=|106</Line><Line>Or|%StatusID%|=|116</Line><Line>Or|%StatusID%|=|146</Line><Line>Or|%StatusID%|=|157</Line><Line>Or|%StatusID%|=|172</Line><Line>Or|%StatusID%|=|180</Line><Line>Or|%StatusID%|=|181</Line><Line>Or|%StatusID%|=|182</Line><Line>Or|%StatusID%|=|191</Line><Line>Or|%StatusID%|=|261</Line><Line>Or|%StatusID%|=|262</Line><Line>Or|%StatusID%|=|265</Line><Line>Or|%StatusID%|=|285</Line><Line>Or|%StatusID%|=|286</Line><Line>Or|%StatusID%|=|189</Line><Line>Or|%StatusID%|=|72</Line><Line>Or|%StatusID%|=|176</Line><Line>Or|%StatusID%|=|177</Line><Line>Or|%StatusID%|=|178</Line><Line>Or|%StatusID%|=|89</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>938A1E608A</ID>
			<Comment>Sales</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>AC041E608A</ID>
			<Enabled>-1</Enabled>
			<Name>ActionID</Name>
			<Value>169</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>E4E31E708A</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %ActionID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>C23E1E708A</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>006D1E808A</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>A92BF2008A</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|31</Line><Line>Or|%StatusID%|=|54</Line><Line>Or|%StatusID%|=|59</Line><Line>Or|%StatusID%|=|13</Line><Line>Or|%StatusID%|=|30</Line><Line>Or|%StatusID%|=|11</Line><Line>Or|%StatusID%|=|24</Line><Line>Or|%StatusID%|=|30</Line><Line>Or|%StatusID%|=|40</Line><Line>Or|%StatusID%|=|101</Line><Line>Or|%StatusID%|=|102</Line><Line>Or|%StatusID%|=|103</Line><Line>Or|%StatusID%|=|118</Line><Line>Or|%StatusID%|=|186</Line><Line>Or|%StatusID%|=|187</Line><Line>Or|%StatusID%|=|235</Line><Line>Or|%StatusID%|=|236</Line><Line>Or|%StatusID%|=|240</Line><Line>Or|%StatusID%|=|241</Line><Line>Or|%StatusID%|=|293</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9F1536808A</ID>
			<Comment>Payouts</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>13F436908A</ID>
			<Enabled>-1</Enabled>
			<Name>ActionID</Name>
			<Value>54</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>6D2E36908A</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %ActionID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E7F836A08A</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>FF9336B08A</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>5E48B2308A</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;     #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;     #xD;#xA;&lt;title&gt;&lt;/title&gt;   #xD;#xA;&lt;/head&gt;   #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;This email is from %msg_from%     &lt;/p&gt;#xD;#xA;&lt;p&gt;      %msg_html%&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>ccf.internal@connectedcarfinance.co.uk</SendTo>
			<Subject>[Unprocessed]: FW: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>06A53DF048</ID>
			<From>payouts@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Thank you for your email.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      This is confirmation our Prestige team have recieved your message and it will be processed shortly.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_replyto%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>08771E80C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'CCF Inbound Email Processing'

--Digital Sales Processing
UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>6C263B107D</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Ross Wild*#xD;#xA;Account Manager#xD;#xA;ross.wild@dsgfs.com#xD;#xA;Tel: 0844 880 9273 Fax: 0844 880 8293#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;---------- Forwarded message ----------#xD;#xA;From: Gavin Marsh &lt;gdm80@hotmail.co.uk&gt;#xD;#xA;Date: 8 April 2016 at 10:05#xD;#xA;Subject: New Doc 139#xD;#xA;To: Ross Wild &lt;ross.wild@dsgfs.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Sent from Samsung Mobile on O2#xD;#xA;</HelperMessage>
	<HelperSubject>PN482461</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>Digital Sales Processing</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<ThenProcessID>79A820D072</ThenProcessID>
	<SaveToFolderID>6266279066</SaveToFolderID>
	<LastEditedByUserID>9B231B50BA</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>169</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>08EB3C90C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F76A6940C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>809227B0C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>9FAF27B0C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>425827C0C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>6A5327C0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line><Line>Or|%msg_to%|=|everyone@dsgfs.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>570727C0C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>BEDA27C0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>1B2135F0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>4B112B2142</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|s?|DSG Financial Services Ltd Confirmation - Send Mail as</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>07BB1AE142</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Digital Sales Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B2F92B2142</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3DC427D0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DF3A41A07D</ID>
			<Comment>No valid PN, forwarding</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>72EBCE007D</ID>
			<EmailForwardSubject>[Unprocessed Digital Sales Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>F6F0247083</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;   #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;   #xD;#xA;&lt;title&gt;&lt;/title&gt; #xD;#xA;&lt;/head&gt; #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;This email is from: %msg_from%&lt;/p&gt;#xD;#xA;&lt;p&gt;%msg_html% &lt;br /&gt;%msg_attachments%&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>ds.internal@dsgfs.com</SendTo>
			<Subject>[Unprocessed Digital Sales Email] FW: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>CD2888A0D1</ID>
			<Enabled>-1</Enabled>
			<Body>Hello,#xD;#xA;#xD;#xA;Unfortunately your email was not processed because a valid proposal number was not included in the subject. Please resend your email with your proposal number in the subject line.#xD;#xA;#xD;#xA;You can find your proposal number in any text message or email subject from us. If you can&apos;t find it, don&apos;t worry you can still contact us via live chat at https://flowcarfinance.co.uk/dashboard or by phone on 01614063994.#xD;#xA;#xD;#xA;#xD;#xA;Many Thanks, #xD;#xA;#xD;#xA;The Flow Team</Body>
			<From>Team@flowcarfinance.co.uk</From>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Flow Car Finance, Email Not Processed: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>AEA427E0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>84B827E0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>FBE31FC084</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@codeweavers.net</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>C8E7212084</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Digital Sales Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>34CD388084</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3E8D1FC084</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B6E635F0C5</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FA5A27F0C5</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9B7C27F0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>130F2800C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>DF553A20C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FEC53A30C5</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D1103A30C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9EEC3A40C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>26253A50C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>61613A50C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>E0473A60C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D52D3A70C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>570E3A80C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>B2433A90C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>59F83AA0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>1F9D3AB0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>D32F3AC0C5</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>0C3D2D9083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>05FC29A083</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.RelatedItems#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A85C369083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>2AA93AE0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>5B862910C5</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>3CA42920C5</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>56CE2930C5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>40D82950C5</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>696B1D4041</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Your email has been received, processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 minutes.&amp;nbsp;&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>2F4C2990C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Digital Sales Processing'

 --LEM Processing
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>79A820D072</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>noreply@lemverify.com</FromAddressLIKE>
	<HelperMessage>&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Ross Wild*#xD;#xA;Account Manager#xD;#xA;ross.wild@dsgfs.com#xD;#xA;Tel: 0844 880 9273 Fax: 0844 880 8293#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;---------- Forwarded message ----------#xD;#xA;From: Gavin Marsh &lt;gdm80@hotmail.co.uk&gt;#xD;#xA;Date: 8 April 2016 at 10:05#xD;#xA;Subject: New Doc 139#xD;#xA;To: Ross Wild &lt;ross.wild@dsgfs.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Sent from Samsung Mobile on O2#xD;#xA;</HelperMessage>
	<HelperSubject>PN482461</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>LEM Processing</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>6266279066</SaveToFolderID>
	<LastEditedByUserID>9B231B50BA</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>169</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>08EB3C90C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F76A6940C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>809227B0C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>9FAF27B0C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>425827C0C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>6A5327C0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>570727C0C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>BEDA27C0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>1B2135F0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>4B112B2142</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|s?|DSG Financial Services Ltd Confirmation - Send Mail as</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>07BB1AE142</ID>
			<EmailForwardSubject>[Unprocessed Digital Sales Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B2F92B2142</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3DC427D0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DF3A41A07D</ID>
			<Comment>No valid PN, forwarding</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>72EBCE007D</ID>
			<EmailForwardSubject>[Unprocessed Digital Sales Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>F6F0247083</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;   #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;   #xD;#xA;&lt;title&gt;&lt;/title&gt; #xD;#xA;&lt;/head&gt; #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;This email is from: %msg_from%&lt;/p&gt;#xD;#xA;&lt;p&gt;%msg_html% &lt;br /&gt;%msg_attachments%&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>ds.internal@dsgfs.com</SendTo>
			<Subject>[Unprocessed Digital Sales Email] FW: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>AEA427E0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>84B827E0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>FBE31FC084</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@codeweavers.net</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>C8E7212084</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Digital Sales Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>34CD388084</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3E8D1FC084</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>AAFE24F072</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@lemverify.com</Line><Line>And|%msg_subject%|?|Verification Result</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DAA424F072</ID>
			<Comment>LEM Verify Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>C3B722F072</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>4D3B250072</ID>
			<Comment>PN Valid</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F56D250072</ID>
			<Comment>Processing Attachment</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>33DE251072</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>3491251072</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>BA73251072</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>0B90252072</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>68BE22F072</ID>
			<Comment>Getting prop info</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>92F1253072</ID>
			<Enabled>-1</Enabled>
			<Name>SalesProcessID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>B63B254072</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID], [InternalProcessID] from tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field><Field><Name>InternalProcessID</Name><AssignTo>%SalesProcessID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A47A254072</ID>
			<Comment>Prop Status ID: %StatusID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>48A8255072</ID>
			<Comment>Sales Process ID: %SalesProcessID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>D5A4255072</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|13</Line><Line>Or|%StatusID%|=|30</Line><Line>Or|%StatusID%|=|31</Line><Line>Or|%StatusID%|=|54</Line><Line>Or|%StatusID%|=|240</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>31B1256072</ID>
			<Comment>Payouts</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>1D8B22F072</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>54</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>1053257072</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>9C0F258072</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>74DB259072</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>0C4B266072</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|4</Line><Line>Or|%SalesProcessID%|=|5</Line><Line>Or|%SalesProcessID%|=|7</Line><Line>Or|%SalesProcessID%|=|9</Line><Line>Or|%SalesProcessID%|=|10</Line><Line>Or|%SalesProcessID%|=|12</Line><Line>Or|%SalesProcessID%|=|18</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>CFAF267072</ID>
			<Comment>Digital</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3C45268072</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B286231072</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>C7C726A072</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>283</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>8A4626B072</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>55BD26C072</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>682B26D072</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B8DA26E072</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>C6CB26F072</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>284</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>DC5C270072</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>C886271072</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>91C8272072</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>AD48273072</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>8F20286072</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>77541C8072</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6B162BD072</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>736E2BF072</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>CC522C1072</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>46DF2C6072</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>D0042CA072</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>0F582D1072</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'LEM Processing'

 --Docs In
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>C1CA7D2066</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>---------- Forwarded message ----------#xD;#xA;From: BAXTER Mark &lt;mark.baxter@renault.co.uk&gt;#xD;#xA;Date: 8 April 2016 at 10:17#xD;#xA;Subject: Docs - Mahmood#xD;#xA;To: &quot;payouts@dsgfs.com&quot; &lt;payouts@dsgfs.com&gt;#xD;#xA;Cc: Chelsea Ward &lt;chelsea.ward@dsgfs.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;Please process for payment#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;*Mark  Baxter*#xD;#xA;Business Manager#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;*AUTOWORLD*#xD;#xA;Keyway Retail Park, Armstrong Way#xD;#xA;Willenhall, WV13 2QU#xD;#xA;Tel. : +44 (0)1902 439 239#xD;#xA;www.autoworld-uk.co.uk#xD;#xA;#xD;#xA;-------------------------------------------------------------------------------------------------------------------#xD;#xA;#xD;#xA;Renault Retail Group UK Ltd. - Head Office, Concord Road, Western Avenue,#xD;#xA;Acton, London, W3 0RZ.#xD;#xA;#xD;#xA;The Company is registered in England: Registration No. 2304689.#xD;#xA;#xD;#xA;Renault Retail Group UK Ltd. is authorised and regulated by the Financial#xD;#xA;Conduct Authority.#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;-- Disclaimer ------------------------------------#xD;#xA;Ce message ainsi que les eventuelles pieces jointes constituent une#xD;#xA;correspondance privee et confidentielle a l&apos;attention exclusive du#xD;#xA;destinataire designe ci-dessus. Si vous n&apos;etes pas le destinataire du#xD;#xA;present message ou une personne susceptible de pouvoir le lui delivrer, il#xD;#xA;vous est signifie que toute divulgation, distribution ou copie de cette#xD;#xA;transmission est strictement interdite. Si vous avez recu ce message par#xD;#xA;erreur, nous vous remercions d&apos;en informer l&apos;expediteur par telephone ou de#xD;#xA;lui retourner le present message, puis d&apos;effacer immediatement ce message#xD;#xA;de votre systeme.#xD;#xA;#xD;#xA;*** This e-mail and any attachments is a confidential correspondence#xD;#xA;intended only for use of the individual or entity named above. If you are#xD;#xA;not the intended recipient or the agent responsible for delivering the#xD;#xA;message to the intended recipient, you are hereby notified that any#xD;#xA;disclosure, distribution or copying of this communication is strictly#xD;#xA;prohibited. If you have received this communication in error, please notify#xD;#xA;the sender by phone or by replying this message, and then delete this#xD;#xA;message from your system.#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;-- #xD;#xA;#xD;#xA;&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Chloe Ireson*#xD;#xA;Payouts Coordinator#xD;#xA;chloe.ireson@dsgfs.com#xD;#xA;Tel: 0844 880 0660 Fax:#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>PN483174</HelperSubject>
	<HelperTo>docsin@dsgfs.com</HelperTo>
	<TriggerName>Docs In</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>E9475E8066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:07</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>31</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>D837C540C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>77A833B0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>A5DE3180C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>76593180C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>48E63180C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>FD571B60F7</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|moneybarn.com</Line><Line>Or|%msg_from%|?|hitachicapital.co.uk</Line><Line>Or|%msg_from%|?|bnpparibas-pf.co.uk</Line><Line>Or|%msg_from%|?|bmwfin.com</Line><Line>Or|%msg_from%|?|alphera.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>5AB33E00C6</ID>
			<Comment>Global Exception to Processing Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>8CA73E10C6</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B5CC3E20C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E42B3E30C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>7D4E3180C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A0453180C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>3B8D3190C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>29E73190C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B030458093</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E7F646C093</ID>
			<Comment>Prevent loop from &quot;noreply&quot; acknowledgements</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>043F487093</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>798A4A0093</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B69F27B034</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|no-reply@magnitudefinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>C23927B034</ID>
			<Comment>Mag Email - Driving License</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>DE3B349034</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0%F6%8C%D3%88%B2%80%99%93H%D5i%0Bt%08%7B%86%C7%89d%AF%F3%A2%BB%E3%9DG%E0%3D%17%2A%26%AC%FE%3DN%3Fb%3DN%FF%CAS%F7%0B%93%CF%BD5%12%FDw%13%F0%21%83%B1%E8%81%E0%E5%BE%40%AB%B5%270%D6%F7%DB%CE%E8%D0%27Z%04%08%C5%92%A2%7Ck%F5%0A%B1Q%B6%89-%90%B2w%DDR%E7Z%09%19%E2%7B7%3C%7F%93%F73%B4%20%89%21%21%B5%3D%28q%E42%5B%87%3B%FB%E8~%CC%07%8E%7B%CEK</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 PNID FROM tblProposals WHERE ID = %msg_subject%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>PNID</Name><AssignTo>%ProposalID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FAED753034</ID>
			<Comment>PN: %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>994626F034</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLSelectStatement>SELECT DBO.CheckForValidPN(%ProposalID%)</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>0</Name><AssignTo>%ValidPN%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>8418321034</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F434321034</ID>
			<Comment>PN Valid - process attachment</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E04A1A6034</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>GoTo</Class>
			<ID>90873E2034</ID>
			<LogicalType>6</LogicalType>
			<LabelName>Attachments</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>5FE2321034</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>276627B034</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>DB0E3190C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>7DDAFFE0C5</ID>
			<Enabled>-1</Enabled>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Hello %msg_fromname% ,#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Your below email &lt;strong&gt;was not processed&lt;/strong&gt; or added to Aquarius because a valid proposal number was not included in the subject. A valid existing proposal number must be specified in the subject in order to be processed.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Please try again with a valid proposal number.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      If you still receive this error even though you have included a valid PN, please forward it to &lt;a href=&quot;mailto:support@dsgfs.com&quot;&gt;support@dsgfs.com&lt;/a&gt; and let us know.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      %msg_html%#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>[Unprocessed] Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>31193190C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3B3E31A0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>593131A0C5</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>C3B431A0C5</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>024A31B0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7C2C31B0C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>C06FE8A0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>D87039E034</ID>
			<LogicalType>5</LogicalType>
			<LabelName>Attachments</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0492E8F0C5</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DD5EE950C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0FBDE9B0C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>F166EA10C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>01FFEA90C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>4797EB10C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>8BB1EB80C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>F857EBF0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>B3E3EC70C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>B60AECF0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>73F2ED60C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>AE66EE00C5</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>B9C6EEB0C5</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>227747C087</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|=|attachdocs@dsgfs.com</Line><Line>And|%msg_from%|&lt;&gt;|no-reply@magnitudefinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>B44AC25087</ID>
			<Enabled>-1</Enabled>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Your request to attach document(s) to PN%ProposalID% was successful and will appear in Aquarius in the next 5 minutes.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Thank you&lt;br&gt;#xD;#xA;      DSG IT#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>D28047C087</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E4BBEF40C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>3A8D3390C5</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>7CBE2F3087</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|&lt;&gt;|attachdocs@dsgfs.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>97AA7230C5</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>2C6333C0C5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>415E33D0C5</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6A442F3087</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>6F921FF041</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Your email has been received, processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 minutes.&amp;nbsp;&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>522A3400C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Docs In'

 --Prestige Inbound Email Processing
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>2F2B2350C6</TriggerID>
	<FromAddressLIKE>brad.wyatt@dsgfs.com</FromAddressLIKE>
	<HelperMessage>Please can we send docs ASAP. Customer in showroom xx#xD;#xA;#xD;#xA;-- #xD;#xA;PN544444#xD;#xA;&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Chelsea Ward*#xD;#xA;Business Manager#xD;#xA;chelsea.ward@dsgfs.com#xD;#xA;Tel: 0844 880 6787 Fax: 0844 880 8293#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>urgent docs - PN554025 | Primary Applicant: Whitfield, Kimberly, TRUSTFORD</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>Prestige Inbound Email Processing</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>A04B209067</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>183</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F98D28E04E</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>Payouts_CheckForActionsToStopProcessing</InsertFieldName>
			<LookFor>Payouts_CheckForActionsToStopProcessing</LookFor>
			<Name>Payouts_CheckForActionsToStopProcessing</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT [dbo].[Payouts_CheckForActionsToStopProcessing] (%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>C1B6214046</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>3C532920C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>CA233D0048</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>40C13D0048</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>98EB3D0048</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F3C71D20CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|moneybarn.com</Line><Line>Or|%msg_from%|=|payments.cf@hitachicapital.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FDB93690C6</ID>
			<Comment>Global Exception to Processing Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>925799D0C6</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internalprestige@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4A44FD00C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B5F73690C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1A0C2870C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F4A82880C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5ADF28A0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>7B3728B0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F5741B40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>8BC99000C5</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internalprestige@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>301336D076</ID>
			<Enabled>-1</Enabled>
			<From>prestige@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: rgb(0, 0, 0); font-family: HelveticaNeue,sans-serif;&quot;&gt;#xD;#xA;    &lt;table border=&quot;0&quot;&gt;#xD;#xA;      &lt;tbody&gt;#xD;#xA;        &lt;tr&gt;#xD;#xA;          &lt;td align=&quot;center&quot;&gt;#xD;#xA;            &lt;p style=&quot;font-size: 12px;&quot;&gt;#xD;#xA;              &lt;strong&gt;Email not displaying properly?&lt;/strong&gt; If you&apos;re using Outlook, add our domain to your Safe Senders list.&lt;br&gt;#xD;#xA;              &lt;a href=&quot;https://support.office.com/en-us/article/block-or-unblock-automatic-picture-downloads-in-email-messages-15e08854-6808-49b1-9a0a-50b81f2d617a&quot; target=&quot;_blank&quot;&gt;Click here for instructions&lt;/a&gt;#xD;#xA;            &lt;/p&gt;#xD;#xA;            &lt;table class=&quot;Cental&quot; style=&quot;width: 100%; color: rgb(0, 0, 0); max-width: 650px; background-color: rgb(255, 255, 255);&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot;&gt;#xD;#xA;              &lt;tbody&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;text-align: left;&quot;&gt;#xD;#xA;                    &lt;a style=&quot;padding-left: 20px;&quot; href=&quot;https://www.dsgfs.com&quot; target=&quot;_blank&quot;&gt;&lt;img width=&quot;220&quot; height=&quot;60&quot; align=&quot;top&quot; id=&quot;customHeaderImage&quot; alt=&quot;DSG Logo&quot; src=&quot;https://www.dsgfs.com/images/EmailHeaderLogo3.png&quot; border=&quot;0&quot; label=&quot;Header Image&quot;&gt;&lt;/a&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;padding: 20px;&quot;&gt;#xD;#xA;                    &lt;h1&gt;#xD;#xA;                      Proposal Update#xD;#xA;                    &lt;/h1&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Thanks for coming back to us, this is an automated response to let you know we&apos;ve received your email.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      We will process your request as soon as possible and be in touch shortly.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Regards#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      DSG Team#xD;#xA;                    &lt;/p&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td&gt;#xD;#xA;                    &lt;table class=&quot;Cental footer&quot; style=&quot;color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                      &lt;tbody&gt;#xD;#xA;                        &lt;tr&gt;#xD;#xA;                          &lt;td&gt;#xD;#xA;                            &lt;div style=&quot;padding: 20px; color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Financial Services Ltd is authorised and regulated by the Financial Conduct Authority.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                Tel: 0844 815 8888 | Web: &lt;a style=&quot;color: rgb(255, 255, 255); font-weight: bold;&quot; href=&quot;www.dsgfs.com&quot;&gt;www.dsgfs.com&lt;/a&gt;#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Prestige, 55-60 Pegholme, Wharfebank Mills, Ilkley Road, Otley, Yorkshire, LS21 3JP. Registered in England 02313903.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                            &lt;/div&gt;#xD;#xA;                          &lt;/td&gt;#xD;#xA;                        &lt;/tr&gt;#xD;#xA;                      &lt;/tbody&gt;#xD;#xA;                    &lt;/table&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;              &lt;/tbody&gt;#xD;#xA;            &lt;/table&gt;#xD;#xA;          &lt;/td&gt;#xD;#xA;        &lt;/tr&gt;#xD;#xA;      &lt;/tbody&gt;#xD;#xA;    &lt;/table&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B4DEF570C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>82A71C90C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E45D3D0048</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B9DC3D0048</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1D4E1E80C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>05BB1E80C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>73843D3048</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>238A3D3048</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B03E2F10C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A68F2900C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>339B53A0C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>1E18F410C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>2F863D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>495D3D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>80643D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>5F1C3D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>3FE63D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D67D3D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>279A3D7048</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Prestige Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Prestige Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>A4B03D7048</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>052C3D8048</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E87F3DA048</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>CCA43DC048</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>50983DD048</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>80553DE048</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>06A53DF048</ID>
			<From>payouts@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Thank you for your email.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      This is confirmation our Prestige team have recieved your message and it will be processed shortly.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_replyto%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>F9CD2C7076</ID>
			<Enabled>-1</Enabled>
			<From>prestige@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: rgb(0, 0, 0); font-family: HelveticaNeue,sans-serif;&quot;&gt;#xD;#xA;    &lt;table border=&quot;0&quot;&gt;#xD;#xA;      &lt;tbody&gt;#xD;#xA;        &lt;tr&gt;#xD;#xA;          &lt;td align=&quot;center&quot;&gt;#xD;#xA;            &lt;p style=&quot;font-size: 12px;&quot;&gt;#xD;#xA;              &lt;strong&gt;Email not displaying properly?&lt;/strong&gt; If you&apos;re using Outlook, add our domain to your Safe Senders list.&lt;br&gt;#xD;#xA;              &lt;a href=&quot;https://support.office.com/en-us/article/block-or-unblock-automatic-picture-downloads-in-email-messages-15e08854-6808-49b1-9a0a-50b81f2d617a&quot; target=&quot;_blank&quot;&gt;Click here for instructions&lt;/a&gt;#xD;#xA;            &lt;/p&gt;#xD;#xA;            &lt;table class=&quot;Cental&quot; style=&quot;width: 100%; color: rgb(0, 0, 0); max-width: 650px; background-color: rgb(255, 255, 255);&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot;&gt;#xD;#xA;              &lt;tbody&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;text-align: left;&quot;&gt;#xD;#xA;                    &lt;a style=&quot;padding-left: 20px;&quot; href=&quot;https://www.dsgfs.com&quot; target=&quot;_blank&quot;&gt;&lt;img width=&quot;220&quot; height=&quot;60&quot; align=&quot;top&quot; id=&quot;customHeaderImage&quot; alt=&quot;DSG Logo&quot; src=&quot;https://www.dsgfs.com/images/EmailHeaderLogo3.png&quot; border=&quot;0&quot; label=&quot;Header Image&quot;&gt;&lt;/a&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;padding: 20px;&quot;&gt;#xD;#xA;                    &lt;h1&gt;#xD;#xA;                      Proposal Update#xD;#xA;                    &lt;/h1&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Thanks for coming back to us, this is an automated response to let you know we&apos;ve received your email.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      We will process your request as soon as possible and be in touch shortly.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Regards#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      DSG Team#xD;#xA;                    &lt;/p&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td&gt;#xD;#xA;                    &lt;table class=&quot;Cental footer&quot; style=&quot;color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                      &lt;tbody&gt;#xD;#xA;                        &lt;tr&gt;#xD;#xA;                          &lt;td&gt;#xD;#xA;                            &lt;div style=&quot;padding: 20px; color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Financial Services Ltd is authorised and regulated by the Financial Conduct Authority.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                Tel: 0844 815 8888 | Web: &lt;a style=&quot;color: rgb(255, 255, 255); font-weight: bold;&quot; href=&quot;www.dsgfs.com&quot;&gt;www.dsgfs.com&lt;/a&gt;#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Prestige, 55-60 Pegholme, Wharfebank Mills, Ilkley Road, Otley, Yorkshire, LS21 3JP. Registered in England 02313903.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                            &lt;/div&gt;#xD;#xA;                          &lt;/td&gt;#xD;#xA;                        &lt;/tr&gt;#xD;#xA;                      &lt;/tbody&gt;#xD;#xA;                    &lt;/table&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;              &lt;/tbody&gt;#xD;#xA;            &lt;/table&gt;#xD;#xA;          &lt;/td&gt;#xD;#xA;        &lt;/tr&gt;#xD;#xA;      &lt;/tbody&gt;#xD;#xA;    &lt;/table&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>08771E80C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Prestige Inbound Email Processing'

 --Copy of Prestige Inbound Email Processing
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>6D1794B076</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>Hi please see attached tracker letter#xD;#xA;#xD;#xA;Kind Regards,#xD;#xA;Tom Johnston#xD;#xA;#xD;#xA;[instagram icon download 32x32 - square]&lt;https://www.instagram.com/premiervehiclegroup/&gt; [linkedin icon download 32x32 - square] &lt;https://www.linkedin.com/company/premier-vehicle-group/&gt;  [whatsapp icon download 32x32 - curved] &lt;https://api.whatsapp.com/send?phone=0792515430&gt;  [Facebook icon download 32x32 - square] &lt;https://www.facebook.com/PremierVehicleLeasing&gt;  [cid:image007.png@01D8960B.9C7D65A0] &lt;https://www.tiktok.com/@premiervehiclegroup&gt;     [cid:image005.png@01D8993B.2B7B2300]               [cid:image008.png@01D8993B.2B7B2300]#xD;#xA;#xD;#xA;                                                                      www.premiervehicleleasing.com&lt;http://www.premiervehicleleasing.com&gt;                  www.premiervehiclevip.com&lt;http://www.premiervehiclevip.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;[Trustpilot rating]#xD;#xA;[Trustpilot Stars]&lt;https://www.trustpilot.com/review/premiervehicleleasing.com?utm_medium=Trustbox&amp;utm_source=EmailSignature2&gt;#xD;#xA;[Trustpilot Logo]&lt;https://www.trustpilot.com/review/premiervehicleleasing.com?utm_medium=Trustbox&amp;utm_source=EmailSignature2&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;[cid:image009.png@01D8993B.2B7B2300]#xD;#xA;#xD;#xA;#xD;#xA;This email and any attachments are confidential and intended only for the above addressee. It may contain privileged#xD;#xA;information. If you are not the addressee you must not copy, distribute, disclose or use any of the information in it. If you#xD;#xA;have received it in error, please delete it and notify the sender.#xD;#xA;Premier Vehicle Leasing Ltd.#xD;#xA;Registered number: 12414971 England and Wales.#xD;#xA;Authorised and Regulated by the Financial Conduct Authority No. 932037#xD;#xA;Registered address: 5300 Lakeside, Cheadle Royal Business Park, Cheadle, SK8 3GP#xD;#xA;Premier Vehicle Leasing Ltd are a credit broker, not a lender, we can introduce you to a number of lenders. Nothing in this#xD;#xA;E-mail is to be interpreted as agreement on behalf of any business in Premier Vehicle Leasing as a company to enter into#xD;#xA;any legally binding agreement unless the recipient has received confirmation in writing from a director of the business that#xD;#xA;the sender is authorised.#xD;#xA;#xD;#xA;________________________________#xD;#xA;From: Tom Johnston &lt;Tom@premiervehiclegroup.com&gt;#xD;#xA;Sent: Thursday, August 4, 2022 3:01:38 PM#xD;#xA;To: DSG Prestige &lt;prestige@dsgfs.com&gt;; Tom Johnston &lt;tom@premiervehicleleasing.com&gt;; external.prestige@dsgfs.com &lt;external.prestige@dsgfs.com&gt;; nicola.allen@dsgfs.com &lt;nicola.allen@dsgfs.com&gt;#xD;#xA;Cc: brian.rothwell@dsgfs.com &lt;brian.rothwell@dsgfs.com&gt;#xD;#xA;Subject: RE: [Unable to Payout] Lloyd, Christopher - PN907328#xD;#xA;#xD;#xA;#xD;#xA;Hi please call Gavin on 07525754444 to sort#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;1) An asset inspection is to be completed via Facetime by a DSG representative. Please advise when the dealer is free to do this.#xD;#xA;#xD;#xA;3) Proof of title required - underlying invoice and proof of payment.#xD;#xA;#xD;#xA;4) Clearance: Finance company#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Kind Regards,#xD;#xA;#xD;#xA;Tom Johnston#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;[instagram icon download 32x32 - square]&lt;https://www.instagram.com/premiervehiclegroup/&gt; [linkedin icon download 32x32 - square] &lt;https://www.linkedin.com/company/premier-vehicle-group/&gt;  [whatsapp icon download 32x32 - curved] &lt;https://api.whatsapp.com/send?phone=0792515430&gt;  [Facebook icon download 32x32 - square] &lt;https://www.facebook.com/PremierVehicleLeasing&gt;  [cid:image007.png@01D8960B.9C7D65A0] &lt;https://www.tiktok.com/@premiervehiclegroup&gt;     [cid:image005.png@01D8993B.2B7B2300]               [cid:image008.png@01D8993B.2B7B2300]#xD;#xA;#xD;#xA;                                                                      www.premiervehicleleasing.com&lt;http://www.premiervehicleleasing.com&gt;                  www.premiervehiclevip.com&lt;http://www.premiervehiclevip.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;[Trustpilot rating]#xD;#xA;[Trustpilot Stars]&lt;https://www.trustpilot.com/review/premiervehicleleasing.com?utm_medium=Trustbox&amp;utm_source=EmailSignature2&gt;#xD;#xA;[Trustpilot Logo]&lt;https://www.trustpilot.com/review/premiervehicleleasing.com?utm_medium=Trustbox&amp;utm_source=EmailSignature2&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;[cid:image009.png@01D8993B.2B7B2300]#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;This email and any attachments are confidential and intended only for the above addressee. It may contain privileged#xD;#xA;#xD;#xA;information. If you are not the addressee you must not copy, distribute, disclose or use any of the information in it. If you#xD;#xA;#xD;#xA;have received it in error, please delete it and notify the sender.#xD;#xA;#xD;#xA;Premier Vehicle Leasing Ltd.#xD;#xA;#xD;#xA;Registered number: 12414971 England and Wales.#xD;#xA;#xD;#xA;Authorised and Regulated by the Financial Conduct Authority No. 932037#xD;#xA;#xD;#xA;Registered address: 5300 Lakeside, Cheadle Royal Business Park, Cheadle, SK8 3GP#xD;#xA;#xD;#xA;Premier Vehicle Leasing Ltd are a credit broker, not a lender, we can introduce you to a number of lenders. Nothing in this#xD;#xA;E-mail is to be interpreted as agreement on behalf of any business in Premier Vehicle Leasing as a company to enter into#xD;#xA;any legally binding agreement unless the recipient has received confirmation in writing from a director of the business that#xD;#xA;the sender is authorised.#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;From: DSG Prestige&lt;mailto:prestige@dsgfs.com&gt;#xD;#xA;Sent: 02 August 2022 11:24#xD;#xA;To: Tom Johnston&lt;mailto:tom@premiervehicleleasing.com&gt;; external.prestige@dsgfs.com&lt;mailto:external.prestige@dsgfs.com&gt;; nicola.allen@dsgfs.com&lt;mailto:nicola.allen@dsgfs.com&gt;; Jonathan Healey&lt;mailto:jonathan@premiervehicleleasing.com&gt;; Millie Crossley&lt;mailto:millie@premiervehicleleasing.com&gt;; Jonny Fisher&lt;mailto:jonny@premiervehicleleasing.com&gt;; Charlotte Dey-Wright&lt;mailto:charlotte@premiervehicleleasing.com&gt;#xD;#xA;Cc: brian.rothwell@dsgfs.com&lt;mailto:brian.rothwell@dsgfs.com&gt;#xD;#xA;Subject: [Unable to Payout] Lloyd, Christopher - PN907328#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Email not displaying properly? If you&apos;re using Outlook, add our domain to your Safe Senders list.#xD;#xA;Click here for instructions&lt;https://support.office.com/en-us/article/block-or-unblock-automatic-picture-downloads-in-email-messages-15e08854-6808-49b1-9a0a-50b81f2d617a&gt;#xD;#xA;#xD;#xA;[DSG Logo]&lt;https://www.dsgfs.com&gt;#xD;#xA;#xD;#xA;To#xD;#xA;#xD;#xA;Premier Vehicle Leasing LTD#xD;#xA;#xD;#xA;From#xD;#xA;#xD;#xA;DSG Prestige#xD;#xA;#xD;#xA;Customer#xD;#xA;#xD;#xA;Christopher Lloyd#xD;#xA;#xD;#xA;Thank you for the documentation for the above customer. We are working with the lender to get the payment released but require the following information:#xD;#xA;#xD;#xA;1) An asset inspection is to be completed via Facetime by a DSG representative. Please advise when the dealer is free to do this.#xD;#xA;#xD;#xA;2) Insurance cover note - must state the customer is covered for business use within their policy.#xD;#xA;#xD;#xA;3) Proof of title required - underlying invoice and proof of payment.#xD;#xA;#xD;#xA;4) Clearance:#xD;#xA;Finance company#xD;#xA;#xD;#xA;JAGUAR FS/LAND ROVER FS#xD;#xA;#xD;#xA;Finance contact number#xD;#xA;#xD;#xA;03448248806#xD;#xA;#xD;#xA;Agreement date#xD;#xA;#xD;#xA;30/04/2021#xD;#xA;#xD;#xA;Agreement reference#xD;#xA;#xD;#xA;895761#xD;#xA;#xD;#xA;Agreement term#xD;#xA;#xD;#xA;12#xD;#xA;#xD;#xA;Agreement type#xD;#xA;#xD;#xA;UNIT STOCKING#xD;#xA;#xD;#xA;Description of vehicle on agreement#xD;#xA;#xD;#xA;LAND ROVER NEW DEFENDER#xD;#xA;#xD;#xA;Thank you#xD;#xA;Chelsea#xD;#xA;#xD;#xA;Please send us the requested information as soon as possible. Please do not release the vehicle until you have received payout confirmation.#xD;#xA;#xD;#xA;DSG Financial Services Ltd is authorised and regulated by the Financial Conduct Authority.#xD;#xA;#xD;#xA;Tel: 01943 660 691 | Web: www.dsgfs.com#xD;#xA;#xD;#xA;DSG Prestige, 55-60 Pegholme, Wharfebank Mills, Ilkley Road, Otley, Yorkshire, LS21 3JP. Registered in England 02313903.#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;</HelperMessage>
	<HelperSubject>RE: [Unable to Payout] Lloyd, Christopher - PN907328</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>Copy of Prestige Inbound Email Processing</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>A17225E0C6</SaveToFolderID>
	<LastEditedByUserID>9B231B50BA</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>183</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F98D28E04E</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>Payouts_CheckForActionsToStopProcessing</InsertFieldName>
			<LookFor>Payouts_CheckForActionsToStopProcessing</LookFor>
			<Name>Payouts_CheckForActionsToStopProcessing</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT [dbo].[Payouts_CheckForActionsToStopProcessing] (%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>C1B6214046</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>3C532920C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>CA233D0048</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>40C13D0048</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>98EB3D0048</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E2C76E70DB</ID>
			<Enabled>-1</Enabled>
			<Name>Body</Name>
			<Value>%Body%</Value>
			<Operation>14</Operation>
			<Append>-1</Append>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Replace</Class>
			<ID>F9492D8088</ID>
			<Enabled>-1</Enabled>
			<Field>%msg_body%</Field>
			<Find> </Find>
			<All>-1</All>
			<AssignTo>%msg_body%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F3C71D20CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|moneybarn.com</Line><Line>Or|%msg_from%|=|payments.cf@hitachicapital.co.uk</Line><Line>Or|%msg_from%|=|bfproposals@hitachicapital.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FDB93690C6</ID>
			<Comment>Global Exception to Processing Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>925799D0C6</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.prestige@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4A44FD00C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B5F73690C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1A0C2870C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F4A82880C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5ADF28A0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>7B3728B0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3C571AC093</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line><Line>Or|%msg_from%|=|bfcustomersupport@hitachicapital.co.uk</Line><Line>Or|%msg_from%|=|add.info@minifin.co.uk</Line><Line>Or|%msg_from%|=|customerservices-mbfs@daimler.com</Line><Line>Or|%msg_subject%|=|Thank you for your enquiry with Novuna Business Finance - This is an automated response, please do not respond.</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A90C1AE093</ID>
			<Comment>Prevent loop from &quot;noreply&quot; acknowledgements</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>197C1B0093</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>ED021B1093</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>739E31F0CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>DDDD9B00CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_html%|^|</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7DD63200CE</ID>
			<Comment>HTML Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>9DEC3210CE</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Below email received without a valid PN:#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Sender: %msg_from%&lt;br&gt;#xD;#xA;      To: %msg_to%&lt;br&gt;#xD;#xA;      CC: %msg_cc%#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      *********************************#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      %msg_html%&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>internal.prestige@dsgfs.com</SendTo>
			<Subject>[Unprocessed] %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>46C33220CE</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>7256C75110</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|@dsgfs.com</Line><Line>Or|%msg_from%|=|AFCredit@aldermore.co.uk</Line><Line>Or|%msg_from%|=|AFCS@aldermore.co.uk</Line><Line>Or|%msg_from%|=|PANCredit@motonovofinance.com</Line><Line>Or|%msg_from%|=|payouts@novunabusinessfinance.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>AFFA1D8111</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>551A21C111</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>0C5E3AC077</ID>
			<Enabled>-1</Enabled>
			<From>prestige@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: rgb(0, 0, 0); font-family: HelveticaNeue,sans-serif;&quot;&gt;#xD;#xA;    &lt;table border=&quot;0&quot;&gt;#xD;#xA;      &lt;tbody&gt;#xD;#xA;        &lt;tr&gt;#xD;#xA;          &lt;td align=&quot;center&quot;&gt;#xD;#xA;            &lt;p style=&quot;font-size: 12px;&quot;&gt;#xD;#xA;              &lt;strong&gt;Email not displaying properly?&lt;/strong&gt; If you&apos;re using Outlook, add our domain to your Safe Senders list.&lt;br&gt;#xD;#xA;              &lt;a href=&quot;https://support.office.com/en-us/article/block-or-unblock-automatic-picture-downloads-in-email-messages-15e08854-6808-49b1-9a0a-50b81f2d617a&quot; target=&quot;_blank&quot;&gt;Click here for instructions&lt;/a&gt;#xD;#xA;            &lt;/p&gt;#xD;#xA;            &lt;table class=&quot;Cental&quot; style=&quot;width: 100%; color: rgb(0, 0, 0); max-width: 650px; background-color: rgb(255, 255, 255);&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot;&gt;#xD;#xA;              &lt;tbody&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;text-align: left;&quot;&gt;#xD;#xA;                    &lt;a style=&quot;padding-left: 20px;&quot; href=&quot;https://www.dsgfs.com&quot; target=&quot;_blank&quot;&gt;&lt;img width=&quot;220&quot; height=&quot;60&quot; align=&quot;top&quot; id=&quot;customHeaderImage&quot; alt=&quot;DSG Logo&quot; src=&quot;https://www.dsgfs.com/images/EmailHeaderLogo3.png&quot; border=&quot;0&quot; label=&quot;Header Image&quot;&gt;&lt;/a&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;padding: 20px;&quot;&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Thank you for your email.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      For a quicker service if you include the proposal PN number this will result in the contents being uploaded to the system and allocated to our team to deal with.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      You will find the proposal number in most of our communications with you (it is prefixed with PN followed by 6 numbers). If you include this anywhere in the subject of your emails, we can get to you quicker.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Your email will now be manually reviewed and we will endeavour to get back to you as soon as possible.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Regards#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      DSG Team#xD;#xA;                    &lt;/p&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td&gt;#xD;#xA;                    &lt;table class=&quot;Cental footer&quot; style=&quot;color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                      &lt;tbody&gt;#xD;#xA;                        &lt;tr&gt;#xD;#xA;                          &lt;td&gt;#xD;#xA;                            &lt;div style=&quot;padding: 20px; color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Financial Services Ltd is authorised and regulated by the Financial Conduct Authority.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                Tel: 0844 815 8888 | Web: &lt;a style=&quot;color: rgb(255, 255, 255); font-weight: bold;&quot; href=&quot;www.dsgfs.com&quot; target=&quot;_blank&quot;&gt;www.dsgfs.com&lt;/a&gt;#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Prestige, 55-60 Pegholme, Wharfebank Mills, Ilkley Road, Otley, Yorkshire, LS21 3JP. Registered in England 02313903.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                            &lt;/div&gt;#xD;#xA;                          &lt;/td&gt;#xD;#xA;                        &lt;/tr&gt;#xD;#xA;                      &lt;/tbody&gt;#xD;#xA;                    &lt;/table&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;              &lt;/tbody&gt;#xD;#xA;            &lt;/table&gt;#xD;#xA;          &lt;/td&gt;#xD;#xA;        &lt;/tr&gt;#xD;#xA;      &lt;/tbody&gt;#xD;#xA;    &lt;/table&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>DA3EC75110</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B4DEF570C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>82A71C90C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E45D3D0048</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B9DC3D0048</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1D4E1E80C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>05BB1E80C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>73843D3048</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>238A3D3048</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B03E2F10C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A68F2900C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>339B53A0C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>1E18F410C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>2F863D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>495D3D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>80643D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>5F1C3D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>3FE63D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D67D3D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>279A3D7048</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Prestige Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Prestige Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>A4B03D7048</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>052C3D8048</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E87F3DA048</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
			<Append>-1</Append>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>5CB876E0C3</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|=|prestigepayouts@dsgfs.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>36381E10C3</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>308</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>6A6476E0C3</ID>
			<Comment>Set Status to Payout info needed for prestigepayouts@dsgfs.com emails</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>416076E0C3</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>CCA43DC048</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>50983DD048</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>80553DE048</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>CE07678118</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|@dsgfs.com</Line><Line>Or|%msg_from%|=|AFCredit@aldermore.co.uk</Line><Line>Or|%msg_from%|=|AFCS@aldermore.co.uk</Line><Line>Or|%msg_from%|=|PANCredit@motonovofinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>536A389111</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>E1EA3B3111</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>8E03228077</ID>
			<Enabled>-1</Enabled>
			<From>prestige@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: rgb(0, 0, 0); font-family: HelveticaNeue,sans-serif;&quot;&gt;#xD;#xA;    &lt;table border=&quot;0&quot;&gt;#xD;#xA;      &lt;tbody&gt;#xD;#xA;        &lt;tr&gt;#xD;#xA;          &lt;td align=&quot;center&quot;&gt;#xD;#xA;            &lt;p style=&quot;font-size: 12px;&quot;&gt;#xD;#xA;              &lt;strong&gt;Email not displaying properly?&lt;/strong&gt; If you&apos;re using Outlook, add our domain to your Safe Senders list.&lt;br&gt;#xD;#xA;              &lt;a href=&quot;https://support.office.com/en-us/article/block-or-unblock-automatic-picture-downloads-in-email-messages-15e08854-6808-49b1-9a0a-50b81f2d617a&quot; target=&quot;_blank&quot;&gt;Click here for instructions&lt;/a&gt;#xD;#xA;            &lt;/p&gt;#xD;#xA;            &lt;table class=&quot;Cental&quot; style=&quot;width: 100%; color: rgb(0, 0, 0); max-width: 650px; background-color: rgb(255, 255, 255);&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot;&gt;#xD;#xA;              &lt;tbody&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;text-align: left;&quot;&gt;#xD;#xA;                    &lt;a style=&quot;padding-left: 20px;&quot; href=&quot;https://www.dsgfs.com&quot; target=&quot;_blank&quot;&gt;&lt;img width=&quot;220&quot; height=&quot;60&quot; align=&quot;top&quot; id=&quot;customHeaderImage&quot; alt=&quot;DSG Logo&quot; src=&quot;https://www.dsgfs.com/images/EmailHeaderLogo3.png&quot; border=&quot;0&quot; label=&quot;Header Image&quot;&gt;&lt;/a&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;padding: 20px;&quot;&gt;#xD;#xA;                    &lt;h1&gt;#xD;#xA;                      Proposal Update#xD;#xA;                    &lt;/h1&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Thanks for coming back to us, this is an automated response to let you know we&apos;ve received your email.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      We will process your request as soon as possible and be in touch shortly.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      &lt;strong&gt;Please note that supporting information received after 17:00 or on a weekend may not be reviewed until the next working day&lt;/strong&gt;#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Regards#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      DSG Team#xD;#xA;                    &lt;/p&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td&gt;#xD;#xA;                    &lt;table class=&quot;Cental footer&quot; style=&quot;color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                      &lt;tbody&gt;#xD;#xA;                        &lt;tr&gt;#xD;#xA;                          &lt;td&gt;#xD;#xA;                            &lt;div style=&quot;padding: 20px; color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Financial Services Ltd is authorised and regulated by the Financial Conduct Authority.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                Tel: 0844 815 8888 | Web: &lt;a style=&quot;color: rgb(255, 255, 255); font-weight: bold;&quot; href=&quot;www.dsgfs.com&quot;&gt;www.dsgfs.com&lt;/a&gt;#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Prestige, 55-60 Pegholme, Wharfebank Mills, Ilkley Road, Otley, Yorkshire, LS21 3JP. Registered in England 02313903.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                            &lt;/div&gt;#xD;#xA;                          &lt;/td&gt;#xD;#xA;                        &lt;/tr&gt;#xD;#xA;                      &lt;/tbody&gt;#xD;#xA;                    &lt;/table&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;              &lt;/tbody&gt;#xD;#xA;            &lt;/table&gt;#xD;#xA;          &lt;/td&gt;#xD;#xA;        &lt;/tr&gt;#xD;#xA;      &lt;/tbody&gt;#xD;#xA;    &lt;/table&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>661C2D5110</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>08771E80C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Copy of Prestige Inbound Email Processing'

 --Process QST Feedback Emails
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>63992AE055</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*dsgfs.com</FromAddressLIKE>
	<HelperMessage>#xD;#xA;SRV83#xD;#xA;Customer Feedback Alert#xD;#xA;Proposal ID: 657393#xD;#xA;Rating: 8#xD;#xA;#xD;#xA;#xD;#xA;</HelperMessage>
	<HelperSubject>QST Feedback Alert (Info)</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>Process QST Feedback Emails</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>A04B209067</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>3C532920C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>877ACB0055</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Rating</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Rating</InsertFieldName>
			<LookFor>Rating:</LookFor>
			<Name>Rating</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_ThisMany>-1</Until_ThisMany>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>3</UntilThisManyChars>
			<Validate>-1</Validate>
			<ValidateHigh>10</ValidateHigh>
			<ValidateLow>1</ValidateLow>
			<ValidateOption>1</ValidateOption>
		</Trigger.Field>
		<Trigger.Field>
			<ID>47FB253055</ID>
			<Enabled>-1</Enabled>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>227</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>CA37215055</ID>
			<Enabled>-1</Enabled>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<Name>DateTime</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>AEDB229055</ID>
			<Enabled>-1</Enabled>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>C86B284055</ID>
			<Enabled>-1</Enabled>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>Customer Feedback</DefaultValue>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D16E39B055</ID>
			<Comment>Proposal ID: %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F5741B40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>06FD85B0F5</ID>
			<EmailForwardSubject>%msg_subject% (Invalid PN)</EmailForwardSubject>
			<EmailForwardTo>customerfeedback@dsgfs.com</EmailForwardTo>
			<FromAddress>noreply@dsgfs.com</FromAddress>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B4DEF570C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>82A71C90C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D779322055</ID>
			<Comment>Rating: %Rating%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>C834E11055</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%Rating%|&lt;=|2</Line><Line>And|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>BD732E4055</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>%msg_subject%</EmailForwardSubject>
			<EmailForwardTo>customerfeedback@dsgfs.com</EmailForwardTo>
			<FromAddress>noreply@dsgfs.com</FromAddress>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>ACDCE11055</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>AB253A9055</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Process QST Feedback Emails'

 --Unity D2C Processing
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>EC583230CE</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Ross Wild*#xD;#xA;Account Manager#xD;#xA;ross.wild@dsgfs.com#xD;#xA;Tel: 0844 880 9273 Fax: 0844 880 8293#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;---------- Forwarded message ----------#xD;#xA;From: Gavin Marsh &lt;gdm80@hotmail.co.uk&gt;#xD;#xA;Date: 8 April 2016 at 10:05#xD;#xA;Subject: New Doc 139#xD;#xA;To: Ross Wild &lt;ross.wild@dsgfs.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Sent from Samsung Mobile on O2#xD;#xA;</HelperMessage>
	<HelperSubject>PN482461</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>Unity D2C Processing</TriggerName>
	<ReceivedAfter>2022-09-15 00:00:00</ReceivedAfter>
	<SaveToFolderID>6266279066</SaveToFolderID>
	<LastEditedByUserID>9B231B50BA</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>169</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>08EB3C90C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F76A6940C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>809227B0C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>9FAF27B0C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>425827C0C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>6A5327C0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>570727C0C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>BEDA27C0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>1B2135F0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>4B112B2142</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|s?|DSG Financial Services Ltd Confirmation - Send Mail as</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>07BB1AE142</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Unity Direct Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>unitydirect.internal@unityauto.finance</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B2F92B2142</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3DC427D0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DF3A41A07D</ID>
			<Comment>No valid PN, forwarding</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>72EBCE007D</ID>
			<EmailForwardSubject>[Unprocessed Digital Sales Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ds.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>F6F0247083</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;   #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;   #xD;#xA;&lt;title&gt;&lt;/title&gt; #xD;#xA;&lt;/head&gt; #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;This email is from: %msg_from%&lt;/p&gt;#xD;#xA;&lt;p&gt;%msg_html% &lt;br /&gt;%msg_attachments%&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>unitydirect.internal@unityauto.finance</SendTo>
			<Subject>[Unprocessed Unity Direct Email] FW: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>AEA427E0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>84B827E0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>FBE31FC084</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@codeweavers.net</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>C8E7212084</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Unity Direct Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>unitydirect.internal@unityauto.finance</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>34CD388084</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3E8D1FC084</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B6E635F0C5</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FA5A27F0C5</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9B7C27F0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>130F2800C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>DF553A20C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FEC53A30C5</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D1103A30C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9EEC3A40C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>26253A50C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>61613A50C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>E0473A60C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D52D3A70C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>570E3A80C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>B2433A90C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>59F83AA0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>1F9D3AB0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>D32F3AC0C5</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>0C3D2D9083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>05FC29A083</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.RelatedItems#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A85C369083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>2AA93AE0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>5B862910C5</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>3CA42920C5</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>56CE2930C5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>40D82950C5</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>696B1D4041</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Your email has been received, processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 minutes.&amp;nbsp;&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>2F4C2990C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Unity D2C Processing'

 --UAF Emails
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>B4F9E1E06E</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>This is a test#xD;#xA;PN807477#xD;#xA;&lt;https://www.dsgfs.com/&gt;#xD;#xA;Dan Shaw#xD;#xA;IT Support#xD;#xA;dan.shaw@dsgfs.com#xD;#xA;Tel: 07711 284 770#xD;#xA;DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority#xD;#xA;&lt;https://www.dsgfs.com/disclaimer.html&gt;Click here to view our disclaimer#xD;#xA;&lt;https://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>PN807477</HelperSubject>
	<HelperTo>customer.services@dsgfs.com</HelperTo>
	<TriggerName>UAF Emails</TriggerName>
	<ReceivedAfter>2022-09-15 00:00:00</ReceivedAfter>
	<SaveToFolderID>711973C06E</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 11:58:21</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([6-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>2DD620A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPNUnity(%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>277B31F01F</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ActionType</EnvironmentVarName>
			<LookFor>Action:</LookFor>
			<Name>ActionType</Name>
			<StartFromLastExtractPoint>-1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>4C892A4012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>210</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>6926205012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>Proposal Actions Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<Name>Body</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>BCD13C3012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>6A09213012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>687635F012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>BB51CFE012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>56FF253153</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>B6D4253153</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>B30F253153</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BE5E253153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0483253153</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>AA1C253153</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3D1B253153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>0C19253153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|s?|DSG Financial Services Ltd Confirmation - Send Mail as</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>12F9253153</ID>
			<EmailForwardSubject>[Unprocessed Unity Underwriting Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>dan.shaw@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>FE57254153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>8BFF254153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>66D5254153</ID>
			<Comment>No valid PN, forwarding</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>8263254153</ID>
			<EmailForwardSubject>[Unprocessed Unity Underwriting Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>dan.shaw@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>3B81254153</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;   #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;   #xD;#xA;&lt;title&gt;&lt;/title&gt; #xD;#xA;&lt;/head&gt; #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;This email is from: %msg_from%&lt;/p&gt;#xD;#xA;&lt;p&gt;%msg_html% &lt;br /&gt;%msg_attachments%&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>dan.shaw@dsgfs.com</SendTo>
			<Subject>[Unprocessed Unity Underwriting Email] FW: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5FEC254153</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6682254153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BAD2254153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@codeweavers.net</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>FDB1255153</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Unity Underwriting Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>dan.shaw@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B8E1255153</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>C722255153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9832255153</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>AA50255153</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1C2C255153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>1230256153</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1C02256153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>4E50256153</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7B04256153</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9CC8256153</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>BB48257153</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>9B6C257153</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>3AD0257153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>643F257153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>E416258153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>C1D5258153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>B3FF258153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>8135259153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>A928259153</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F0C025A153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>DD9325A153</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.RelatedItems#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>940D25A153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>38BF25B153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E60325B153</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>8DB025C153</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>10832F7014</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID] FROM tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>B52D3AD014</ID>
			<Enabled>-1</Enabled>
			<Name>ActionID</Name>
			<Value>210</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E62E395017</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>210</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>065825C153</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E3CB25C153</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>5D5025D153</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;     #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;     #xD;#xA;&lt;title&gt;&lt;/title&gt;   #xD;#xA;&lt;/head&gt;   #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;Dear %msg_fromname%&amp;nbsp;&lt;br /&gt;&lt;br /&gt;      Your email has been received, #xD;#xA;processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 #xD;#xA;minutes.&amp;nbsp;&amp;nbsp;&lt;br /&gt;&lt;br /&gt;      Kind Regards&lt;br /&gt;      DSG IT     #xD;#xA;&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>6997D2B014</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>47B639A014</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE TriggerID = 'B4F9E1E06E'
 
 
 --Payout Inbound Email Processing
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>EB5334A046</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>-- #xD;#xA;&lt;https://www.dsgfs.com/&gt;#xD;#xA;Chris Watson#xD;#xA;Regional Development Manager, North West#xD;#xA;chris.watson@dsgfs.com#xD;#xA;Tel: 0161 406 3931 | Mob: 07794 664 153#xD;#xA;DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority.  &lt;https://www.dsgfs.com/disclaimer.html&gt;Click here to#xD;#xA;view our disclaimer. &lt;https://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>eSign @ Home successfully completed: Proposal 14956937 for Lisa Ogilvie</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>Payout Inbound Email Processing</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>A04B209067</SaveToFolderID>
	<LastEditedByUserID>9B231B50BA</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>54</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<FieldType>5</FieldType>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>9000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfBody>-1</Until_EndOfBody>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F98D28E04E</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>Payouts_CheckForActionsToStopProcessing</InsertFieldName>
			<LookFor>Payouts_CheckForActionsToStopProcessing</LookFor>
			<Name>Payouts_CheckForActionsToStopProcessing</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT [dbo].[Payouts_CheckForActionsToStopProcessing] (%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>C1B6214046</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>3C532920C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>60762BC10B</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_eSignFunderRef</EnvironmentVarName>
			<InsertFieldName>eSignFunderRef</InsertFieldName>
			<LookFor>Esign @ Home successfully completed: Proposal </LookFor>
			<Name>ALF_eSignFunderRef_Success</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_TheseWords>-1</Until_TheseWords>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilTheseWords>for</UntilTheseWords>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>D741ED210C</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ALF_eSignFunderRef_Unsuccessful</EnvironmentVarName>
			<InsertFieldName>ALF_eSignFunderRef_Unsuccessful</InsertFieldName>
			<LookFor>stage unsuccessful:</LookFor>
			<Name>ALF_eSignFunderRef_Unsuccessful</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_TheseWords>-1</Until_TheseWords>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilTheseWords>for</UntilTheseWords>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>012022612D</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Oodle_Reg</EnvironmentVarName>
			<InsertFieldName>Oodle_Reg</InsertFieldName>
			<LookFor>Vehicle Registration:</LookFor>
			<Name>Oodle_Reg</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>916022F13C</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Oodle_Ref</EnvironmentVarName>
			<InsertFieldName>Oodle_Ref</InsertFieldName>
			<LookFor>(DSGF-[0-9]{6}-[0-9]{6})</LookFor>
			<Name>Oodle_Ref</Name>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
		</Trigger.Field>
		<Trigger.Field>
			<ID>056A3DA08F</ID>
			<Enabled>-1</Enabled>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<PassToBody>%fieldvalue%</PassToBody>
			<PassToSubject>%msg_subject%</PassToSubject>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>TextFile</Class>
			<ID>1E89FE2076</ID>
			<FileName>E:\Scripts\Automated Service Restarts\check.txt</FileName>
			<Text>This text file is written to every time TA processes a Payouts emails. The modified date is used to check TA is working</Text>
			<LineTerminator>CRLF</LineTerminator>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>CA233D0048</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>40C13D0048</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>98EB3D0048</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Replace</Class>
			<ID>ABEA9E808F</ID>
			<Enabled>-1</Enabled>
			<Field>%msg_body%</Field>
			<Find>*</Find>
			<ReplaceWith> </ReplaceWith>
			<AssignTo>%msg_body%</AssignTo>
			<Condition>
				<Lines><Line>|%msg_from%|?|@virtualyard.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>79CF3690C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|moneybarn.com</Line><Line>Or|%msg_from%|?|hitachicapital.co.uk</Line><Line>Or|%msg_from%|?|bnpparibas-pf.co.uk</Line><Line>Or|%msg_from%|?|alphera.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FDB93690C6</ID>
			<Comment>Global Exception to Processing Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>925799D0C6</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4A44FD00C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B5F73690C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1A0C2870C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_subject%|?|Auto Reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F4A82880C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5ADF28A0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>7B3728B0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3A70A9A093</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line><Line>Or|%msg_from%|=|payouts@dsgfs.com</Line><Line>Or|%msg_from%|=|add.info@minifin.co.uk</Line><Line>Or|%msg_from%|=|complaintsteam@hitachipersonalfinance.co.uk</Line><Line>Or|%msg_from%|=|Processors@northridgeuk.com</Line><Line>Or|%msg_from%|=|notifications@stripe.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>06E9ABA093</ID>
			<Comment>Prevent loop from &quot;noreply&quot; acknowledgements</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>918BAE3093</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>88D3B0A093</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>D8AC227156</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|?|payouts.rdm</Line><Line>Or|%msg_to%|?|payouts.external</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>35EA22E156</ID>
			<Comment>Payout Email from RDM</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BCFC236156</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>589923E156</ID>
			<Comment>Valid PN</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>4123244156</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>245</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>F4D824C156</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>300</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>22A3254156</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>896425C156</ID>
			<Enabled>-1</Enabled>
			<From>noreply@dsgfs.com</From>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E2E6264156</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>DFCD2F9156</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3A5D26F156</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>B2282BF12D</ID>
			<LogicalType>5</LogicalType>
			<LabelName>Lender Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>444130412D</ID>
			<LogicalType>5</LogicalType>
			<LabelName>Alphera</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>300037F10C</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|no-reply@bmwfin.com</Line><Line>Or|%msg_from%|=|noreply@hylandcloud.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>72611FF12D</ID>
			<Comment>Alphera</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>C2DC1E310B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|Esign at Home successfully completed</Line><Line>Or|%msg_subject%|?|Esign @ Home successfully completed</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>B63633B10B</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>31</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>419C1C510B</ID>
			<Enabled>-1</Enabled>
			<Name>ProposalID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>D17E1D410B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 [Proposal ID] FROM [vieDSGProposalActions]#xD;#xA;WHERE ProposalFunderID = &apos;%ALF_eSignFunderRef_Success%&apos;</SQLSelectStatement>
			<TimeOut>500</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal ID</Name><AssignTo>%ProposalID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>7CE158410B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ProposalID%|len=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D50A58410B</ID>
			<Comment>Valid Proposal</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Replace</Class>
			<ID>2EDA8FE11F</ID>
			<Enabled>-1</Enabled>
			<Field>%Subject%</Field>
			<Find>@</Find>
			<ReplaceWith>at</ReplaceWith>
			<AssignTo>%Subject%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>75B933910B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (%ProposalID%, %StatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, &apos;Customer has completed eSign at home&apos;, @Subject)</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>E553BA810B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>65D7E0E10B</ID>
			<Comment>No valid PN matched with eSign Funder Ref</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>113A24010B</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed - No Funder ID Match]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>paysales.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>548658410B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>CF2E25D10B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>40A51E310B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>662427C10C</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|stage unsuccessful</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>D5DD28410C</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>89</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>CDB828810C</ID>
			<Enabled>-1</Enabled>
			<Name>ProposalID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>C70128C10C</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 [Proposal ID] FROM [vieDSGProposalActions]#xD;#xA;WHERE ProposalFunderID = &apos;%ALF_eSignFunderRef_Unsuccessful%&apos;</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal ID</Name><AssignTo>%ProposalID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>2A6329110C</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ProposalID%|len=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>CCF429610C</ID>
			<Comment>Valid Proposal</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>EB2629A10C</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (%ProposalID%, %StatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, &apos;Customer has completed eSign&apos;, @Subject)</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>8C1B23010C</ID>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>bm.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>94BD29E10C</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>60BD2A310C</ID>
			<Comment>No valid PN matched with eSign Funder Ref</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>0ADD2A710C</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed - No Funder ID Match]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>paysales.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>7E692AB10C</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>24BE2B010C</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6CA32B410C</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>860C31210B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_body%|?|has been confirmed for payout</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>CD2B38510B</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>11293B710B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A37631210B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>2B7F5ED10C</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>680E7B410C</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>14A837F10C</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>184C36312D</ID>
			<LogicalType>5</LogicalType>
			<LabelName>Oodle</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>834C27412D</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|oodlefinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>02C827412D</ID>
			<Comment>Oodle</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>842F71712D</ID>
			<Enabled>-1</Enabled>
			<Name>ProposalID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>EFEB75612D</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP (1) [Proposal ID]#xD;#xA;  FROM [MaiaDSG].[dbo].[vieTA_PNOodleRefAcceptance]#xD;#xA;  WHERE FunderProposalID = &apos;%Oodle_Ref%&apos;#xD;#xA;  ORDER by [Proposal ID] desc</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal ID</Name><AssignTo>%ProposalID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>263E79312D</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ProposalID%|^|</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>64587CF12D</ID>
			<Comment>Valid Proposal</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E6E53E512D</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|ESign Complete Confirmation</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>41223E512D</ID>
			<Comment>eSign Complete</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>9C5A6C512D</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>31</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>7C1636F13C</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (%ProposalID%, %StatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4A7B38413C</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>B72A32213C</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>441131913C</ID>
			<Comment>U/W info Rec&apos;d</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>323B36713C</ID>
			<Name>StatusID</Name>
			<Value>232</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>4B7E81112D</ID>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (%ProposalID%, %StatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>B268FF6004</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Oodle Email]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>0B241D313C</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A7B620C13C</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>7D8730513C</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>10C537413C</ID>
			<Comment>No valid PN matched with eSign Funder Ref</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>9F3837613C</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Oodle Email]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>BF4835F13C</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>779D6DB13C</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>04C924613C</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>849A1B313C</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>3E6B2D3016</ID>
			<LogicalType>5</LogicalType>
			<LabelName>Non-Lender Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F5741B40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>308D4C605F</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>docs@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt; #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt; #xD;#xA;&lt;/head&gt; #xD;#xA;&lt;body&gt;Original Sender: %msg_from%&lt;br /&gt;&lt;br /&gt;%msg_html%&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>internal.payouts@dsgfs.com</SendTo>
			<Subject>[Unprocessed]: FW: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>8BC99000C5</ID>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>19BA2AE02B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|dsgfs.com</Line><Line>Or|%msg_from%|?|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|?|connectedcarfinance.co.uk</Line><Line>Or|%msg_from%|?|oodlefinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>BD80D6702B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>C11DF7702B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>7B2F1EB03E</ID>
			<Enabled>-1</Enabled>
			<From>payouts@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Thank you for contacting us.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Please accept this email as confirmation that we are in receipt of your query/supporting information. This will be reviewed as soon as possible.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Please note that supporting information received after 17:15 or on a weekend may not be reviewed until the next working day.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Kind Regards#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      DSG Customer Service#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>CA6B2E902B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>98172AE02B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>27BC28902B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>82A71C90C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E45D3D0048</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B9DC3D0048</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1D4E1E80C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>05BB1E80C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1B8E2D704E</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%Payouts_CheckForActionsToStopProcessing%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>01E92D704E</ID>
			<Comment>Proposal contains a blacklisted action so email will not be processed</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>F2242E40C5</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed - Payout Enquiry]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>35DFA0C047</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|!?|dsgfs.com</Line><Line>Or|%msg_from%|!?|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|!?|connectedcarfinance.co.uk</Line><Line>Or|%msg_from%|!?|oodlefinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>02FE23E047</ID>
			<Enabled>-1</Enabled>
			<From>payouts@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;     #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;     #xD;#xA;&lt;title&gt;&lt;/title&gt;   #xD;#xA;&lt;/head&gt;   #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;Dear %msg_fromname%&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;     &lt;/p&gt;#xD;#xA;&lt;p&gt;      Thank you for contacting us.     &lt;/p&gt;#xD;#xA;&lt;p&gt;      Please accept this email as confirmation that we are in receipt of your #xD;#xA;query/supporting information. This will be reviewed as soon as possible.     #xD;#xA;&lt;/p&gt;#xD;#xA;&lt;p&gt;      Please note that supporting information received after 17:15 or on a #xD;#xA;weekend may not be reviewed until the next working day. &lt;/p&gt;#xD;#xA;&lt;p&gt;      Kind Regards     &lt;/p&gt;#xD;#xA;&lt;p&gt;Customer Service &lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>4016240047</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>7F5041504E</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>92D52D704E</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>73843D3048</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>238A3D3048</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B03E2F10C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A68F2900C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>339B53A0C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>1E18F410C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>2F863D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>495D3D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>80643D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>5F1C3D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>3FE63D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D67D3D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>279A3D7048</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>A4B03D7048</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>052C3D8048</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E87F3DA048</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>CCA43DC048</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>50983DD048</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>80553DE048</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>A6EB27D02B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|dsgfs.com</Line><Line>Or|%msg_from%|?|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|?|connectedcarfinance.co.uk</Line><Line>Or|%msg_from%|?|oodlefinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>88E52BC02B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>75F72FC02B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>8C11C47047</ID>
			<Enabled>-1</Enabled>
			<From>payouts@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;     #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;     #xD;#xA;&lt;title&gt;&lt;/title&gt;   #xD;#xA;&lt;/head&gt;   #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;      Dear %msg_fromname%&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;     &lt;/p&gt;#xD;#xA;&lt;p&gt;      Thank you for contacting us.     &lt;/p&gt;#xD;#xA;&lt;p&gt;      Please accept this email as confirmation that we are in receipt of your #xD;#xA;query/supporting information. This will be reviewed as soon as possible.     #xD;#xA;&lt;/p&gt;#xD;#xA;&lt;p&gt;      Please note that supporting information received after 17:15 or on a #xD;#xA;weekend may not be reviewed until the next working day.     &lt;/p&gt;#xD;#xA;&lt;p&gt;      Kind Regards     &lt;/p&gt;#xD;#xA;&lt;p&gt;Customer Service     &lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>C97839102B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>9C0B3D602B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B81444502B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>7AD32B9048</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>69CE291047</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Payout Inbound Email Processing'

 --BM/LCV Process Emails
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>35F320E0A1</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>#xD;#xA;#xD;#xA;On Wednesday, 29 July 2020 16:48:00 UTC+1, Pay Outs wrote:#xD;#xA;&gt;#xD;#xA;&gt; Hello #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Thank you for your email, the underwriters have reviewed the bank #xD;#xA;&gt; statements and have advised that we are ok to proceed with capacity however #xD;#xA;&gt; we still require the following :-#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; 1 Customers most recent payslip#xD;#xA;&gt;#xD;#xA;&gt; 2. DL and DVLA share code#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; *Kind Regards,*#xD;#xA;&gt;#xD;#xA;&gt; *Sarah Denton*#xD;#xA;&gt;#xD;#xA;&gt; *Payouts Co-ordinator*#xD;#xA;&gt;#xD;#xA;&gt; Marsh Finance Limited#xD;#xA;&gt;#xD;#xA;&gt; ( Tel: 01706 751279| Fax: 01706 759158#xD;#xA;&gt; *Crossfield Mill, Crawford Street, Rochdale, OL16 5RS*#xD;#xA;&gt; [image: cid:image002.png@01D19EDC.B0236B40]#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; [image: cid:image002.jpg@01D46C6A.93E24600]#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; *From:* Business Managers &lt;bm.internal@dsgfs.com&gt; #xD;#xA;&gt; *Sent:* 29 July 2020 09:22#xD;#xA;&gt; *To:* Business Managers &lt;bm.internal@dsgfs.com&gt;#xD;#xA;&gt; *Cc:* Pay Outs &lt;payouts@marshfinance.co.uk&gt;#xD;#xA;&gt; *Subject:* PN701619 | Primary Applicant: Mason, Connor, 09/12/1996#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Hi,#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Please can these be reviewed for capacity. #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Other proofs to follow. #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Many thanks#xD;#xA;&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>Fwd: PN701619 | Primary Applicant: Mason, Connor, 09/12/1996</HelperSubject>
	<HelperTo>customer.services@dsgfs.com</HelperTo>
	<TriggerName>BM/LCV Process Emails</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>6316380066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 11:58:21</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([6-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>169</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<MaxLength>100</MaxLength>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=Email2DB_PrePropActions</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>8FF219A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>2DD620A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>379F6620C6</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OB_EmailAddress</EnvironmentVarName>
			<InsertFieldName>OB_EmailAddress</InsertFieldName>
			<LookFor>Email address:</LookFor>
			<Name>OB_EmailAddress</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>5F1A3840C6</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OB_ProposalID</EnvironmentVarName>
			<InsertFieldName>OB_ProposalID</InsertFieldName>
			<LookFor>([6-9]{1})([0-9]{5})</LookFor>
			<Name>OB_ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F6F6CB10C6</ID>
			<Enabled>-1</Enabled>
			<InsertFieldName>OB_ValidPN</InsertFieldName>
			<Name>OB_ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%OB_ProposalID%)</LookupSQL>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>07E7222006</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_LEM_Result</EnvironmentVarName>
			<InsertFieldName>LEM_Result</InsertFieldName>
			<LookFor>KYC Result:</LookFor>
			<Name>LEM_Result</Name>
			<StartFromLastExtractPoint>-1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>End</Class>
			<ID>06D4C2F005</ID>
			<LogicalType>4</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|liaison@dsgfs.com</Line><Line>And|%msg_subject%|?|New Acceptance Release</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>5F921F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E9681F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>60061F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FD0F2920C7</ID>
			<Comment>From: %msg_from%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>DAF79300C4</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|Eclipse@moneybarn.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>AD0D42F0C4</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed BM Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>bm.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>F2BDF790C4</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>EB5F9300C4</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B8301F40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_subject%|?|AUTO REPLY</Line><Line>Or|%msg_from%|=|underwriting@bmwfin.com</Line><Line>Or|%msg_from%|=|PANCredit@motonovofinance.com</Line><Line>Or|%msg_subject%|?|Auto Response: Iveco Capital</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>67871F40C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>D9211F40C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>30631F50C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>A1C520A06D</ID>
			<LogicalType>5</LogicalType>
			<LabelName>LEM Password Reset</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>44BA38906D</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|no-reply@verificationemail.com</Line><Line>And|%msg_subject%|?|Your LEM Verify verification code</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>77A538906D</ID>
			<Comment>Lem password verify email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>5B683BF06D</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>allteams@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>70898EC097</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>polly.heffron@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>C141FC406D</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>22E138906D</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>6500223006</ID>
			<LogicalType>5</LogicalType>
			<LabelName>LEM Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>8DC44FC006</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@lemverify.com</Line><Line>And|%msg_subject%|?|Verification Result</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F0DD4FC006</ID>
			<Comment>LEM Verify Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>A271221006</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>3E4E221006</ID>
			<Comment>PN Valid</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B7E2358006</ID>
			<Comment>Processing Attachment</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>03D431E006</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>1DF1322006</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>9C89326006</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>A97832A006</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>63D228C006</ID>
			<Comment>Getting prop info</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>268E380006</ID>
			<Enabled>-1</Enabled>
			<Name>SalesProcessID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>563FF1C006</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID], [InternalProcessID] from tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field><Field><Name>InternalProcessID</Name><AssignTo>%SalesProcessID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>04641E3006</ID>
			<Comment>Prop Status ID: %StatusID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DCF3F5C006</ID>
			<Comment>Sales Process ID: %SalesProcessID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>FABF342006</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|13</Line><Line>Or|%StatusID%|=|30</Line><Line>Or|%StatusID%|=|31</Line><Line>Or|%StatusID%|=|54</Line><Line>Or|%StatusID%|=|240</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>3AAD342006</ID>
			<Comment>Payouts</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>DC19453006</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>54</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>F7F442D006</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>CA592E3006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>92C6240006</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>60D4291006</ID>
			<Comment>Sales</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>CA3430100B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D37130100B</ID>
			<Comment>MDN</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F7303DB006</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>4C893DF006</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>D7613E2006</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>281</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>BF923E6006</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E2EA834006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>897B244006</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>2EE53AC006</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>09062BD006</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>282</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>7341690006</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>6596802006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>73BD30100B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>39B297E006</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BF4EF3100B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|4</Line><Line>Or|%SalesProcessID%|=|5</Line><Line>Or|%SalesProcessID%|=|7</Line><Line>Or|%SalesProcessID%|=|9</Line><Line>Or|%SalesProcessID%|=|10</Line><Line>Or|%SalesProcessID%|=|12</Line><Line>Or|%SalesProcessID%|=|18</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>5DF66BD00B</ID>
			<Comment>Digital</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>6B636E500B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>246170D00B</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>64B273500B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>283</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>AC1775E00B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>130B78700B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>24527B000B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>5DE97D900B</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>A65689D00B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>284</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>A04E82B00B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>A0D885500B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>C7B487F00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>9FE38A800B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>44A0B6B00B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|11</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D908B9700B</ID>
			<Comment>CCF</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B3BECE500B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0D07BED00B</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>509EC1800B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>285</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>23C8C4300B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B648C7000B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>245CC9D00B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F8C4CCA00B</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>F4BCD0400B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>286</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>4448D2500B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>49DFD0D00B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>8EC5D7F00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>077EDAD00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>03FFE2700B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|17</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>49D527300B</ID>
			<Comment>LCV</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E7FD27800B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>87B1E3500B</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E4F828100B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>287</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>8D8A28600B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>577328A00B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>73E628F00B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>26E629400B</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>323329900B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>288</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>34CF29D00B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>9FF92A200B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>2AAC2A700B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B2B02AC00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E00742D00B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|14</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D7E445F00B</ID>
			<Comment>Prestige</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>745349000B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B30320000B</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>3ABC4F900B</ID>
			<Name>LEMResultStatusID</Name>
			<Value>289</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>D00052E00B</ID>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>31EF22F10A</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5A1656300B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>5F8B20200B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>BF1220200B</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>38695FB00B</ID>
			<Name>LEMResultStatusID</Name>
			<Value>290</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>804962E00B</ID>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>9B96302031</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E87766200B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>83B469600B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>8A7D6CB00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>66DD27910A</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5C57F0C00B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>36E8342006</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>AE7B65D006</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>EEA2334006</ID>
			<Comment>LEM Email PN INVALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>1EE11DD006</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B0781FB006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6AB8221006</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B3E828E006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>4F894FC006</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>680A1A70C6</ID>
			<LogicalType>5</LogicalType>
			<LabelName>OpenBanking Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>D07E1DD0C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|?|openbanking@dsgfs.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>057C1DD0C6</ID>
			<Comment>OpenBanking Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>541A7440C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%OB_ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>BDB47440C6</ID>
			<Comment>PN Valid - checking current status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>98BE9170DF</ID>
			<Enabled>-1</Enabled>
			<Name>ProposalID</Name>
			<Value>%OB_ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>660A25D0C6</ID>
			<Enabled>-1</Enabled>
			<Name>SalesProcessID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>DEFD2900C6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID], [InternalProcessID] from tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field><Field><Name>InternalProcessID</Name><AssignTo>%SalesProcessID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>92ED2530C6</ID>
			<Comment>Prop Status ID: %StatusID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9E81FC60E6</ID>
			<Comment>Sales Process ID: %SalesProcessID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F7B459C0C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>44EF59C0C6</ID>
			<Comment>Awaiting Info From Dealer</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E2E8FD50C6</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>254</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>675CA3A0C6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>16771D50C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E53A59C0C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>D03991E0C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>4B4691E0C6</ID>
			<Comment>OB Email for Sales - MDN</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>78553C40C6</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>255</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>EC2E3C50C6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>42783C70C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>DA2091E0C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>82062650C9</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|4</Line><Line>Or|%SalesProcessID%|=|5</Line><Line>Or|%SalesProcessID%|=|7</Line><Line>Or|%SalesProcessID%|=|9</Line><Line>Or|%SalesProcessID%|=|10</Line><Line>Or|%SalesProcessID%|=|12</Line><Line>Or|%SalesProcessID%|=|18</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>87C52790C9</ID>
			<Comment>OB Email for Sales - Digital</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>353828C0C9</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>256</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>AED82A00C9</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>7BAD2B30C9</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A3292C70C9</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>418B3230C9</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|11</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>03E23370C9</ID>
			<Comment>OB Email for Sales - CCF</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>EE3934C0C9</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>257</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>73313600C9</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>AD473BC0F4</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal@connectedcarfinance.co.uk</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>26743750C9</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>254D3890C9</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9A8B1FA0C9</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|17</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>748A1FC0C9</ID>
			<Comment>OB Email for Sales - LCV</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>FB011FE0C9</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>258</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>C35F2010C9</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4A602040C9</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A3952060C9</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3F1F2D90E5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|14</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D9752DC0E5</ID>
			<Comment>OB Email for Sales - Prestige</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>185F2DF0E5</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>260</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>26892E20E5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>FA6F2E50E5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>BA952E80E5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>914524C0C9</ID>
			<Comment>No matching sales processes, forwarding</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>29782F70C9</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed OpenBanking Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ob.manual@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E9243D90C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>C4DF7440C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BEB53540C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%OB_EmailAddress%|email|</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>07813540C6</ID>
			<Comment>No PN found - looking up by email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>D644A1D0C6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 [Proposal ID],[Proposal Current Status ID] FROM tProposal WHERE [Proposal Customer E-Mail] = &apos;%OB_EmailAddress%&apos; ORDER BY [Proposal ID] DESC</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal ID</Name><AssignTo>%ProposalID%</AssignTo></Field><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F0011E20C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ProposalID%|len=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>80EE1E20C6</ID>
			<Comment>Status ID: %StatusID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>28F0F9B0C9</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>6B3AF9B0C9</ID>
			<Comment>Awaiting Info from Dealer</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>68443540C9</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>254</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>32AD8DF0C9</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>CBBA8F60C9</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E858F9B0C9</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>EE8CDF00E6</ID>
			<Enabled>-1</Enabled>
			<Name>SalesProcessID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>A6971B10E6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID], [InternalProcessID] from tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field><Field><Name>InternalProcessID</Name><AssignTo>%SalesProcessID%</AssignTo></Field></Field>
			</FieldAssignments'
 WHERE Name = 'BM/LCV Process Emails'
 

 --Copy of BM/LCV Process Emails
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>91A86F9072</TriggerID>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>#xD;#xA;#xD;#xA;On Wednesday, 29 July 2020 16:48:00 UTC+1, Pay Outs wrote:#xD;#xA;&gt;#xD;#xA;&gt; Hello #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Thank you for your email, the underwriters have reviewed the bank #xD;#xA;&gt; statements and have advised that we are ok to proceed with capacity however #xD;#xA;&gt; we still require the following :-#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; 1 Customers most recent payslip#xD;#xA;&gt;#xD;#xA;&gt; 2. DL and DVLA share code#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; *Kind Regards,*#xD;#xA;&gt;#xD;#xA;&gt; *Sarah Denton*#xD;#xA;&gt;#xD;#xA;&gt; *Payouts Co-ordinator*#xD;#xA;&gt;#xD;#xA;&gt; Marsh Finance Limited#xD;#xA;&gt;#xD;#xA;&gt; ( Tel: 01706 751279| Fax: 01706 759158#xD;#xA;&gt; *Crossfield Mill, Crawford Street, Rochdale, OL16 5RS*#xD;#xA;&gt; [image: cid:image002.png@01D19EDC.B0236B40]#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; [image: cid:image002.jpg@01D46C6A.93E24600]#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; *From:* Business Managers &lt;bm.internal@dsgfs.com&gt; #xD;#xA;&gt; *Sent:* 29 July 2020 09:22#xD;#xA;&gt; *To:* Business Managers &lt;bm.internal@dsgfs.com&gt;#xD;#xA;&gt; *Cc:* Pay Outs &lt;payouts@marshfinance.co.uk&gt;#xD;#xA;&gt; *Subject:* PN701619 | Primary Applicant: Mason, Connor, 09/12/1996#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Hi,#xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Please can these be reviewed for capacity. #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Other proofs to follow. #xD;#xA;&gt;#xD;#xA;&gt;  #xD;#xA;&gt;#xD;#xA;&gt; Many thanks#xD;#xA;&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>Fwd: PN701619 | Primary Applicant: Mason, Connor, 09/12/1996</HelperSubject>
	<HelperTo>customer.services@dsgfs.com</HelperTo>
	<TriggerName>Copy of BM/LCV Process Emails</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>6316380066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 11:58:21</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([6-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>169</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<MaxLength>100</MaxLength>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=Email2DB_PrePropActions</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>8FF219A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>2DD620A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>379F6620C6</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OB_EmailAddress</EnvironmentVarName>
			<InsertFieldName>OB_EmailAddress</InsertFieldName>
			<LookFor>Email address:</LookFor>
			<Name>OB_EmailAddress</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>5F1A3840C6</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OB_ProposalID</EnvironmentVarName>
			<InsertFieldName>OB_ProposalID</InsertFieldName>
			<LookFor>([6-9]{1})([0-9]{5})</LookFor>
			<Name>OB_ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F6F6CB10C6</ID>
			<Enabled>-1</Enabled>
			<InsertFieldName>OB_ValidPN</InsertFieldName>
			<Name>OB_ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%OB_ProposalID%)</LookupSQL>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>07E7222006</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_LEM_Result</EnvironmentVarName>
			<InsertFieldName>LEM_Result</InsertFieldName>
			<LookFor>KYC Result:</LookFor>
			<Name>LEM_Result</Name>
			<StartFromLastExtractPoint>-1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>End</Class>
			<ID>06D4C2F005</ID>
			<LogicalType>4</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|liaison@dsgfs.com</Line><Line>And|%msg_subject%|?|New Acceptance Release</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>5F921F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E9681F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>60061F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FD0F2920C7</ID>
			<Comment>From: %msg_from%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>DAF79300C4</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|Eclipse@moneybarn.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>AD0D42F0C4</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed BM Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>bm.internal@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>F2BDF790C4</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>EB5F9300C4</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B8301F40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_subject%|?|AUTO REPLY</Line><Line>Or|%msg_from%|=|underwriting@bmwfin.com</Line><Line>Or|%msg_from%|=|PANCredit@motonovofinance.com</Line><Line>Or|%msg_subject%|?|Auto Response: Iveco Capital</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>67871F40C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>D9211F40C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>30631F50C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>A1C520A06D</ID>
			<LogicalType>5</LogicalType>
			<LabelName>LEM Password Reset</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>44BA38906D</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|no-reply@verificationemail.com</Line><Line>And|%msg_subject%|?|Your LEM Verify verification code</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>77A538906D</ID>
			<Comment>Lem password verify email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>5B683BF06D</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>allteams@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>70898EC097</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>polly.heffron@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>C141FC406D</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>22E138906D</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>6500223006</ID>
			<LogicalType>5</LogicalType>
			<LabelName>LEM Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>8DC44FC006</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@lemverify.com</Line><Line>And|%msg_subject%|?|Verification Result</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F0DD4FC006</ID>
			<Comment>LEM Verify Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>A271221006</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>3E4E221006</ID>
			<Comment>PN Valid</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B7E2358006</ID>
			<Comment>Processing Attachment</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>03D431E006</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>1DF1322006</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>9C89326006</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>A97832A006</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>63D228C006</ID>
			<Comment>Getting prop info</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>268E380006</ID>
			<Enabled>-1</Enabled>
			<Name>SalesProcessID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>563FF1C006</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID], [InternalProcessID] from tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field><Field><Name>InternalProcessID</Name><AssignTo>%SalesProcessID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>04641E3006</ID>
			<Comment>Prop Status ID: %StatusID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DCF3F5C006</ID>
			<Comment>Sales Process ID: %SalesProcessID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>FABF342006</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|13</Line><Line>Or|%StatusID%|=|30</Line><Line>Or|%StatusID%|=|31</Line><Line>Or|%StatusID%|=|54</Line><Line>Or|%StatusID%|=|240</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>3AAD342006</ID>
			<Comment>Payouts</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>DC19453006</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>54</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>F7F442D006</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>CA592E3006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>92C6240006</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>60D4291006</ID>
			<Comment>Sales</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>CA3430100B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D37130100B</ID>
			<Comment>MDN</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F7303DB006</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>4C893DF006</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>D7613E2006</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>281</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>BF923E6006</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E2EA834006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>897B244006</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>2EE53AC006</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>09062BD006</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>282</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>7341690006</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>6596802006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>73BD30100B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>39B297E006</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BF4EF3100B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|4</Line><Line>Or|%SalesProcessID%|=|5</Line><Line>Or|%SalesProcessID%|=|7</Line><Line>Or|%SalesProcessID%|=|9</Line><Line>Or|%SalesProcessID%|=|10</Line><Line>Or|%SalesProcessID%|=|12</Line><Line>Or|%SalesProcessID%|=|18</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>5DF66BD00B</ID>
			<Comment>Digital</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>6B636E500B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>246170D00B</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>64B273500B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>283</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>AC1775E00B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>130B78700B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>24527B000B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>5DE97D900B</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>A65689D00B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>284</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>A04E82B00B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>A0D885500B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>C7B487F00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>9FE38A800B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>44A0B6B00B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|11</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D908B9700B</ID>
			<Comment>CCF</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B3BECE500B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0D07BED00B</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>509EC1800B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>285</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>23C8C4300B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B648C7000B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>245CC9D00B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F8C4CCA00B</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>F4BCD0400B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>286</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>4448D2500B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>49DFD0D00B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>8EC5D7F00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>077EDAD00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>03FFE2700B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|17</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>49D527300B</ID>
			<Comment>LCV</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E7FD27800B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>87B1E3500B</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E4F828100B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>287</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>8D8A28600B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>577328A00B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>73E628F00B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>26E629400B</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>323329900B</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>288</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>34CF29D00B</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>9FF92A200B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>2AAC2A700B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B2B02AC00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E00742D00B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|14</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D7E445F00B</ID>
			<Comment>Prestige</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>745349000B</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B30320000B</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>3ABC4F900B</ID>
			<Name>LEMResultStatusID</Name>
			<Value>289</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>D00052E00B</ID>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>31EF22F10A</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5A1656300B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>5F8B20200B</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>BF1220200B</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>38695FB00B</ID>
			<Name>LEMResultStatusID</Name>
			<Value>290</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>804962E00B</ID>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>9B96302031</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E87766200B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>83B469600B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>8A7D6CB00B</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>66DD27910A</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5C57F0C00B</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>36E8342006</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>AE7B65D006</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>EEA2334006</ID>
			<Comment>LEM Email PN INVALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>1EE11DD006</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B0781FB006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6AB8221006</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B3E828E006</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>4F894FC006</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>680A1A70C6</ID>
			<LogicalType>5</LogicalType>
			<LabelName>OpenBanking Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>D07E1DD0C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_to%|?|openbanking@dsgfs.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>057C1DD0C6</ID>
			<Comment>OpenBanking Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>541A7440C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%OB_ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>BDB47440C6</ID>
			<Comment>PN Valid - checking current status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>98BE9170DF</ID>
			<Enabled>-1</Enabled>
			<Name>ProposalID</Name>
			<Value>%OB_ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>660A25D0C6</ID>
			<Enabled>-1</Enabled>
			<Name>SalesProcessID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>DEFD2900C6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID], [InternalProcessID] from tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field><Field><Name>InternalProcessID</Name><AssignTo>%SalesProcessID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>92ED2530C6</ID>
			<Comment>Prop Status ID: %StatusID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9E81FC60E6</ID>
			<Comment>Sales Process ID: %SalesProcessID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F7B459C0C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>44EF59C0C6</ID>
			<Comment>Awaiting Info From Dealer</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E2E8FD50C6</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>254</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>675CA3A0C6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>16771D50C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E53A59C0C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>D03991E0C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>4B4691E0C6</ID>
			<Comment>OB Email for Sales - MDN</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>78553C40C6</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>255</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>EC2E3C50C6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>42783C70C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>DA2091E0C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>82062650C9</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|4</Line><Line>Or|%SalesProcessID%|=|5</Line><Line>Or|%SalesProcessID%|=|7</Line><Line>Or|%SalesProcessID%|=|9</Line><Line>Or|%SalesProcessID%|=|10</Line><Line>Or|%SalesProcessID%|=|12</Line><Line>Or|%SalesProcessID%|=|18</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>87C52790C9</ID>
			<Comment>OB Email for Sales - Digital</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>353828C0C9</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>256</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>AED82A00C9</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>7BAD2B30C9</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A3292C70C9</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>418B3230C9</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|11</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>03E23370C9</ID>
			<Comment>OB Email for Sales - CCF</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>EE3934C0C9</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>257</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>73313600C9</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>AD473BC0F4</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal@connectedcarfinance.co.uk</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>26743750C9</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>254D3890C9</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9A8B1FA0C9</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|17</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>748A1FC0C9</ID>
			<Comment>OB Email for Sales - LCV</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>FB011FE0C9</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>258</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>C35F2010C9</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4A602040C9</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A3952060C9</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3F1F2D90E5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|14</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D9752DC0E5</ID>
			<Comment>OB Email for Sales - Prestige</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>185F2DF0E5</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>260</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>26892E20E5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>FA6F2E50E5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>BA952E80E5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>914524C0C9</ID>
			<Comment>No matching sales processes, forwarding</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>29782F70C9</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed OpenBanking Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>ob.manual@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>E9243D90C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>C4DF7440C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BEB53540C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%OB_EmailAddress%|email|</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>07813540C6</ID>
			<Comment>No PN found - looking up by email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>D644A1D0C6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT TOP 1 [Proposal ID],[Proposal Current Status ID] FROM tProposal WHERE [Proposal Customer E-Mail] = &apos;%OB_EmailAddress%&apos; ORDER BY [Proposal ID] DESC</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal ID</Name><AssignTo>%ProposalID%</AssignTo></Field><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F0011E20C6</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ProposalID%|len=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>80EE1E20C6</ID>
			<Comment>Status ID: %StatusID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>28F0F9B0C9</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|6</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>6B3AF9B0C9</ID>
			<Comment>Awaiting Info from Dealer</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>68443540C9</ID>
			<Enabled>-1</Enabled>
			<Name>OB_Prop_Status</Name>
			<Value>254</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>32AD8DF0C9</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %OB_Prop_Status%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>CBBA8F60C9</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E858F9B0C9</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>EE8CDF00E6</ID>
			<Enabled>-1</Enabled>
			<Name>SalesProcessID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>A6971B10E6</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID], [InternalProcessID] from tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field><Field><Name>InternalProcessID</Name><AssignTo>%SalesProcessID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trig'
 WHERE Name = 'Copy of BM/LCV Process Emails'
 

 --Email Processing
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>AF061ED0CE</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>Please can we send docs ASAP. Customer in showroom xx#xD;#xA;#xD;#xA;-- #xD;#xA;PN544444#xD;#xA;&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Chelsea Ward*#xD;#xA;Business Manager#xD;#xA;chelsea.ward@dsgfs.com#xD;#xA;Tel: 0844 880 6787 Fax: 0844 880 8293#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>urgent docs - PN554025 | Primary Applicant: Whitfield, Kimberly, TRUSTFORD</HelperSubject>
	<HelperTo>payout.info@dsgfs.com</HelperTo>
	<TriggerName>Email Processing</TriggerName>
	<ReceivedAfter>2022-09-15 00:00:00</ReceivedAfter>
	<SaveToFolderID>82DC3C90CE</SaveToFolderID>
	<LastEditedByUserID>9B231B50BA</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>183</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F98D28E04E</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>Payouts_CheckForActionsToStopProcessing</InsertFieldName>
			<LookFor>Payouts_CheckForActionsToStopProcessing</LookFor>
			<Name>Payouts_CheckForActionsToStopProcessing</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT [dbo].[Payouts_CheckForActionsToStopProcessing] (%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>C1B6214046</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>3C532920C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>CA233D0048</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>40C13D0048</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>98EB3D0048</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F3C71D20CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|moneybarn.com</Line><Line>Or|%msg_from%|=|payments.cf@hitachicapital.co.uk</Line><Line>Or|%msg_from%|=|bfproposals@hitachicapital.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>FDB93690C6</ID>
			<Comment>Global Exception to Processing Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>925799D0C6</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.prestige@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>4A44FD00C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>B5F73690C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1A0C2870C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F4A82880C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5ADF28A0C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>7B3728B0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>3C571AC093</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line><Line>Or|%msg_from%|=|bfcustomersupport@hitachicapital.co.uk</Line><Line>Or|%msg_from%|=|add.info@minifin.co.uk</Line><Line>Or|%msg_from%|=|customerservices-mbfs@daimler.com</Line><Line>Or|%msg_subject%|=|Thank you for your enquiry with Novuna Business Finance - This is an automated response, please do not respond.</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A90C1AE093</ID>
			<Comment>Prevent loop from &quot;noreply&quot; acknowledgements</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>197C1B0093</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>ED021B1093</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F5741B40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>90C66D4144</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_html%|^|</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F5F26D4144</ID>
			<Comment>HTML Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>89BA2F812C</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;     #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;     #xD;#xA;&lt;title&gt;&lt;/title&gt;   #xD;#xA;&lt;/head&gt;   #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;Below email received without a valid PN:     &lt;/p&gt;#xD;#xA;&lt;p&gt;      Sender: %msg_from%&lt;br /&gt;      To: %msg_to%&lt;br /&gt;      CC: %msg_cc%     &lt;/p&gt;#xD;#xA;&lt;p&gt;      *********************************     &lt;/p&gt;#xD;#xA;&lt;p&gt;      %msg_html%&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>internal.prestigepayouts@dsgfs.com</SendTo>
			<Subject>[Unprocessed] %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>82706D4144</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>7256C75110</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>Or|%msg_from%|=|AFCredit@aldermore.co.uk</Line><Line>Or|%msg_from%|=|AFCS@aldermore.co.uk</Line><Line>Or|%msg_from%|=|PANCredit@motonovofinance.com</Line><Line>Or|%msg_from%|=|payouts@novunabusinessfinance.co.uk</Line><Line>Or|%msg_from%|?|@dsgfs.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>AFFA1D8111</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>551A21C111</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>0C5E3AC077</ID>
			<Enabled>-1</Enabled>
			<From>prestige@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: rgb(0, 0, 0); font-family: HelveticaNeue,sans-serif;&quot;&gt;#xD;#xA;    &lt;table border=&quot;0&quot;&gt;#xD;#xA;      &lt;tbody&gt;#xD;#xA;        &lt;tr&gt;#xD;#xA;          &lt;td align=&quot;center&quot;&gt;#xD;#xA;            &lt;p style=&quot;font-size: 12px;&quot;&gt;#xD;#xA;              &lt;strong&gt;Email not displaying properly?&lt;/strong&gt; If you&apos;re using Outlook, add our domain to your Safe Senders list.&lt;br&gt;#xD;#xA;              &lt;a href=&quot;https://support.office.com/en-us/article/block-or-unblock-automatic-picture-downloads-in-email-messages-15e08854-6808-49b1-9a0a-50b81f2d617a&quot; target=&quot;_blank&quot;&gt;Click here for instructions&lt;/a&gt;#xD;#xA;            &lt;/p&gt;#xD;#xA;            &lt;table class=&quot;Cental&quot; style=&quot;width: 100%; color: rgb(0, 0, 0); max-width: 650px; background-color: rgb(255, 255, 255);&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot;&gt;#xD;#xA;              &lt;tbody&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;text-align: left;&quot;&gt;#xD;#xA;                    &lt;a style=&quot;padding-left: 20px;&quot; href=&quot;https://www.dsgfs.com&quot; target=&quot;_blank&quot;&gt;&lt;img width=&quot;220&quot; height=&quot;60&quot; align=&quot;top&quot; id=&quot;customHeaderImage&quot; alt=&quot;DSG Logo&quot; src=&quot;https://www.dsgfs.com/images/EmailHeaderLogo3.png&quot; border=&quot;0&quot; label=&quot;Header Image&quot;&gt;&lt;/a&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td style=&quot;padding: 20px;&quot;&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Thank you for your email.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      For a quicker service if you include the proposal PN number this will result in the contents being uploaded to the system and allocated to our team to deal with.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      You will find the proposal number in most of our communications with you (it is prefixed with PN followed by 6 numbers). If you include this anywhere in the subject of your emails, we can get to you quicker.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Your email will now be manually reviewed and we will endeavour to get back to you as soon as possible.#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      Regards#xD;#xA;                    &lt;/p&gt;#xD;#xA;                    &lt;p&gt;#xD;#xA;                      DSG Team#xD;#xA;                    &lt;/p&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;                &lt;tr&gt;#xD;#xA;                  &lt;td&gt;#xD;#xA;                    &lt;table class=&quot;Cental footer&quot; style=&quot;color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                      &lt;tbody&gt;#xD;#xA;                        &lt;tr&gt;#xD;#xA;                          &lt;td&gt;#xD;#xA;                            &lt;div style=&quot;padding: 20px; color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Financial Services Ltd is authorised and regulated by the Financial Conduct Authority.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                Tel: 0844 815 8888 | Web: &lt;a style=&quot;color: rgb(255, 255, 255); font-weight: bold;&quot; href=&quot;www.dsgfs.com&quot; target=&quot;_blank&quot;&gt;www.dsgfs.com&lt;/a&gt;#xD;#xA;                              &lt;/p&gt;#xD;#xA;                              &lt;p&gt;#xD;#xA;                                DSG Prestige, 55-60 Pegholme, Wharfebank Mills, Ilkley Road, Otley, Yorkshire, LS21 3JP. Registered in England 02313903.#xD;#xA;                              &lt;/p&gt;#xD;#xA;                            &lt;/div&gt;#xD;#xA;                          &lt;/td&gt;#xD;#xA;                        &lt;/tr&gt;#xD;#xA;                      &lt;/tbody&gt;#xD;#xA;                    &lt;/table&gt;#xD;#xA;                  &lt;/td&gt;#xD;#xA;                &lt;/tr&gt;#xD;#xA;              &lt;/tbody&gt;#xD;#xA;            &lt;/table&gt;#xD;#xA;          &lt;/td&gt;#xD;#xA;        &lt;/tr&gt;#xD;#xA;      &lt;/tbody&gt;#xD;#xA;    &lt;/table&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>DA3EC75110</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B4DEF570C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>82A71C90C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E45D3D0048</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B9DC3D0048</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1D4E1E80C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>05BB1E80C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>73843D3048</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>238A3D3048</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>B03E2F10C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A68F2900C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>339B53A0C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>1E18F410C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>2F863D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>495D3D4048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>80643D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>5F1C3D5048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>3FE63D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D67D3D6048</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>279A3D7048</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Prestige Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Prestige Email Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>052C3D8048</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>CCA43DC048</ID>
			<Comment>Set status to &apos;More Info In&apos; and inset into DB</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>36381E10C3</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>308</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>50983DD048</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>80553DE048</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>CE07678118</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|@dsgfs.com</Line><Line>Or|%msg_from%|=|AFCredit@aldermore.co.uk</Line><Line>Or|%msg_from%|=|AFCS@aldermore.co.uk</Line><Line>Or|%msg_from%|=|PANCredit@motonovofinance.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>536A389111</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>E1EA3B3111</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>8E03228077</ID>
			<Enabled>-1</Enabled>
			<From>prestige@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;     &lt;title&gt;&lt;/title&gt;     #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;   #xD;#xA;&lt;/head&gt;   #xD;#xA;&lt;body style=&quot;color: rgb(0, 0, 0); font-family: HelveticaNeue,sans-serif;&quot;&gt;#xD;#xA;&lt;table border=&quot;0&quot;&gt;#xD;#xA;  &lt;tbody&gt;#xD;#xA;  &lt;tr&gt;#xD;#xA;    &lt;td align=&quot;center&quot;&gt;#xD;#xA;      &lt;p style=&quot;font-size: 12px;&quot;&gt;&lt;strong&gt;Email not displaying #xD;#xA;      properly?&lt;/strong&gt; If you&apos;re using Outlook, add our domain to your Safe #xD;#xA;      Senders list.&lt;br /&gt;&lt;a href=&quot;https://support.office.com/en-us/article/block-or-unblock-automatic-picture-downloads-in-email-messages-15e08854-6808-49b1-9a0a-50b81f2d617a&quot; target=&quot;_blank&quot;&gt;Click here for instructions&lt;/a&gt;             &lt;/p&gt;#xD;#xA;      &lt;table class=&quot;Cental&quot; style=&quot;width: 100%; color: rgb(0, 0, 0); max-width: 650px; background-color: rgb(255, 255, 255);&quot; cellspacing=&quot;0&quot; cellpadding=&quot;0&quot; border=&quot;0&quot;&gt;#xD;#xA;        &lt;tbody&gt;#xD;#xA;        &lt;tr&gt;#xD;#xA;          &lt;td style=&quot;text-align: left;&quot;&gt;&lt;a style=&quot;padding-left: 20px;&quot; href=&quot;https://www.dsgfs.com&quot; target=&quot;_blank&quot;&gt;&lt;img width=&quot;220&quot; height=&quot;60&quot; align=&quot;top&quot; id=&quot;customHeaderImage&quot; alt=&quot;DSG Logo&quot; src=&quot;https://www.dsgfs.com/images/EmailHeaderLogo3.png&quot; border=&quot;0&quot; label=&quot;Header Image&quot; /&gt;&lt;/a&gt;                   &lt;/td&gt;&lt;/tr&gt;#xD;#xA;        &lt;tr&gt;#xD;#xA;          &lt;td style=&quot;padding: 20px;&quot;&gt;#xD;#xA;            &lt;h1&gt;                      Proposal Update                     &lt;/h1&gt;#xD;#xA;            &lt;p&gt;                      Thanks for coming back to us, this is an #xD;#xA;            automated response to let you know we&apos;ve received your email.        #xD;#xA;                         &lt;/p&gt;#xD;#xA;            &lt;p&gt;                      We will process your request as soon as #xD;#xA;            possible and be in touch shortly.                     &lt;/p&gt;#xD;#xA;            &lt;p&gt;&lt;strong&gt;Please note that supporting information received after #xD;#xA;            17:00 or on a weekend may not be reviewed until the next working #xD;#xA;            day&lt;/strong&gt;                     &lt;/p&gt;#xD;#xA;            &lt;p&gt;                      Regards                     &lt;/p&gt;#xD;#xA;            &lt;p&gt;                      DSG Team                     &lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;#xD;#xA;        &lt;tr&gt;#xD;#xA;          &lt;td&gt;#xD;#xA;            &lt;table class=&quot;Cental footer&quot; style=&quot;color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;              &lt;tbody&gt;#xD;#xA;              &lt;tr&gt;#xD;#xA;                &lt;td&gt;#xD;#xA;                  &lt;div style=&quot;padding: 20px; color: rgb(214, 214, 214); background-color: rgb(30, 31, 29);&quot;&gt;#xD;#xA;                  &lt;p&gt;                                DSG Financial Services Ltd #xD;#xA;                  is authorised and regulated by the Financial Conduct #xD;#xA;                  Authority.                               &lt;/p&gt;#xD;#xA;                  &lt;p&gt;                                Tel: 0844 815 8888 | Web: #xD;#xA;                  &lt;a style=&quot;color: rgb(255, 255, 255); font-weight: bold;&quot; href=&quot;www.dsgfs.com&quot;&gt;www.dsgfs.com&lt;/a&gt; #xD;#xA;                                                &lt;/p&gt;#xD;#xA;                  &lt;p&gt;                                DSG Prestige, 55-60 #xD;#xA;                  Pegholme, Wharfebank Mills, Ilkley Road, Otley, Yorkshire, #xD;#xA;                  LS21 3JP. Registered in England 02313903.                      #xD;#xA;                           #xD;#xA;  &lt;/p&gt;&lt;/div&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>661C2D5110</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>08771E80C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Email Processing'
 

 --FCF Emails
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>106B36201F</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>Mrs Susan Roughton#xD;#xA;Proposal Ref: 3667581#xD;#xA;87 Arail Street, Six Bells, Abertillery, Gwent, NP13 2NH#xD;#xA;168 Mount Pleasant Estate, NP13 2HZ#xD;#xA;#xD;#xA;This proposal is regretfully declined. In the strictest confidence for your private information, and not for disclosure to any other party, including the applicant or dealer, the reason is:#xD;#xA;#xD;#xA;#xD;#xA; - Adverse Credit#xD;#xA;#xD;#xA;#xD;#xA;The decision was based on information provided by Experian. The applicant should contact Experian, PO Box 7710, Nottingham, NG807WE Telephone Number: 0844 481 8000 or visit www.creditexpert.co.uk, if they require further details of the information provided by this credit reference agency. #xD;#xA;#xD;#xA;If you are able, supported by documentary proof, to demonstrate that none of the above reasons for decline apply or able to provide further addresses or information that may affect this decision, you should contact the New Business Department and ask them to review the decision.#xD;#xA;#xD;#xA;Regards #xD;#xA;Private &amp; Commercial Finance Group plc#xD;#xA;Consumer Finance Division#xD;#xA;Pinners Hall, 105 - 108 Old Broad Street, London, EC2N 1ER#xD;#xA;Telephone: 0207-2277506, Fax: 0207-9760243, Email: autodecision@pcf.bank#xD;#xA;31 Dec 2019 13:10#xD;#xA;#xD;#xA;Disclaimer#xD;#xA;#xD;#xA;PCF Bank Limited is authorised by the Prudential Regulation Authority and regulated by the Financial Conduct Authority and the Prudential Regulation Authority, FRN number 747017. The Bank is registered in England and Wales, registration number 02794633 and is wholly owned by PCF Group plc, a company registered in England and Wales, registration number 02863246 and listed on the Alternative Investment Market. Certain subsidiaries of the Bank are authorised and regulated by the Financial Conduct Authority for consumer credit activities. Registered offices are at Pinners Hall, 105-108 Old Broad Street, London EC2N 1ER.#xD;#xA;#xD;#xA;You can find out more about how we use your personal information by reading our recently updated privacy policy at www.pcf.bank/privacy#xD;#xA;#xD;#xA;This message is for the designated recipient only and may contain privileged, proprietary, or otherwise private and/or confidential information. The sender does not waive any related rights and obligations. If you are not the designated recipient any use by you of the email is prohibited. Please notify the sender immediately and destroy any copies and attachments.#xD;#xA;#xD;#xA;The contents of any attachment to this e-mail may contain software viruses or other defects which might affect your own computer system once received or opened. While PCF Bank Limited and its affiliates take reasonable precautions to minimise that risk, we cannot accept liability or responsibility for any damage or loss which may occur or be sustained as a result of a software virus or other defect. You are responsible for making virus checks before opening any attachment.#xD;#xA;#xD;#xA;</HelperMessage>
	<HelperSubject>Deferral Susan Roughton</HelperSubject>
	<HelperTo>customer.services@dsgfs.com</HelperTo>
	<TriggerName>FCF Emails</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>6316380066</SaveToFolderID>
	<LastEditedByUserID>D5DB31F15B</LastEditedByUserID>
	<LastEditedDate>2017-07-03 11:58:21</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>2DD620A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>277B31F01F</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ActionType</EnvironmentVarName>
			<LookFor>Action:</LookFor>
			<Name>ActionType</Name>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>End</Class>
			<ID>0E181E101F</ID>
			<LogicalType>4</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1D6A413156</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>2A9139C01F</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ActionType%|=|Note</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>942C39C01F</ID>
			<Comment>NOTE</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>64CD2D8156</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>12</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>86FE3CF156</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (%ProposalID%, %StatusID%, &apos;%SQLDateTime%&apos;, &apos;Flow Team&apos;, &apos;%msg_body%&apos;, &apos;%msg_subject%&apos;)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>8AEC5F101F</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>9B5739C01F</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>0F071D001F</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ActionType%|=|SMS Out</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>AFE71D001F</ID>
			<Comment>SMS OUT</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>851C1D001F</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>136</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>355C1D001F</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (%ProposalID%, %StatusID%, &apos;%SQLDateTime%&apos;, &apos;Flow Team&apos;, &apos;%msg_body%&apos;, &apos;%msg_subject%&apos;)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>15D62EA01F</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>C8721D101F</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>926A89A0CE</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ActionType%|=|Quote Customer</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0D7789A0CE</ID>
			<Comment>QUOTE CUSTOMER</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>6FDFA300CE</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>179</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>9A652050CE</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (%ProposalID%, %StatusID%, &apos;%SQLDateTime%&apos;, &apos;Flow Team&apos;, &apos;%msg_body%&apos;, &apos;%msg_subject%&apos;)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>53133CF0CE</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>9C5189A0CE</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>4CC13B201F</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|Flow Dash Application</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>78F13B201F</ID>
			<Comment>Dash App</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>715231A01F</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>292</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>84023B301F</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (%ProposalID%, %StatusID%, &apos;%SQLDateTime%&apos;, &apos;Flow Team&apos;, &apos;%msg_body%&apos;, &apos;%msg_subject%&apos;)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>8BC23B301F</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>F0B53B301F</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>98E92AA083</ID>
			<LogicalType>5</LogicalType>
			<LabelName>LEM Password Reset</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>032C2AA083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|no-reply@verificationemail.com</Line><Line>And|%msg_subject%|?|Your LEM Verify verification code</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>81292AA083</ID>
			<Comment>Lem password verify email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>46FF2AB083</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>allteams@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B5AF2AB083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>E2632AB083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Label</Class>
			<ID>A4702AB083</ID>
			<LogicalType>5</LogicalType>
			<LabelName>LEM Emails</LabelName>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>A3082AC083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@lemverify.com</Line><Line>And|%msg_subject%|?|Verification Result</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A3142AC083</ID>
			<Comment>LEM Verify Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>7EDA2AC083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>20502AC083</ID>
			<Comment>PN Valid</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>6CF82AD083</ID>
			<Comment>Processing Attachment</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>871A2AD083</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>79442AE083</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>A2C52AE083</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>C31D2AE083</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Proofs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>5EA72AF083</ID>
			<Comment>Getting prop info</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>43E12AF083</ID>
			<Enabled>-1</Enabled>
			<Name>SalesProcessID</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>11282B0083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID], [InternalProcessID] from tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field><Field><Name>InternalProcessID</Name><AssignTo>%SalesProcessID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D9EE2B0083</ID>
			<Comment>Prop Status ID: %StatusID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>C3962B1083</ID>
			<Comment>Sales Process ID: %SalesProcessID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>C78E2B1083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%StatusID%|=|13</Line><Line>Or|%StatusID%|=|30</Line><Line>Or|%StatusID%|=|31</Line><Line>Or|%StatusID%|=|54</Line><Line>Or|%StatusID%|=|240</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>C3952B2083</ID>
			<Comment>Payouts</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>19102B2083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>54</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>24682B3083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>03202B3083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>9FED2B4083</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7A812B4083</ID>
			<Comment>Sales</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>53982B5083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>04B72B5083</ID>
			<Comment>MDN</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>ED2C2B6083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>348C2B6083</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>50672B7083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>281</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>38922B8083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>80D12B8083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>A8D42B9083</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0D752B9083</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>D0602BA083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>282</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>885C2BB083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>0D382BB083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>86932BC083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>683D2BC083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9FEA2BD083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|4</Line><Line>Or|%SalesProcessID%|=|5</Line><Line>Or|%SalesProcessID%|=|7</Line><Line>Or|%SalesProcessID%|=|9</Line><Line>Or|%SalesProcessID%|=|10</Line><Line>Or|%SalesProcessID%|=|12</Line><Line>Or|%SalesProcessID%|=|18</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F5752BE083</ID>
			<Comment>Digital</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B1962BE083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>C1F22BF083</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>49742C0083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>283</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>310D2C1083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>42E62C1083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>B5FD2C2083</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>012E2C3083</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>9C8F2C4083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>284</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>04212C4083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>760E2C5083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>43EF2C6083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>5C102C7083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>09672C8083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|11</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>EE022C8083</ID>
			<Comment>CCF</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>65042C9083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F18A2CA083</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>CD842CB083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>285</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>953B2CC083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>73A02CD083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>FD452CE083</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A9FF2CF083</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>6373818083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>286</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>299C2D0083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>C7EF2D1083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>DE812D2083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>1F572D3083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>199A2D4083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|17</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>6D4F2D5083</ID>
			<Comment>LCV</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>79E22D6083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>15D92D7083</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>33812D8083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>287</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>1F452D9083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5C4E2DA083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>26F72DB083</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>88AD2DC083</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>69362DD083</ID>
			<Enabled>-1</Enabled>
			<Name>LEMResultStatusID</Name>
			<Value>288</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>D4E32DE083</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>774D2E0083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>04C42E1083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>620C2E2083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BF8D2E3083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%SalesProcessID%|=|14</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>CAB12E4083</ID>
			<Comment>Prestige</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>D7D92E5083</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%LEM_Result%|=|PASSED</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>29E72E6083</ID>
			<Comment>LEM PASSED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>6D752E8083</ID>
			<Name>LEMResultStatusID</Name>
			<Value>289</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>A14B2E9083</ID>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>42452EA083</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>1CD92EC083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>A62C2ED083</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>170E2EE083</ID>
			<Comment>LEM FAILED</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>6FEF2F0083</ID>
			<Name>LEMResultStatusID</Name>
			<Value>290</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>1F612F1083</ID>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, %LEMResultStatusID%, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>C7632F3083</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>prestigepayouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>6FBE2F4083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>782D2F5083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>CC9F2F7083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>04642F8083</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>idcheck@flowcarfinance.co.uk</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>43832FA083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>539D2FB083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>F1F22FD083</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>046A2FE083</ID>
			<Comment>LEM Email PN INVALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>B637300083</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed LEM Email]: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>idcheck@flowcarfinance.co.uk</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>EA77301083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>AB15303083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>F35C304083</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>543C305083</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>36BC1AD01F</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'FCF Emails'
 

 --Process Incoming Emails
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>BE953C1066</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>Hello Guys#xD;#xA;#xD;#xA;                 Please note the only proof of address the customer has (as he has only been in country for less than 2 weeks) is the tenancy agreement I have already sent.#xD;#xA;#xD;#xA;I have already sent his passport.#xD;#xA;#xD;#xA;He does not require a work permit as he has a British Passport, therefore a British Citizen.#xD;#xA;#xD;#xA;Contact of employment has already been sent.#xD;#xA;#xD;#xA;Drivers License to follow.#xD;#xA;#xD;#xA;No Previous UK Addresses.#xD;#xA;#xD;#xA;These have been sent to Chelsea Ward.#xD;#xA;#xD;#xA;Thanks#xD;#xA;#xD;#xA;Mark#xD;#xA;#xD;#xA;#xD;#xA;Mark Pearson#xD;#xA;Senior Sales Executive#xD;#xA;#xD;#xA;Acorn Mitsubishi#xD;#xA;Hagley Road West#xD;#xA;Quinton#xD;#xA;Birmingham#xD;#xA;B62 9AH#xD;#xA;#xD;#xA;Tel: 0121 506 6050#xD;#xA;Fax: 0121 506 6055#xD;#xA;#xD;#xA;Email: mark.pearson@acornmitsubishi.co.uk&lt;mailto:mark.pearson@acornmitsubishi.co.uk&gt;   or visit our website:  www.acorn-mitsubishi.co.uk&lt;http://www.acorn-mitsubishi.co.uk/&gt; or take a look at the accessories range: www.acorn-mitsubishi.co.uk/accessories/&lt;http://www.acorn-mitsubishi.co.uk/accessories/&gt;#xD;#xA;#xD;#xA;[Q1 Offers (3)]#xD;#xA;#xD;#xA;From: DSG Customer Services [mailto:customer.services@dsgfs.com]#xD;#xA;Sent: 08 April 2016 09:34#xD;#xA;To: Ryan Hensman &lt;Ryan.Hensman@acornmitsubishi.co.uk&gt;; Mark Pearson &lt;mark.pearson@acornmitsubishi.co.uk&gt;#xD;#xA;Cc: chelsea.ward@dsgfs.com; shozib.akhtar@dsgfs.com; helen.royle@dsgfs.com#xD;#xA;Subject: [Additional Information]: Vowles, Martin - PN483311#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;[http://www.dsgfs.com/images/EmailHeaderLogo.png]&lt;https://quest.dsgfs.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Additional Information Required#xD;#xA;To#xD;#xA;#xD;#xA;Acorn Mitsubishi#xD;#xA;#xD;#xA;From#xD;#xA;#xD;#xA;DSG Financial Services Ltd#xD;#xA;#xD;#xA;Customer#xD;#xA;#xD;#xA;Martin Vowles#xD;#xA;#xD;#xA;Thank you for your proposal. In order to further progress the application we need to request some additional information. If you would like us to call the customer and get the information please let us know and we will gladly make contact.#xD;#xA;#xD;#xA;Information Required:#xD;#xA;- Please provide the following:#xD;#xA;#xD;#xA;#xD;#xA;* Proof of address dated within the last 3 months in the form of a bank statement or utility bill in lieu of Voters Roll trace#xD;#xA;* Passport#xD;#xA;* Visa / work permit for the UK (if non EU passport holder). PLEASE NOTE THAT THE TERM OF THE AGREEMENT MUST NOT EXCEED THE VALIDITY PERIOD OF THE WORK PERMIT / VISA.#xD;#xA;* Proof of employment in the form of a copy of their contract of employment (*** This must include details of the customers remuneration).#xD;#xA;*Written consent from the customer to contact their employer (email or letter)#xD;#xA;* Driving licence - please note if the customer holds a non EU driving licence and has resided in the UK for over 12 months, we are unable to proceed until they obtain their UK driving licence#xD;#xA;* Details of any previous UK addresses (if there are any)#xD;#xA;Please send us the requested information as soon as possible. Thank you for your continued support.#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;DSG Financial Services Ltd is authorised and regulated by the Financial Conduct Authority#xD;#xA;#xD;#xA;Tel: 0844 880 0660 | Web: www.dsgfs.com&lt;http://www.dsgfs.com&gt;#xD;#xA;DSG Financial Services Ltd, Unity House, Hercules Park, Bird Hall Lane, Stockport, SK3 0UX. Registered in England 02313903#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;</HelperMessage>
	<HelperSubject>RE: [Additional Information]: Vowles, Martin - PN483311</HelperSubject>
	<HelperTo>customer.services@dsgfs.com</HelperTo>
	<TriggerName>Process Incoming Emails</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>6316380066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 11:58:21</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>215</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<MaxLength>100</MaxLength>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=Email2DB_PrePropActions</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>8FF219A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>2DD620A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>5F921F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E9681F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>60061F40C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B8301F40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>67871F40C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>D9211F40C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>30631F50C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>35F72EE093</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>06722EE093</ID>
			<Comment>Prevent loop from &quot;noreply&quot; acknowledgements</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>09A2258093</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>D8FE2EE093</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>42EB1F50C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>FDF128F0C5</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Liaison Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>sales.coordinators@dsgfs.com</EmailForwardTo>
			<FromAddress>%msg_from%</FromAddress>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>BD0F1F50C5</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Hello %msg_fromname% ,#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Your below email &lt;strong&gt;was not processed&lt;/strong&gt; or added to Aquarius because a valid proposal number was not included. A valid existing proposal number must be specified somewhere in your email in order to be processed.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Please try again with a valid proposal number.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      If you still receive this error even though you have included a valid PN, please forward it to &lt;a href=&quot;mailto:support@dsgfs.com&quot;&gt;support@dsgfs.com&lt;/a&gt; and let us know.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      %msg_html%#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>[Unprocessed] Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9D2B29C0FC</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|dsgfs.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>39133860FC</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>675B19C0FC</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>F4701BE041</ID>
			<Enabled>-1</Enabled>
			<From>payouts@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Thank you for contacting us.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Please accept this email as confirmation that we are in receipt of your query/supporting information. This will be reviewed as soon as possible.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Please note that supporting information received after 17:15 or on a weekend may not be reviewed until the next working day.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Kind Regards#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      DSG Customer Service#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>727529C0FC</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5A691F50C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>1A4A1F60C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>DAA81F60C5</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>2F8EDAF0C5</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>9C5C1F70C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A9E01F70C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>FA546CA0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>55266CF0C5</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>F0C06D50C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>5FAD6DB0C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>76E66E30C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>42B06E90C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>58186F10C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D4A16F90C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>9B687010C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>5330C2E0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>36577100C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>7DAE71A0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>20707230C5</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>C1A372C0C5</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>0EA57370C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>6BA620B0C5</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7FE420C0C5</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>F97E20D0C5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>994FDC70C5</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>E7CD2100C5</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Your email has been received, processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 minutes.&amp;nbsp;&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_replyto%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E29EADD0FC</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|dsgfs.com</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>8DF3AED0FC</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Else</Class>
			<ID>CCD6AFD0FC</ID>
			<LogicalType>2</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>DF0BB0C0FC</ID>
			<Enabled>-1</Enabled>
			<From>payouts@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Thank you for contacting us.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Please accept this email as confirmation that we are in receipt of your query/supporting information. This will be reviewed as soon as possible.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Please note that supporting information received after 17:15 or on a weekend may not be reviewed until the next working day.#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Kind Regards#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      DSG Customer Service#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>F643B1D0FC</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>85CD2110C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Process Incoming Emails'
 

 --UAF Emails2
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>C11F33F0C1</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>This is a test#xD;#xA;PN807477#xD;#xA;&lt;https://www.dsgfs.com/&gt;#xD;#xA;Dan Shaw#xD;#xA;IT Support#xD;#xA;dan.shaw@dsgfs.com#xD;#xA;Tel: 07711 284 770#xD;#xA;DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority#xD;#xA;&lt;https://www.dsgfs.com/disclaimer.html&gt;Click here to view our disclaimer#xD;#xA;&lt;https://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>PN807477</HelperSubject>
	<HelperTo>customer.services@dsgfs.com</HelperTo>
	<TriggerName>UAF Emails</TriggerName>
	<ReceivedAfter>2022-09-15 00:00:00</ReceivedAfter>
	<SaveToFolderID>6316380066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 11:58:21</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([6-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>2DD620A0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPNUnity(%ProposalID%)</LookupSQL>
		</Trigger.Field>
		<Trigger.Field>
			<ID>277B31F01F</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ActionType</EnvironmentVarName>
			<LookFor>Action:</LookFor>
			<Name>ActionType</Name>
			<StartFromLastExtractPoint>-1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>4C892A4012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>210</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>6926205012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>Proposal Actions Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<Name>Body</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>BCD13C3012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>6A09213012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>687635F012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>BB51CFE012</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>56FF253153</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>B6D4253153</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>B30F253153</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BE5E253153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line><Line>Or|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>0483253153</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>AA1C253153</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>3D1B253153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>0C19253153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|s?|DSG Financial Services Ltd Confirmation - Send Mail as</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>12F9253153</ID>
			<EmailForwardSubject>[Unprocessed Unity Underwriting Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw@unityauto.finance</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>FE57254153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>8BFF254153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>66D5254153</ID>
			<Comment>No valid PN, forwarding</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>8263254153</ID>
			<EmailForwardSubject>[Unprocessed Unity Underwriting Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw@unityauto.finance</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>3B81254153</ID>
			<Enabled>-1</Enabled>
			<AttachmentsIncoming>-1</AttachmentsIncoming>
			<AttachmentsIncomingInline>-1</AttachmentsIncomingInline>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;   #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;   #xD;#xA;&lt;title&gt;&lt;/title&gt; #xD;#xA;&lt;/head&gt; #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;This email is from: %msg_from%&lt;/p&gt;#xD;#xA;&lt;p&gt;%msg_html% &lt;br /&gt;%msg_attachments%&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>uw@unityauto.finance</SendTo>
			<Subject>[Unprocessed Unity Underwriting Email] FW: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>5FEC254153</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>6682254153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>BAD2254153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@codeweavers.net</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>FDB1255153</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed Unity Underwriting Email] FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>uw@unityauto.finance</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>B8E1255153</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>C722255153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9832255153</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>AA50255153</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1C2C255153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>1230256153</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1C02256153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>4E50256153</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>7B04256153</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>9CC8256153</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>BB48257153</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>9B6C257153</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>3AD0257153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>643F257153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>E416258153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>C1D5258153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>B3FF258153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>8135259153</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>A928259153</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>F0C025A153</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>DD9325A153</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.RelatedItems#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Digital Sales Email&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>940D25A153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>38BF25B153</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E60325B153</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>8DB025C153</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseLookup</Class>
			<ID>10832F7014</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%3F%99%F5%C7%B3%400%DDR%1D%ED%28%A2P%29%AE%C7n%2Fo%D4%C0%3D.%BC%1D%A4%0CL%B0Gy%92N%E7%5D%B3%B5%0A%BC%89%A0%E8d%CA%C0%8F%A8</ConnectionString>
			<SQLSelectStatement>SELECT [Proposal Current Status ID] FROM tProposal WHERE [Proposal ID] = %ProposalID%</SQLSelectStatement>
			<TimeOut>30</TimeOut>
			<FieldAssignments>
				<Fields><Field><Name>Proposal Current Status ID</Name><AssignTo>%StatusID%</AssignTo></Field></Field>
			</FieldAssignments>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>B52D3AD014</ID>
			<Enabled>-1</Enabled>
			<Name>ActionID</Name>
			<Value>210</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E62E395017</ID>
			<Enabled>-1</Enabled>
			<Name>StatusID</Name>
			<Value>210</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>065825C153</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>E3CB25C153</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>5D5025D153</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;&lt;head&gt;     #xD;#xA;&lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot; /&gt;     #xD;#xA;&lt;title&gt;&lt;/title&gt;   #xD;#xA;&lt;/head&gt;   #xD;#xA;&lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;&lt;p&gt;Dear %msg_fromname%&amp;nbsp;&lt;br /&gt;&lt;br /&gt;      Your email has been received, #xD;#xA;processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 #xD;#xA;minutes.&amp;nbsp;&amp;nbsp;&lt;br /&gt;&lt;br /&gt;      Kind Regards&lt;br /&gt;      DSG IT     #xD;#xA;&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>6997D2B014</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>47B639A014</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE TriggerID = 'C11F33F0C1'
 

 --Pending Info In
 UPDATE [dbo].[Triggers]
   SET [XML] = '<Trigger>
	<TriggerID>31CA314066</TriggerID>
	<TriggerEnabled>-1</TriggerEnabled>
	<FromAddressLIKE>*</FromAddressLIKE>
	<HelperMessage>---------- Forwarded message ----------#xD;#xA;From: Stuart Arrowsmith &lt;stuart.arrowsmith@dsgfs.com&gt;#xD;#xA;Date: 8 April 2016 at 12:53#xD;#xA;Subject: Fwd: FW: Attached Image- Susan Lambert#xD;#xA;To: Sales Coordinators &lt;sales.coordinators@dsgfs.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;---------- Forwarded message ----------#xD;#xA;From: Alan Floyd - Motherwell Vauxhall &lt;Alan.Floyd@petervardy.com&gt;#xD;#xA;Date: 8 April 2016 at 12:42#xD;#xA;Subject: FW: Attached Image- Susan Lambert#xD;#xA;To: &quot;dsg@dsgscotland.com&quot; &lt;dsg@dsgscotland.com&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;Alan Floyd#xD;#xA;#xD;#xA;Senior Sales Adviser#xD;#xA;#xD;#xA;T:01738 565758#xD;#xA;________________________________________#xD;#xA;From: vm.scanner@petervardy.com [vm.scanner@petervardy.com]#xD;#xA;Sent: 08 April 2016 13:42#xD;#xA;To: Alan Floyd - Motherwell Vauxhall#xD;#xA;Subject: Attached Image#xD;#xA;----------------------------------------------------------------#xD;#xA;Please consider the environment before printing this e-mail.#xD;#xA;#xD;#xA;Peter Vardy Ltd - &quot;Star Status&quot; with the Best Companies#xD;#xA;Accreditation 2009, 2010 and 2011#xD;#xA;----------------------------------------------------------------#xD;#xA;#xD;#xA;Disclaimer and Confidentiality Notice:#xD;#xA;This e-mail is intended only for the addressee named above and the contents#xD;#xA;should not be disclosed to any other person nor copies taken or forwarded.#xD;#xA;#xD;#xA;Any views or opinions presented are solely those of the sender and do not#xD;#xA;necessarily represent the views of Peter Vardy Ltd unless otherwise#xD;#xA;specifically stated.#xD;#xA;#xD;#xA;As not all internet communications are secure Peter Vardy Ltd does not#xD;#xA;accept legal responsibility for the contents of this message nor#xD;#xA;responsibility for any change made to this message after it was sent by the#xD;#xA;original sender.#xD;#xA;#xD;#xA;We advise you to carry out your own virus check before opening any#xD;#xA;attachments as we cannot accept liability for any damage sustained as a#xD;#xA;result of any software viruses.#xD;#xA;#xD;#xA;Please notify the sender immediately if you have received this e-mail by#xD;#xA;mistake and delete it from your systems.#xD;#xA;#xD;#xA;Peter Vardy Holdings Ltd. Company Number SC319442. Incorporated in Scotland#xD;#xA;Peter Vardy Ltd. Company Number SC297001. Incorporated in Scotland#xD;#xA;Both Peter Vardy Holdings Ltd. and Peter Vardy Ltd. have registered offices#xD;#xA;at: The Wright Business Centre, 1 Lonmay Road, Queenslie Glasgow, G33 4EL.#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;-- #xD;#xA;#xD;#xA;&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Stuart Arrowsmith*#xD;#xA;Payouts Coordinator#xD;#xA;stuart.arrowsmith@dsgfs.com#xD;#xA;Tel: 0844 880 0660 Fax: 0844 880 8293#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;#xD;#xA;-- #xD;#xA;#xD;#xA;&lt;http://www.dsgfs.com/&gt;#xD;#xA;#xD;#xA;*Andrew Fitton*#xD;#xA;Sales Coordinator#xD;#xA;andrew.fitton@dsgfs.com#xD;#xA;Tel: 0844 880 0660 Fax:#xD;#xA;#xD;#xA;#xD;#xA;*DSG Financial Services Ltd is authorised and regulated by the Financial#xD;#xA;Conduct Authority*#xD;#xA;#xD;#xA;Click here to view our disclaimer &lt;http://www.dsgfs.com/disclaimer.html&gt;#xD;#xA;</HelperMessage>
	<HelperSubject>PN481133</HelperSubject>
	<HelperTo>pendinginfo@dsgfs.com</HelperTo>
	<TriggerName>Pending Info In</TriggerName>
	<ReceivedAfter>2022-09-20 00:00:00</ReceivedAfter>
	<SaveToFolderID>C84B2E6066</SaveToFolderID>
	<LastEditedByUserID>92CC20A067</LastEditedByUserID>
	<LastEditedDate>2017-07-03 02:00:06</LastEditedDate>
	<Trigger.Fields>
		<Trigger.Field>
			<ID>730B598030</ID>
			<Enabled>-1</Enabled>
			<CheckSubjectLine>-1</CheckSubjectLine>
			<EnvironmentVarName>EM2_ProposalID</EnvironmentVarName>
			<FieldType>6</FieldType>
			<InsertFieldName>Proposal ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>([4-9]{1})([0-9]{5})</LookFor>
			<Name>ProposalID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>6</UntilThisManyChars>
			<ExtractMask>-1</ExtractMask>
			<DefaultValue>0</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>95024ED068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_StatusID</EnvironmentVarName>
			<FieldType>1</FieldType>
			<InsertFieldName>Proposal Status ID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>StatusID</LookFor>
			<Name>StatusID</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<DefaultValue>51</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>DC6B307030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Body</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>Body</Name>
			<SBScriptExtract>&apos; Extract Field Script#xD;#xA;&apos; Use this script to find and extract a field from an Email Message or Subject.#xD;#xA;#xD;#xA;&apos; Set the property Email2DBExtract to the extracted text in the Sub Main procedure.#xD;#xA;&apos; This property will already be set to a value based on the field properties.#xD;#xA;#xD;#xA;Sub Main()#xD;#xA;    Dim inputValue As String#xD;#xA;    Dim outputValue As String#xD;#xA;    Dim MSG_Body As String#xD;#xA;#xD;#xA;    inputValue = MSG_Body#xD;#xA;#xD;#xA;    outputValue = Replace(inputValue, &quot;&apos;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&lt;&quot;, &quot;&quot;)#xD;#xA;    outputValue = Replace(outputValue, &quot;&gt;&quot;, &quot;&quot;)#xD;#xA;#xD;#xA;    &apos; commands start here#xD;#xA;#xD;#xA;    Email2DBExtract = MSG_Body#xD;#xA;#xD;#xA;#xD;#xA;End Sub#xD;#xA;</SBScriptExtract>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>F2027ED030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_SQLDateTime</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%SQLDateTime%</ExtractBuiltInField>
			<FieldType>4</FieldType>
			<InsertFieldName>Proposal Action Date/Time</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>SQLDateTime</LookFor>
			<Name>Proposal_Action_Date_Time</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>39FF1FF030</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_from%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action UserID</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>MsgFrom</LookFor>
			<Name>MsgFrom</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>A76CF04060</ID>
			<EnvironmentVarName>EM2_</EnvironmentVarName>
			<InsertFieldName>ValidityCheck</InsertFieldName>
			<LookFor>ValidityCheck</LookFor>
			<Name>ValidityCheck</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=Email2DB_PrePropActions</LookupConnectioN>
			<LookupSQL>SELECT DBO.PreValidityCheck(%ProposalID%, &apos;%MsgFrom%&apos;) AS Valid</LookupSQL>
			<LookupField>Valid</LookupField>
			<DefaultValue>2</DefaultValue>
		</Trigger.Field>
		<Trigger.Field>
			<ID>01A9628068</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_OutputBody</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_body%</ExtractBuiltInField>
			<InsertFieldName>Proposal Action Details</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>OutputBody</LookFor>
			<MaxLength>2000</MaxLength>
			<Name>OutputBody</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>1335B9F0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_Subject</EnvironmentVarName>
			<ExtractBuiltIn>-1</ExtractBuiltIn>
			<ExtractBuiltInField>%msg_subject%</ExtractBuiltInField>
			<InsertFieldName>Subject</InsertFieldName>
			<InsertInto>tProposal Actions</InsertInto>
			<LookFor>Subject</LookFor>
			<Name>Subject</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
		</Trigger.Field>
		<Trigger.Field>
			<ID>7AE721E0C5</ID>
			<Enabled>-1</Enabled>
			<EnvironmentVarName>EM2_ValidPN</EnvironmentVarName>
			<InsertFieldName>ValidPN</InsertFieldName>
			<LookFor>ValidPN</LookFor>
			<Name>ValidPN</Name>
			<StartFromLastExtractPoint>1</StartFromLastExtractPoint>
			<TrimBlanks>-1</TrimBlanks>
			<Until_EndOfLine>-1</Until_EndOfLine>
			<UntilAnyOfTheseChars> :;,!&quot;%&amp;()_{}[]@~&lt;&gt;/`&apos;</UntilAnyOfTheseChars>
			<UntilThisManyChars>5</UntilThisManyChars>
			<Lookup>-1</Lookup>
			<LookupConnectioN>Provider=SQLOLEDB.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Initial Catalog=Email2DB_PrePropActions;Data Source=sqlmi-dsgfs-prod-01.50364b3f23b8.database.windows.net</LookupConnectioN>
			<LookupSQL>SELECT DBO.CheckForValidPN(%ProposalID%)</LookupSQL>
		</Trigger.Field>
	</Trigger.Fields>
	<Trigger.Actions>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>B7619A00C5</ID>
			<Enabled>-1</Enabled>
			<Name>AttachmentDetails</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E9F99A20C5</ID>
			<Enabled>-1</Enabled>
			<Name>Emailer</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>E1C59A20C5</ID>
			<Enabled>-1</Enabled>
			<Name>PNID</Name>
			<Value>%ProposalID%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>1E0B2D40F7</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|?|moneybarn.com</Line><Line>Or|%msg_from%|?|hitachicapital.co.uk</Line><Line>Or|%msg_from%|?|bnpparibas-pf.co.uk</Line><Line>Or|%msg_from%|?|bmwfin.com</Line><Line>Or|%msg_from%|?|alphera.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>468648A0C6</ID>
			<Comment>Global Exception to Processing Email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Forward</Class>
			<ID>E4A04980C6</ID>
			<Enabled>-1</Enabled>
			<EmailForwardSubject>[Unprocessed]: FW: %msg_subject%</EmailForwardSubject>
			<EmailForwardTo>internal.payouts@dsgfs.com</EmailForwardTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>64B14A30C6</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A3EF4AE0C6</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>EA6D9A40C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_subject%|?|out of office</Line><Line>Or|%msg_subject%|?|annual leave</Line><Line>Or|%msg_body%|?|out of office</Line><Line>Or|%msg_body%|?|annual leave</Line><Line>Or|%msg_subject%|?|away from the dealership</Line><Line>Or|%msg_body%|?|away from the dealership</Line><Line>Or|%msg_subject%|?|out the office</Line><Line>Or|%msg_body%|?|out the office</Line><Line>Or|%msg_body%|?|out of the office</Line><Line>Or|%msg_subject%|?|out of the office</Line><Line>Or|%msg_body%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|out of the dealership</Line><Line>Or|%msg_subject%|?|Automatic reply</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D0759A50C5</ID>
			<Comment>Out of office string detected - scrapping email</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>9DFE9A70C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>F1669A80C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>E5C139E093</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_from%|=|noreply@inchcape.co.uk</Line><Line>Or|%msg_from%|=|Customer.Services@bmwfs.co.uk</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>36DF3A0093</ID>
			<Comment>Prevent loop from &quot;noreply&quot; acknowledgements</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>F4173A2093</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>A5173A4093</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>76CE9AA0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|INVALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>1B619AD0C5</ID>
			<Enabled>-1</Enabled>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Hello %msg_fromname% ,#xD;#xA;    &lt;/p&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Your below email &lt;strong&gt;was not processed&lt;/strong&gt; or added to Aquarius because a valid proposal number was not included. A valid existing proposal number must be specified somewhere in your email in order to be processed.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Please try again with a valid proposal number.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      If you still receive this error even though you have included a valid PN, please forward it to &lt;a href=&quot;mailto:support@dsgfs.com&quot;&gt;support@dsgfs.com&lt;/a&gt; and let us know.&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      %msg_html%#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>[Unprocessed] Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
			<AddToSentItems>-1</AddToSentItems>
		</Trigger.Action>
		<Trigger.Action>
			<Class>End</Class>
			<ID>F3862700C5</ID>
			<LogicalType>4</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>72AE9B20C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>A4B19B50C5</ID>
			<Comment>From: %msg_replyto%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>D3059B80C5</ID>
			<Comment>Proposal ID %ProposalID%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>B9F59BD0C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%ValidPN%|=|VALID</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>54EA9C00C5</ID>
			<Comment>PNID: %ProposalID% is VALID</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>If</Class>
			<ID>416B2B00C5</ID>
			<LogicalType>1</LogicalType>
			<Condition>
				<Lines><Line>|%msg_attachmentcount%|&gt;=|1</Line><Line>Or|%msg_attachmentinlinecount%|&gt;=|1</Line></Lines>
			</Condition>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>25272B10C5</ID>
			<Comment>Processing Attachments Section</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>36B62B10C5</ID>
			<Comment>Attachment Count: %msg_attachmentcount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>2E0C2B20C5</ID>
			<Comment>Inline Attachment Count: %msg_attachmentinlinecount%</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>0A5F2B30C5</ID>
			<Enabled>-1</Enabled>
			<Name>SaveToFolder</Name>
		</Trigger.Action>
		<Trigger.Action>
			<Class>FileOps</Class>
			<ID>BA232B40C5</ID>
			<Enabled>-1</Enabled>
			<FilePath>\\srv85\IncomingAttachments\ProposalDocumentAttachments\%Year%\%MonthNumber%\PN%ProposalID%</FilePath>
			<AssignTo>%SaveToFolder%</AssignTo>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>68592B50C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.pdf</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D67D2B60C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>8A912B70C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.jpeg</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>B5D92B80C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tif</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>D5082B90C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.png</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Attachments</Class>
			<ID>BCFA2BA0C5</ID>
			<Enabled>-1</Enabled>
			<Mask>*.tiff</Mask>
			<SaveTo>%SaveToFolder%</SaveTo>
			<RenameTo>PN%ProposalID%_%filename%</RenameTo>
			<Overwrite>-1</Overwrite>
			<Unique>-1</Unique>
			<IncludeInline>-1</IncludeInline>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>92CB2BB0C5</ID>
			<Enabled>-1</Enabled>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput,6, proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    AddToLog(myCommand)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Script</Class>
			<ID>CCEC2BC0C5</ID>
			<SBScriptToRun>&apos;#Reference {B691E011-1797-432E-907A-4D8C69339129}#6.1#0#C:\Program Files (x86)\Common Files\System\ado\msado15.dll#Microsoft ActiveX Data Objects 6.1 Library#xD;#xA;Sub Main()#xD;#xA;#xD;#xA;    Dim attachment As clsMessageAttachment#xD;#xA;    Dim proposalID As Long#xD;#xA;    Dim docAddedBy As String#xD;#xA;    Dim listOfDocs As String#xD;#xA;    Dim forwardMessage As Boolean#xD;#xA;    Dim initialFileName As String#xD;#xA;    Dim fileLocation As String#xD;#xA;    Dim newFileName As String#xD;#xA;    Dim docsCount As Integer#xD;#xA;#xD;#xA;    docsCount = 0#xD;#xA;    forwardMessage = False#xD;#xA;#xD;#xA;    proposalID = AccountVariable(&quot;PNID&quot;)#xD;#xA;    AddToLog(&quot;Script PNID: &quot; &amp; proposalID)#xD;#xA;#xD;#xA;    docAddedBy = Left(FIELDS_Value(&quot;MsgFrom&quot;),50)#xD;#xA;    AccountVariable(&quot;Emailer&quot;) = docAddedBy#xD;#xA;#xD;#xA;    If proposalID &gt; 0 Then#xD;#xA;#xD;#xA;        For Each attachment In ThinkAutomationMessage.Attachments#xD;#xA;#xD;#xA;            If attachment.SavedTo &lt;&gt; &quot;&quot; Then#xD;#xA;                docsCount = docsCount + 1#xD;#xA;                AddToLog(&quot;Script Processing Attachment: &quot; &amp; attachment.SavedTo)#xD;#xA;                initialFileName = GetFilename(attachment.SavedTo)#xD;#xA;                fileLocation = GetFileLocation(attachment.SavedTo)#xD;#xA;                AddToLog(&quot;Script File Name: &quot; &amp; initialFileName )#xD;#xA;                AddToLog(&quot;Script File Location: &quot; &amp; fileLocation)#xD;#xA;#xD;#xA;                newFileName = &quot;PN&quot; &amp; CStr(proposalID) &amp; &quot;_&quot; &amp; initialFileName#xD;#xA;#xD;#xA;                Name attachment.SavedTo As (fileLocation &amp; newFileName)#xD;#xA;#xD;#xA;                SaveDocumentRecord(proposalID, newFileName, fileLocation, attachment.FileExtension, AccountVariable(&quot;Emailer&quot;))#xD;#xA;                listOfDocs = listOfDocs &amp; newFileName &amp; vbCrLf#xD;#xA;            Else#xD;#xA;                AddToLog(&quot;Document Not Saved: &quot; &amp; attachment.Name)#xD;#xA;                forwardMessage = True#xD;#xA;            End If#xD;#xA;#xD;#xA;        Next#xD;#xA;#xD;#xA;    Else#xD;#xA;        AddToLog(&quot;Will not save attachements with an invalid Proposal No.&quot;)#xD;#xA;#xD;#xA;    End If#xD;#xA;#xD;#xA;    If forwardMessage Then#xD;#xA;        AccountVariable(&quot;DoForward&quot;) = True#xD;#xA;    End If#xD;#xA;#xD;#xA;    If docsCount &gt; 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachments: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    ElseIf docsCount = 1 Then#xD;#xA;        AccountVariable(&quot;AttachmentDetails&quot;) = &quot;See Attachment: &quot; &amp; vbCrLf &amp; listOfDocs#xD;#xA;    End If#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;Function GetFileLocation(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    filePath = Replace(FileAndPath, fileName, &quot;&quot;)#xD;#xA;#xD;#xA;    GetFileLocation = filePath#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Function GetFilename(FileAndPath As String) As String#xD;#xA;#xD;#xA;    Dim filePath As String#xD;#xA;    Dim fileName As String#xD;#xA;    Dim fileParts() As String#xD;#xA;#xD;#xA;    fileParts = Split(FileAndPath,&quot;\&quot;)#xD;#xA;#xD;#xA;    If UBound(fileParts) &gt; 0 Then#xD;#xA;        fileName = fileParts( UBound(fileParts))#xD;#xA;    End If#xD;#xA;#xD;#xA;    GetFilename = fileName#xD;#xA;#xD;#xA;End Function#xD;#xA;#xD;#xA;Sub SaveDocumentRecord(proposalID As Long, fileName As String, filePath As String, fileType As String, docAddedBy As String)#xD;#xA;    Dim myConn As New ADODB.Connection#xD;#xA;    Dim myCommand As New ADODB.Command#xD;#xA;    Dim conStr As String#xD;#xA;#xD;#xA;    On Error GoTo ErrSection#xD;#xA;#xD;#xA;    AddToLog(&quot;Saving Document: &quot; &amp; fileName)#xD;#xA;#xD;#xA;    conStr = &quot;Provider=MSDASQL.1;Password=HroPhjperpAFHNE;Persist Security Info=True;User ID=LiaisonEmails;Data Source=IncomingEmails;Initial Catalog=MaiaDSG&quot;#xD;#xA;#xD;#xA;    myConn.ConnectionString = conStr#xD;#xA;    myConn.Open#xD;#xA;    myCommand.ActiveConnection = myConn#xD;#xA;    myCommand.CommandType = adCmdStoredProc#xD;#xA;    myCommand.CommandText = &quot;InsertDocument_Email2DB&quot;#xD;#xA;#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;ProposalID&quot;,adBigInt,adParamInput, , proposalID)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;Filename&quot;,adVarChar,adParamInput,100, fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActiveFilename&quot;,adVarChar,adParamInput,255,fileName)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocActivePath&quot;,adVarChar,adParamInput,255,filePath)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocDesc&quot;,adVarChar,adParamInput,255,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocType&quot;,adVarChar,adParamInput,50,&quot;Payout Docs&quot;)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocFileType&quot;,adVarChar,adParamInput,50, fileType)#xD;#xA;    myCommand.Parameters.Append myCommand.CreateParameter(&quot;DocAddedBy&quot;,adVarChar,adParamInput,50,docAddedBy)#xD;#xA;    AddToLog(&quot;About to execute&quot;)#xD;#xA;    myCommand.Execute#xD;#xA;    AddToLog(&quot;Finished execute&quot;)#xD;#xA;#xD;#xA;    Exit Sub#xD;#xA;#xD;#xA;    ErrSection:#xD;#xA;#xD;#xA;        AddToLog(Error(Err))#xD;#xA;#xD;#xA;End Sub#xD;#xA;#xD;#xA;</SBScriptToRun>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>14EA2BD0C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Set</Class>
			<ID>F220A6C0C5</ID>
			<Name>OutputBody</Name>
			<Value>Summary: %msg_subject%%CRLF%%AttachmentDetails%%CRLF%%OutputBody%</Value>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>85C5A7B0C5</ID>
			<Comment>About to insert action/change status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>DatabaseUpdateCustom</Class>
			<ID>2BA2A8E0C5</ID>
			<Enabled>-1</Enabled>
			<ConnectionString>enc:%02%2F%CCT%13%8E%08%06%3F%8F%A0%09%E0%9C%F6%E0z%89%A2%8BM%08%A3%E6%9E%B2%E1H%8B%FF%8F9W%D0x6%27%FC9J%EB%08E3h%7D%DC%CA%1E%5D%29%D9%22%F0%9C%95%2B%F7%F7%10%CC3%7F%C1%1D%13%C0%E8y%8Bu%A3%97X%C7%006a%1E%AA7%B6%28%C3%3F%00%8B%16%CF9z%01%94%18%8C%A4%EF%CE6%88%8E%09%28%83%0F%AE%1F%24%13~.%845%1A7%B7%3Df28%EC%D7%8FA%8E%3B%3D%A7%0Ck%F4%13I%D2%3F%28WB%9A%B2%11q%A6D%89%C2%D5%11ws_Br%A5%E0%D9%E8%C5%96R</ConnectionString>
			<SQLStatement>INSERT INTO [tProposal Actions] ([Proposal ID], [Proposal Status ID], [Proposal Action Date/Time], [Proposal Action UserID], [Proposal Action Details], [Subject]) VALUES (@Proposal_ID, @Proposal_Status_ID, @Proposal_Action_Date/Time, @Proposal_Action_UserID, @Proposal_Action_Details, @Subject)#xD;#xA;#xD;#xA;</SQLStatement>
			<SQLDialect>1</SQLDialect>
			<TimeOut>30</TimeOut>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Comment</Class>
			<ID>063EA9A0C5</ID>
			<Comment>Finished inserting action/status</Comment>
		</Trigger.Action>
		<Trigger.Action>
			<Class>Message</Class>
			<ID>B7B8AAD0C5</ID>
			<From>noreply@dsgfs.com</From>
			<HTML>-1</HTML>
			<HTMLText>&lt;!DOCTYPE html&gt;#xD;#xA;&lt;html&gt;#xD;#xA;  &lt;head&gt;#xD;#xA;    &lt;meta http-equiv=&quot;Content-Type&quot; content=&quot;text/html; charset=utf-8&quot;&gt;#xD;#xA;    &lt;title&gt;&lt;/title&gt;#xD;#xA;  &lt;/head&gt;#xD;#xA;  &lt;body style=&quot;color: black; overflow: auto; font-family: Calibri;&quot;&gt;#xD;#xA;    &lt;p&gt;#xD;#xA;      Dear %msg_fromname%&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Your email has been received, processed and will be added to Aquarius shortly. This can take&amp;nbsp;up to 5 minutes.&amp;nbsp;&amp;nbsp;&lt;br&gt;#xD;#xA;      &lt;br&gt;#xD;#xA;      Kind Regards&lt;br&gt;#xD;#xA;      DSG IT#xD;#xA;    &lt;/p&gt;#xD;#xA;  &lt;/body&gt;#xD;#xA;&lt;/html&gt;#xD;#xA;</HTMLText>
			<ScheduleOn>1899-12-30 00:00:00</ScheduleOn>
			<SendTo>%msg_from%</SendTo>
			<Subject>Re: %msg_subject%</Subject>
			<SendVia>N||25|0||</SendVia>
		</Trigger.Action>
		<Trigger.Action>
			<Class>EndIf</Class>
			<ID>15A1AC20C5</ID>
			<LogicalType>3</LogicalType>
		</Trigger.Action>
	</Trigger.Actions>
</Trigger>
'
 WHERE Name = 'Pending Info In'
 

