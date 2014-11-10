## What ##

Misc powershell examples with Boxstarter and Azure VM integration. Used for demo purposes, for demostrating how to use the Azure powershell library, Boxstarter and the integration of Azure and Boxstarter

The Boxstarter script used in this example to install the servers, is located in the this [gist](https://gist.githubusercontent.com/jnus/27e743aee4021d835151/raw/0b5f7ab7d533d8809eb9715b73fe61f35bf94e9e/gistfile1.txt) 

## How ##

1. Login to your Azure account through the browser [https://manage.windowsazure.com/](https://manage.windowsazure.com/)
2. Create an storage account for use in this example
3. If you have not set up the publishing settings for your Azure account and the default storage account, run setupAzurePublishSettings.ps1 script
4. Run the samples
	1.  createVmAndInstall.ps1: Simple example of creating a VM in a seperate Cloud Service. After the VM is created, it is installed using a Boxstarter script
	2.  createVmAndInstallAdvanced.ps1: Creates a new Cloud Service with 3 VM's and install with a Boxstarter script
	3.  deleteCloudService.ps1: Deletes **all** Cloud Services created with these example scripts and the associated VM's, disks etc. So essentially is deletes whatever resources created with these scripts.
	4.  GetAzureVMImages.ps1: simple example of querying the various predefined images
	5.  startAzureVm.ps1: starts all the VM's with a predefined prefix
	6.  stopAzureVm.ps1: stops all the VM's with a predefined prefix
