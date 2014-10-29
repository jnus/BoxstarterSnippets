
Get-AzureVMImage | where {$_.Label -like 'Windows Server*'} | select Label, ImageName, PublishedDate | Format-Table -AutoSize
