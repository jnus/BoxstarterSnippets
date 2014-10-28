$cred=Get-Credential jmn
$octopusPublicPort = 10933
$size = 'Basic_A3'
$location = 'North Europe'
$imgnm = "3a50f22b388a4ff7ab41029918570fa6__Windows-Server-2012-Essentials-20131217-enus"


# Create Cloud Service
$randomService = Get-Random -minimum 1 -maximum 10000
$serviceName = "BoxStarterTestService" + $randomService
$svc = New-AzureService $serviceName -Location 'North Europe' -Description 'Service for Azure VM Creation and Boxstarter testing'

# Create VM configurations
$nms = 1..3 | % { $r=Get-Random -minimum 1 -maximum 10000; "BSTestVm"+$r }
$vms = @()
foreach ($nm in $nms) {
  $vm = New-AzureVMConfig -Name $nm -InstanceSize $size -ImageName $imgnm |
    Add-AzureProvisioningConfig -Windows -AdminUsername $cred.UserName -Password $cred.GetNetworkCredential().Password
    $vms += $vm
}

# Create VMs
New-AzureVM -Location $location -ServiceName $serviceName -VMs $vms