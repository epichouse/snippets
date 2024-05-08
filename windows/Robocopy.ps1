# Robocopy Commands

# Copy files without deletion additional files found in destination
robocopy $Source $Destination /E /MT

# Copy files and delete additional files found in destination
robocopy $Source $Destination /E /MT /MIR

# Copy files and delete additional files found in destination, ignore permissions issues
Robocopy $Source $Destination *.* /MIR /XO /E /MT /J /R:0 /W:0