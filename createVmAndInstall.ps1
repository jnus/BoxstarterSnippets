$cred=Get-Credential jmn
$serviceName = "BoxStarterTestService1"
$vmName = "BSTestVm1"

New-AzureQuickVM -ServiceName $serviceName -Windows -Name $vmName `
   -ImageName 3a50f22b388a4ff7ab41029918570fa6__Windows-Server-2012-Essentials-20131217-enus `
   -Password $cred.GetNetworkCredential().Password -AdminUsername $cred.UserName `
   -Location "North Europe" -WaitForBoot

$vmName | Enable-BoxstarterVM -provider Azure -CloudServiceName $serviceName -Credential $cred |
    Install-BoxstarterPackage https://gist.githubusercontent.com/jnus/27e743aee4021d835151/raw/f9e7c33fd3f272cd87e892ae5bd562367f898ec9/gistfile1.txt

