# ## Disable notification center ##
 
if (-Not (Test-Path "HKCU:\Software\Policies\Microsoft\Windows\Explorer")) {
    New-Item -Path "HKCU:\Software\Policies\Microsoft\Windows" -Name "Explorer" -force
}
Set-ItemProperty -Path "HKCU:\Software\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Type "DWORD" -Value 1

# ## Disable context menu ##
if (-Not (Test-Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
    New-Item -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies" -Name "Explorer" -force
}
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoViewContextMenu" -Type "DWORD" -Value 1
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoTrayContextMenu" -Type "DWORD" -Value 1

if (-Not (Test-Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer")) {
    New-Item -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies" -Name "Explorer" -force
}
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" -Name "NoTrayContextMenu" -Type "DWORD" -Value 1

## @TODO: Disable others
