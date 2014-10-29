$services = Get-AzureService

$deleting = Get-AzureService | Where-Object {$_.Label -like "BoxStarterTestService*"}

Write-Host "Deleting cloud services"
$deleting | Format-Table

$deleting | ForEach-Object {
    Remove-AzureService -ServiceName $_.ServiceName -DeleteAll -Force
}


