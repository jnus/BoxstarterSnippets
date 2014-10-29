$cred=Get-Credential jmn

## - Get-AzureVM to pipe to Stop VM Service(s):
Get-AzureVM `
    | Where-Object {$_.Name -like "BSTestVm*"} `
    | Stop-AzureVM -StayProvisioned;

Get-AzureVM | Where-Object {$_.Name -like "BSTestVm*"} | Format-Table -AutoSize


#Async
workflow Stop-VMs {
    ForEach -Parallel ($vm in $vms) {
        if($vm.Name -like "BSTestVM*") {
            Stop-AzureVM -Name $vm.Name -ServiceName $vm.ServiceName -StayProvisioned
        }
    }
}

