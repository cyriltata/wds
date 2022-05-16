$toolsdir = "C:\WDSTools"
mkdir $toolsdir
cd $toolsdir

$filename = "Inquisit_50140.exe"
Invoke-WebRequest -uri "https://inquisit.millisecond.com/5/5_0_14_0/win/Inquisit_50140.exe" -outFile $filename
Start-Process -Wait -FilePath $filename -ArgumentList "/S" -PassThru
del $filename
cd ../
rmdir $toolsdir
