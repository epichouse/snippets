# Get Current Running Background PS Jobs
Get-Job

# Start Background Job
Start-Job -ScriptBlock { Comand Here }

# Stop Background Job
Stop-Job #Either use -name or -id from get-job command
