# Disable notification center
New-Item -Path "HKCU:\Software\Policies\Microsoft\Windows" -Name "Explorer" -force
Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type "DWORD" -Value 1

# Disable context menu
New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies" -Name "Explorer" -force
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoViewContextMenu" -Type "DWORD" -Value 1
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoTrayContextMenu" -Type "DWORD" -Value 1

New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies" -Name "Explorer" -force
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoTrayContextMenu" -Type "DWORD" -Value 1
