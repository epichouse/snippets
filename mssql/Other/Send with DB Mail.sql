EXEC msdb.dbo.sp_send_dbmail
             @profile_name = 'Profile Name',
             @recipients = 'email@example.com',
             @body = 'Email Body',
             @body_format = 'HTML',
             @subject = 'Email Subject';