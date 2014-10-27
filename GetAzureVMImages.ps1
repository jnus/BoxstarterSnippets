$imgs = Get-AzureVMImage
$imgs | where {$_.Label -like 'Windows Server*'} | select Label, RecommendedVMSize, PublishedDate | Format-Table -AutoSize
