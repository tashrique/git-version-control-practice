# Clear temp folders
Get-ChildItem -Path "C:\Windows\Temp\*" -Recurse -Force | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
Get-ChildItem -Path "$Env:Temp\*" -Recurse -Force | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue

# Clear prefetch
Get-ChildItem -Path "C:\Windows\Prefetch\*" -Recurse -Force | Remove-Item -Force -Recurse -ErrorAction SilentlyContinue

# Empty recycle bin
Clear-RecycleBin -Force -ErrorAction SilentlyContinue

# Run disk cleanup
# /d driveletter: - Selects the drive that you want Disk Cleanup to clean.
# /sageset:n - Displays the Disk Cleanup Settings dialog box and creates a registry key to store the settings you select.
# /sagerun:n - Runs the specified tasks that are assigned to the n value.
cleanmgr.exe /d C: /sagerun:1
