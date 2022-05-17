New-Item -Path "HKCU:\Software\Policies\Microsoft\Windows" -Name "Explorer" -force
Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type "DWORD" -Value 1
