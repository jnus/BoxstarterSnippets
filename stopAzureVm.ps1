$cred=Get-Credential jmn

## - Get-AzureVM to pipe to Stop VM Service(s):
Get-AzureVM -ServiceName "BoxStarterServiceTest1" -Name "BSTestVm1" `
| Stop-AzureVM;
