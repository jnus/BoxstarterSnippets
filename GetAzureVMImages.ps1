
$imgs = Get-AzureVMImage
$imgs | where {$_.Label -like 'Windows Server*'} | select Label, ImageName, PublishedDate | Format-Table -AutoSize
