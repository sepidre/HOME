Write-Output "------- Start Deleting -------"
Remove-Item -Path J:\config.txt -Verbose
Remove-Item -Path J:\meta-data -Verbose
Remove-Item -Path J:\network-config -Verbose
Remove-Item -Path J:\user-data -Verbose
Write-Output "------- Done Deleting -------"
Write-Output "------- Start Moving -------"
Copy-Item -Path .\HOMEservices\* -Destination J:\ -Recurse -Verbose
Copy-Item -Path .\secrets -Destination J:\containers\ -Recurse -Verbose
Copy-Item -Path .\config.txt -Destination J:\ -Recurse -Verbose
Write-Output "------- Done Moving -------"