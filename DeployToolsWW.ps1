$toolsdir = "C:\WDSTools"
mkdir $toolsdir
cd $toolsdir

$filename = "PowerToysSetup-0.58.0-x64.exe"
Invoke-WebRequest -uri "https://github.com/microsoft/PowerToys/releases/download/v0.58.0/PowerToysSetup-0.58.0-x64.exe" -outFile $filename
Start-Process -Wait -FilePath $filename -ArgumentList "/install /passive /log PowerToys.log" -PassThru
# del $filename

$filename = "Inquisit_50140.exe"
Invoke-WebRequest -uri "https://inquisit.millisecond.com/5/5_0_14_0/win/Inquisit_50140.exe" -outFile $filename
Start-Process -Wait -FilePath $filename -ArgumentList "/Q" -PassThru
# del $filename

# cd ../
# rmdir $toolsdir

Disable-NetAdapter -Name '*' -Confirm:$false"

Get-PnpDevice -class 'MEDIA' | ForEach-Object {Disable-PnpDevice -InstanceId $_.InstanceID -Confirm:$false}"
