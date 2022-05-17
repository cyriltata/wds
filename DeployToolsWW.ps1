$toolsdir = "C:\WDSTools"
mkdir $toolsdir
cd $toolsdir

$filename = "Inquisit_50140.exe"
Invoke-WebRequest -uri "https://inquisit.millisecond.com/5/5_0_14_0/win/Inquisit_50140.exe" -outFile $filename
Start-Process -Wait -FilePath $filename -ArgumentList "/Q" -PassThru
del $filename

$filename = "remap-keys.reg"
Invoke-WebRequest -uri "https://raw.githubusercontent.com/cyriltata/wds/main/remap-keys.reg" -outFile $filename
reg import $filename
del $filename

#cd ../
#rmdir $toolsdir

Disable-NetAdapter -Name 'WLAN' -Confirm:$false

Get-PnpDevice -class 'MEDIA' | ForEach-Object {Disable-PnpDevice -InstanceId $_.InstanceID -Confirm:$false}


