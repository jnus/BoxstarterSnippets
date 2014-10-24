choco install Boxstarter.Azure
Import-Module Boxstarter.Azure -Force
Get-AzurePublishSettingsFile
$settings = Read-Host 'Input full path to the azure publishsettings file:'
Import-AzurePublishSettingsFile -PublishSettingsFile $settings
$storageAccount = Read-Host 'Input storage account name:'
Set-AzureSubscription -SubscriptionName Pay-As-You-Go -CurrentStorageAccountName $storageAccount
