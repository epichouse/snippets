# Get Current Running Background PS Jobs
Get-Job

# Start Background Job
Start-Job -ScriptBlock { Comand Here }

# Stop Background Job (Job will be left in place in a stopped status)
Stop-Job #Either use -name or -id from get-job command

# Remove Background Job
Remove-Job #Either use -name or -id from get-job command
