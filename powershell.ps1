# Variables
$resourceGroupName = "example-resources"
$location = "East US"
$storageAccountName = "examplestoraccount" # This name must be globally unique
$storageSkuName = "Standard_LRS" # Standard Locally Redundant Storage

# Login to Azure (Uncomment the line below if you're not already logged in)
# Connect-AzAccount

# Create a new resource group
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create the storage account
$storageAccount = New-AzStorageAccount -ResourceGroupName $resourceGroupName `
                                       -Name $storageAccountName `
                                       -Location $location `
                                       -SkuName $storageSkuName `
                                       -Kind "StorageV2"

# Output the primary blob service endpoint
$storageAccount.PrimaryEndpoints.Blob