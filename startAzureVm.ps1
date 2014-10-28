workflow Start-VMs {
    ForEach -Parallel ($vm in $vms) {
        if($vm.Name -like "BSTestVM*") {
            Start-AzureVM -ServiceName $vm.ServiceName -Name $vm.Name
        }
    }
}

$cred=Get-Credential jmn

Get-AzureVM `
    | Where-Object {$_.Name -like "BSTestVm*"} `
    | Start-AzureVM;

Get-AzureVM | Where-Object {$_.Name -like "BSTestVm*"} | Format-Table -AutoSize