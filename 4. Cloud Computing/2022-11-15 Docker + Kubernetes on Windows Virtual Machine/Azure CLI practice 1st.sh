Microsoft Windows [Version 10.0.22000.1219]
(c) Microsoft Corporation. All rights reserved.

C:\Users\administrator>az

Welcome to Azure CLI!
---------------------
Use `az -h` to see available commands or go to https://aka.ms/cli.

Telemetry
---------
The Azure CLI collects usage data in order to improve your experience.
The data is anonymous and does not include commandline argument values.
The data is collected by Microsoft.

You can change your telemetry settings with `az configure`.


     /\
    /  \    _____   _ _  ___ _
   / /\ \  |_  / | | | \'__/ _\
  / ____ \  / /| |_| | | |  __/
 /_/    \_\/___|\__,_|_|  \___|


Welcome to the cool new Azure CLI!

Use `az --version` to display the current version.
Here are the base commands:

    account             : Manage Azure subscription information.
    acr                 : Manage private registries with Azure Container Registries.
    ad                  : Manage Azure Active Directory Graph entities needed for Role Based Access
                         Control.
    advisor             : Manage Azure Advisor.
    afd                 : Manage Azure Front Door Standard/Premium. For classical Azure Front Door,
                         please refer https://docs.microsoft.com/en-us/cli/azure/network/front-
                         door?view=azure-cli-latest.
    aks                 : Manage Azure Kubernetes Services.
    ams                 : Manage Azure Media Services resources.
    apim                : Manage Azure API Management services.
    appconfig           : Manage App Configurations.
    appservice          : Manage App Service plans.
    aro                 : Manage Azure Red Hat OpenShift clusters.
    backup              : Manage Azure Backups.
    batch               : Manage Azure Batch.
    bicep               : Bicep CLI command group.
    billing             : Manage Azure Billing.
    bot                 : Manage Microsoft Azure Bot Service.
    cache               : Commands to manage CLI objects cached using the `--defer` argument.
    capacity            : Manage capacity.
    cdn                 : Manage Azure Content Delivery Networks (CDNs).
    cloud               : Manage registered Azure clouds.
    cognitiveservices   : Manage Azure Cognitive Services accounts.
    config              : Manage Azure CLI configuration.
    configure           : Manage Azure CLI configuration. This command is interactive.
    consumption         : Manage consumption of Azure resources.
    container           : Manage Azure Container Instances.
    cosmosdb            : Manage Azure Cosmos DB database accounts.
    databoxedge         : Support data box edge device and management.
    deployment          : Manage Azure Resource Manager template deployment at subscription scope.
    deployment-scripts  : Manage deployment scripts at subscription or resource group scope.
    deploymentmanager   : Create and manage rollouts for your service.
    disk                : Manage Azure Managed Disks.
    disk-access         : Manage disk access resources.
    disk-encryption-set : Disk Encryption Set resource.
    dla                 : Manage Data Lake Analytics accounts, jobs, and catalogs.
    dls                 : Manage Data Lake Store accounts and filesystems.
    dms                 : Manage Azure Data Migration Service (DMS) instances.
    eventgrid           : Manage Azure Event Grid topics, domains, domain topics, system topics
                         partner topics, event subscriptions, system topic event subscriptions and
                         partner topic event subscriptions.
    eventhubs           : Manage Azure Event Hubs namespaces, eventhubs, consumergroups and geo
                         recovery configurations - Alias.
    extension           : Manage and update CLI extensions.
    feature             : Manage resource provider features.
    feedback            : Send feedback to the Azure CLI Team.
    find                : I'm an AI robot, my advice is based on our Azure documentation as well as
                         the usage patterns of Azure CLI and Azure ARM users. Using me improves
                         Azure products and documentation.
    functionapp         : Manage function apps. To install the Azure Functions Core tools see
                         https://github.com/Azure/azure-functions-core-tools.
    group               : Manage resource groups and template deployments.
    hdinsight           : Manage HDInsight resources.
    identity            : Managed Identities.
    image               : Manage custom virtual machine images.
    interactive         : Start interactive mode. Installs the Interactive extension if not
                         installed already.
    iot                 : Manage Internet of Things (IoT) assets.
    keyvault            : Manage KeyVault keys, secrets, and certificates.
    kusto               : Manage Azure Kusto resources.
    lab                 : Manage Azure DevTest Labs.
    lock                : Manage Azure locks.
    logicapp            : Manage logic apps.
    login               : Log in to Azure.
    logout              : Log out to remove access to Azure subscriptions.
    managed-cassandra   : Azure Managed Cassandra.
    managedapp          : Manage template solutions provided and maintained by Independent Software
                         Vendors (ISVs).
    managedservices     : Manage the registration assignments and definitions in Azure.
    maps                : Manage Azure Maps.
    mariadb             : Manage Azure Database for MariaDB servers.
    monitor             : Manage the Azure Monitor Service.
    mysql               : Manage Azure Database for MySQL servers.
    netappfiles         : Manage Azure NetApp Files (ANF) Resources.
    network             : Manage Azure Network resources.
    policy              : Manage resource policies.
    postgres            : Manage Azure Database for PostgreSQL servers.
    ppg                 : Manage Proximity Placement Groups.
    private-link        : Private-link association CLI command group.
    provider            : Manage resource providers.
    redis               : Manage dedicated Redis caches for your Azure applications.
    relay               : Manage Azure Relay Service namespaces, WCF relays, hybrid connections, and
                         rules.
    resource            : Manage Azure resources.
    resourcemanagement  : Resourcemanagement CLI command group.
    rest                : Invoke a custom request.
    restore-point       : Manage restore point with res.
    role                : Manage user roles for access control with Azure Active Directory and
                         service principals.
    search              : Manage Azure Search services, admin keys and query keys.
    security            : Manage your security posture with Microsoft Defender for Cloud.
    servicebus          : Manage Azure Service Bus namespaces, queues, topics, subscriptions, rules
                         and geo-disaster recovery configuration alias.
    sf                  : Manage and administer Azure Service Fabric clusters.
    sig                 : Manage shared image gallery.
    signalr             : Manage Azure SignalR Service.
    snapshot            : Manage point-in-time copies of managed disks, native blobs, or other
                         snapshots.
    sql                 : Manage Azure SQL Databases and Data Warehouses.
    sshkey              : Manage ssh public key with vm.
    staticwebapp        : Manage static apps.
    storage             : Manage Azure Cloud Storage resources.
    survey              : Take Azure CLI survey.
    synapse             : Manage and operate Synapse Workspace, Spark Pool, SQL Pool.
    tag                 : Tag Management on a resource.
    term                : Manage marketplace agreement with marketplaceordering.
    ts                  : Manage template specs at subscription or resource group scope.
    upgrade             : Upgrade Azure CLI and extensions.
    version             : Show the versions of Azure CLI modules and extensions in JSON format by
                         default or format configured by --output.
    vm                  : Manage Linux or Windows virtual machines.
    vmss                : Manage groupings of virtual machines in an Azure Virtual Machine Scale Set
                         (VMSS).
    webapp              : Manage web apps.

C:\Users\administrator>az login
A web browser has been opened at https://login.microsoftonline.com/organizations/oauth2/v2.0/authorize. Please continue the login in the web browser. If no web browser is available or if the web browser fails to open, use device code flow with `az login --use-device-code`.
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "feae1453-5da6-41f2-a2e8-fb4661fbbb21",
    "id": "7ae06d59-97e1-4a36-bbfe-efb081b9b03b",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Microsoft Azure 스폰서쉽",
    "state": "Enabled",
    "tenantId": "feae1453-5da6-41f2-a2e8-fb4661fbbb21",
    "user": {
      "name": "user@daeguailab.onmicrosoft.com",
      "type": "user"
    }
  }
]

C:\Users\administrator>az list
'list' is misspelled or not recognized by the system.

Examples from AI knowledge base:
az account list
Get a list of subscriptions for the logged in account. (autogenerated)

az vm list
List all VMs.

az group list --query "[?location=='westus']"
List all resource groups located in the West US region.

https://docs.microsoft.com/en-US/cli/azure/account#az_account_list
Read more about the command in reference docs

C:\Users\administrator>az account list
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "feae1453-5da6-41f2-a2e8-fb4661fbbb21",
    "id": "7ae06d59-97e1-4a36-bbfe-efb081b9b03b",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Microsoft Azure 스폰서쉽",
    "state": "Enabled",
    "tenantId": "feae1453-5da6-41f2-a2e8-fb4661fbbb21",
    "user": {
      "name": "user@daeguailab.onmicrosoft.com",
      "type": "user"
    }
  }
]

C:\Users\administrator>az vm list
[
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG77/providers/Microsoft.Compute/virtualMachines/userwindows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "westus",
    "name": "userwindows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG77/providers/Microsoft.Network/networkInterfaces/userwindows644",
          "primary": null,
          "resourceGroup": "RG77"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "administrator",
      "allowExtensionOperations": true,
      "computerName": "userwindow",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG77",
    "resources": [
      {
        "autoUpgradeMinorVersion": null,
        "enableAutomaticUpgrade": null,
        "forceUpdateTag": null,
        "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG77/providers/Microsoft.Compute/virtualMachines/userwindows/extensions/MicrosoftMonitoringAgent",
        "instanceView": null,
        "location": null,
        "name": null,
        "protectedSettings": null,
        "protectedSettingsFromKeyVault": null,
        "provisioningState": null,
        "publisher": null,
        "resourceGroup": "RG77",
        "settings": null,
        "suppressFailures": null,
        "tags": null,
        "type": null,
        "typeHandlerVersion": null,
        "typePropertiesType": null
      }
    ],
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG77/providers/Microsoft.Compute/disks/userwindows_OsDisk_1_2a2d285fce1244f89c20ebac2f51f28e",
          "resourceGroup": "RG77",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "userwindows_OsDisk_1_2a2d285fce1244f89c20ebac2f51f28e",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:55.298557+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "355063ae-7e30-4be4-b981-3dbc5e6ea3bf",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG41/providers/Microsoft.Compute/virtualMachines/labuser41windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "japaneast",
    "name": "labuser41windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG41/providers/Microsoft.Network/networkInterfaces/labuser41windows503_z1",
          "primary": null,
          "resourceGroup": "RG41"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "matin",
      "allowExtensionOperations": true,
      "computerName": "labuser41window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG41",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG41/providers/Microsoft.Compute/disks/labuser41windows_OsDisk_1_409a5544bf2c4aaabc5066df816a2285",
          "resourceGroup": "RG41",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser41windows_OsDisk_1_409a5544bf2c4aaabc5066df816a2285",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:38:36.817477+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "f30d2890-4c92-468a-8c96-72e28a9d976d",
    "zones": [
      "1"
    ]
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/LABUSER78WINDOWSMK2_GROUP/providers/Microsoft.Compute/virtualMachines/labuser78windowsmk2",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser78windowsmk2",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/labuser78windowsmk2_group/providers/Microsoft.Network/networkInterfaces/labuser78windowsm236",
          "primary": null,
          "resourceGroup": "labuser78windowsmk2_group"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "Link",
      "allowExtensionOperations": true,
      "computerName": "labuser78window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "LABUSER78WINDOWSMK2_GROUP",
    "resources": [
      {
        "autoUpgradeMinorVersion": null,
        "enableAutomaticUpgrade": null,
        "forceUpdateTag": null,
        "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/LABUSER78WINDOWSMK2_GROUP/providers/Microsoft.Compute/virtualMachines/labuser78windowsmk2/extensions/MicrosoftMonitoringAgent",
        "instanceView": null,
        "location": null,
        "name": null,
        "protectedSettings": null,
        "protectedSettingsFromKeyVault": null,
        "provisioningState": null,
        "publisher": null,
        "resourceGroup": "LABUSER78WINDOWSMK2_GROUP",
        "settings": null,
        "suppressFailures": null,
        "tags": null,
        "type": null,
        "typeHandlerVersion": null,
        "typePropertiesType": null
      }
    ],
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/labuser78windowsmk2_group/providers/Microsoft.Compute/disks/labuser78windowsmk2_OsDisk_1_98c674df7e6a4407bbdb7fbfa44f2563",
          "resourceGroup": "labuser78windowsmk2_group",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser78windowsmk2_OsDisk_1_98c674df7e6a4407bbdb7fbfa44f2563",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:20.415542+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "01276d58-12af-44b3-b4fe-0a91bd2baf30",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG11/providers/Microsoft.Compute/virtualMachines/labuser11windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser11windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG11/providers/Microsoft.Network/networkInterfaces/labuser11windows551",
          "primary": null,
          "resourceGroup": "RG11"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser11",
      "allowExtensionOperations": true,
      "computerName": "labuser11window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG11",
    "resources": [
      {
        "autoUpgradeMinorVersion": null,
        "enableAutomaticUpgrade": null,
        "forceUpdateTag": null,
        "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG11/providers/Microsoft.Compute/virtualMachines/labuser11windows/extensions/MicrosoftMonitoringAgent",
        "instanceView": null,
        "location": null,
        "name": null,
        "protectedSettings": null,
        "protectedSettingsFromKeyVault": null,
        "provisioningState": null,
        "publisher": null,
        "resourceGroup": "RG11",
        "settings": null,
        "suppressFailures": null,
        "tags": null,
        "type": null,
        "typeHandlerVersion": null,
        "typePropertiesType": null
      }
    ],
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG11/providers/Microsoft.Compute/disks/labuser11windows_OsDisk_1_5ac05a4c9c704080967685f3e91cc63c",
          "resourceGroup": "RG11",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser11windows_OsDisk_1_5ac05a4c9c704080967685f3e91cc63c",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:49.775245+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "c484e189-fe65-42bf-a0c4-f62a53fa2370",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG12/providers/Microsoft.Compute/virtualMachines/labuser12windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser12windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG12/providers/Microsoft.Network/networkInterfaces/labuser12windows264",
          "primary": null,
          "resourceGroup": "RG12"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "lbu950",
      "allowExtensionOperations": true,
      "computerName": "labuser12window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG12",
    "resources": [
      {
        "autoUpgradeMinorVersion": null,
        "enableAutomaticUpgrade": null,
        "forceUpdateTag": null,
        "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG12/providers/Microsoft.Compute/virtualMachines/labuser12windows/extensions/MicrosoftMonitoringAgent",
        "instanceView": null,
        "location": null,
        "name": null,
        "protectedSettings": null,
        "protectedSettingsFromKeyVault": null,
        "provisioningState": null,
        "publisher": null,
        "resourceGroup": "RG12",
        "settings": null,
        "suppressFailures": null,
        "tags": null,
        "type": null,
        "typeHandlerVersion": null,
        "typePropertiesType": null
      }
    ],
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG12/providers/Microsoft.Compute/disks/labuser12windows_OsDisk_1_e3f3150b6bf6408a989ff56c25bae05d",
          "resourceGroup": "RG12",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser12windows_OsDisk_1_e3f3150b6bf6408a989ff56c25bae05d",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:56.118412+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "48237911-a00f-44a7-aa73-9eb243cbc5f4",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG13/providers/Microsoft.Compute/virtualMachines/labuser13windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser13windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG13/providers/Microsoft.Network/networkInterfaces/labuser13windows663",
          "primary": null,
          "resourceGroup": "RG13"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser13",
      "allowExtensionOperations": true,
      "computerName": "labuser13window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG13",
    "resources": [
      {
        "autoUpgradeMinorVersion": null,
        "enableAutomaticUpgrade": null,
        "forceUpdateTag": null,
        "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG13/providers/Microsoft.Compute/virtualMachines/labuser13windows/extensions/MicrosoftMonitoringAgent",
        "instanceView": null,
        "location": null,
        "name": null,
        "protectedSettings": null,
        "protectedSettingsFromKeyVault": null,
        "provisioningState": null,
        "publisher": null,
        "resourceGroup": "RG13",
        "settings": null,
        "suppressFailures": null,
        "tags": null,
        "type": null,
        "typeHandlerVersion": null,
        "typePropertiesType": null
      }
    ],
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG13/providers/Microsoft.Compute/disks/labuser13windows_OsDisk_1_fd779435ea7b4d8ab3b32d7f8652f6ee",
          "resourceGroup": "RG13",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser13windows_OsDisk_1_fd779435ea7b4d8ab3b32d7f8652f6ee",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:09.337286+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "a02ba569-f957-4e95-a23b-886a9ac587d3",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG14/providers/Microsoft.Compute/virtualMachines/labuser14windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser14windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG14/providers/Microsoft.Network/networkInterfaces/labuser14windows822",
          "primary": null,
          "resourceGroup": "RG14"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser14",
      "allowExtensionOperations": true,
      "computerName": "labuser14window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Updating",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG14",
    "resources": [
      {
        "autoUpgradeMinorVersion": null,
        "enableAutomaticUpgrade": null,
        "forceUpdateTag": null,
        "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG14/providers/Microsoft.Compute/virtualMachines/labuser14windows/extensions/MicrosoftMonitoringAgent",
        "instanceView": null,
        "location": null,
        "name": null,
        "protectedSettings": null,
        "protectedSettingsFromKeyVault": null,
        "provisioningState": null,
        "publisher": null,
        "resourceGroup": "RG14",
        "settings": null,
        "suppressFailures": null,
        "tags": null,
        "type": null,
        "typeHandlerVersion": null,
        "typePropertiesType": null
      }
    ],
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG14/providers/Microsoft.Compute/disks/labuser14windows_OsDisk_1_6cd890ca7a404c03965ba59e665785a0",
          "resourceGroup": "RG14",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser14windows_OsDisk_1_6cd890ca7a404c03965ba59e665785a0",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:58.524688+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "f2ee2332-85bb-494f-9781-43db8ac1deb8",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG15/providers/Microsoft.Compute/virtualMachines/labuser15windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser15windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG15/providers/Microsoft.Network/networkInterfaces/labuser15windows589_z1",
          "primary": null,
          "resourceGroup": "RG15"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "littleduck1219",
      "allowExtensionOperations": true,
      "computerName": "labuser15window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG15",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG15/providers/Microsoft.Compute/disks/labuser15windows_OsDisk_1_ba62187e6c884160b44f69aca8f1f083",
          "resourceGroup": "RG15",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser15windows_OsDisk_1_ba62187e6c884160b44f69aca8f1f083",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:46.399511+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "e77404a2-ddc5-4b29-afee-4bf705779967",
    "zones": [
      "1"
    ]
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG16/providers/Microsoft.Compute/virtualMachines/labuser16windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser16windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG16/providers/Microsoft.Network/networkInterfaces/labuser16windows27",
          "primary": null,
          "resourceGroup": "RG16"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "winkey",
      "allowExtensionOperations": true,
      "computerName": "labuser16window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG16",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG16/providers/Microsoft.Compute/disks/labuser16windows_OsDisk_1_ecb4a9352aed485dbe0dd420dac7d016",
          "resourceGroup": "RG16",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser16windows_OsDisk_1_ecb4a9352aed485dbe0dd420dac7d016",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:00.602831+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "f66ceb58-fd8d-47c6-834e-264482ebf265",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG18/providers/Microsoft.Compute/virtualMachines/labuser18windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser18windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG18/providers/Microsoft.Network/networkInterfaces/labuser18windows890",
          "primary": null,
          "resourceGroup": "RG18"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "foolpen",
      "allowExtensionOperations": true,
      "computerName": "labuser18window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG18",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG18/providers/Microsoft.Compute/disks/labuser18windows_OsDisk_1_fc58593821c84705af951e4bbdd55e23",
          "resourceGroup": "RG18",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser18windows_OsDisk_1_fc58593821c84705af951e4bbdd55e23",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:58.384632+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "97816a33-39d5-4921-be74-cd91ffbd5742",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG2/providers/Microsoft.Compute/virtualMachines/labuser2windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser2windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG2/providers/Microsoft.Network/networkInterfaces/labuser2windows125",
          "primary": null,
          "resourceGroup": "RG2"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "kcw0331",
      "allowExtensionOperations": true,
      "computerName": "labuser2windows",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG2",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG2/providers/Microsoft.Compute/disks/labuser2windows_OsDisk_1_9bee4fb2cb0e44d9813c903b4e75d1e4",
          "resourceGroup": "RG2",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser2windows_OsDisk_1_9bee4fb2cb0e44d9813c903b4e75d1e4",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:10.962297+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "50499718-045b-49e6-bf3c-9432daf5f3de",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG20/providers/Microsoft.Compute/virtualMachines/labuser20windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser20windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG20/providers/Microsoft.Network/networkInterfaces/labuser20windows658",
          "primary": null,
          "resourceGroup": "RG20"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser20",
      "allowExtensionOperations": true,
      "computerName": "labuser20window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG20",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG20/providers/Microsoft.Compute/disks/labuser20windows_OsDisk_1_64d5478c1234419a9d76a706de5a7b74",
          "resourceGroup": "RG20",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser20windows_OsDisk_1_64d5478c1234419a9d76a706de5a7b74",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:06.946587+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "6e5a3970-bc2c-4905-bf39-f9aa13d2ff39",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG24/providers/Microsoft.Compute/virtualMachines/labuser24windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser24windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG24/providers/Microsoft.Network/networkInterfaces/labuser24windows988_z1",
          "primary": null,
          "resourceGroup": "RG24"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser24",
      "allowExtensionOperations": true,
      "computerName": "labuser24window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG24",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG24/providers/Microsoft.Compute/disks/labuser24windows_OsDisk_1_5f18d971d30c431fb14573c340ba809c",
          "resourceGroup": "RG24",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser24windows_OsDisk_1_5f18d971d30c431fb14573c340ba809c",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:51.493939+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "52a7d3ff-983a-4bd6-b06a-c0ee050d859a",
    "zones": [
      "1"
    ]
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG26/providers/Microsoft.Compute/virtualMachines/labuser26windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser26windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG26/providers/Microsoft.Network/networkInterfaces/labuser26windows930",
          "primary": null,
          "resourceGroup": "RG26"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "fitersking",
      "allowExtensionOperations": true,
      "computerName": "labuser26window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG26",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG26/providers/Microsoft.Compute/disks/labuser26windows_OsDisk_1_97608b50851b47cbb9d8d05ac8ba5c81",
          "resourceGroup": "RG26",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser26windows_OsDisk_1_97608b50851b47cbb9d8d05ac8ba5c81",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:35.915711+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "36a7c503-4f58-47bf-990c-7894af9841e1",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG27/providers/Microsoft.Compute/virtualMachines/labuser27windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser27windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG27/providers/Microsoft.Network/networkInterfaces/labuser27windows486",
          "primary": null,
          "resourceGroup": "RG27"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "vlvlstbem",
      "allowExtensionOperations": true,
      "computerName": "labuser27window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG27",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG27/providers/Microsoft.Compute/disks/labuser27windows_OsDisk_1_27cc54c72b384ce7b49d193b2a031654",
          "resourceGroup": "RG27",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser27windows_OsDisk_1_27cc54c72b384ce7b49d193b2a031654",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:00.399704+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "eabe1cf4-3fa8-416c-883d-b9eb676a1806",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG28/providers/Microsoft.Compute/virtualMachines/labuser28windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser28windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG28/providers/Microsoft.Network/networkInterfaces/labuser28windows678",
          "primary": null,
          "resourceGroup": "RG28"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "wooje",
      "allowExtensionOperations": true,
      "computerName": "labuser28window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG28",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG28/providers/Microsoft.Compute/disks/labuser28windows_OsDisk_1_76c11db331564f5c8e7d5d38157ee7ff",
          "resourceGroup": "RG28",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser28windows_OsDisk_1_76c11db331564f5c8e7d5d38157ee7ff",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:57.305872+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "79a800ef-1b67-4557-b40c-c52178238beb",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG31/providers/Microsoft.Compute/virtualMachines/labuser31windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser31windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG31/providers/Microsoft.Network/networkInterfaces/labuser31windows242",
          "primary": null,
          "resourceGroup": "RG31"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "user31",
      "allowExtensionOperations": true,
      "computerName": "labuser31window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG31",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG31/providers/Microsoft.Compute/disks/labuser31windows_OsDisk_1_b2d6d4220f1d4098951f2dce4adfe309",
          "resourceGroup": "RG31",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser31windows_OsDisk_1_b2d6d4220f1d4098951f2dce4adfe309",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:56.946497+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "ea7c83fd-8f7b-4ba4-99d3-9310845d3fdc",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG33/providers/Microsoft.Compute/virtualMachines/labuser33windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser33windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG33/providers/Microsoft.Network/networkInterfaces/labuser33windows760_z1",
          "primary": null,
          "resourceGroup": "RG33"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser33",
      "allowExtensionOperations": true,
      "computerName": "labuser33window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG33",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG33/providers/Microsoft.Compute/disks/labuser33windows_OsDisk_1_12e0648d3b514d488b1269d9ee1e666f",
          "resourceGroup": "RG33",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser33windows_OsDisk_1_12e0648d3b514d488b1269d9ee1e666f",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:08.696656+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "c58a6ae3-1d4b-4a07-b202-1a93d3ed5a8e",
    "zones": [
      "1"
    ]
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_D2s_v3",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG34/providers/Microsoft.Compute/virtualMachines/labuser34window",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser34window",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG34/providers/Microsoft.Network/networkInterfaces/labuser34window513",
          "primary": null,
          "resourceGroup": "RG34"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "gkadntmd",
      "allowExtensionOperations": true,
      "computerName": "labuser34window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG34",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG34/providers/Microsoft.Compute/disks/labuser34window_disk1_4cea7cadf6ba42c08955620c2b4117f9",
          "resourceGroup": "RG34",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser34window_disk1_4cea7cadf6ba42c08955620c2b4117f9",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:52:45.094703+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "a091f9cb-3297-4615-9990-694baf87ed9d",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG36/providers/Microsoft.Compute/virtualMachines/labuser36VM",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser36VM",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG36/providers/Microsoft.Network/networkInterfaces/labuser36vm324",
          "primary": null,
          "resourceGroup": "RG36"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser36",
      "allowExtensionOperations": true,
      "computerName": "labuser36VM",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG36",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG36/providers/Microsoft.Compute/disks/labuser36VM_OsDisk_1_61a975a71768401b8d13769ec747c760",
          "resourceGroup": "RG36",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser36VM_OsDisk_1_61a975a71768401b8d13769ec747c760",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:54.634646+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "fec61ee6-ca60-4e46-ab4d-0b81cf4219c8",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG37/providers/Microsoft.Compute/virtualMachines/labuser37windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser37windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG37/providers/Microsoft.Network/networkInterfaces/labuser37windows767",
          "primary": null,
          "resourceGroup": "RG37"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "winkey",
      "allowExtensionOperations": true,
      "computerName": "labuser37window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG37",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG37/providers/Microsoft.Compute/disks/labuser37windows_OsDisk_1_33c476d1cea54d108ac110a37a1d8f34",
          "resourceGroup": "RG37",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser37windows_OsDisk_1_33c476d1cea54d108ac110a37a1d8f34",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:58.962190+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "63bd56e6-fe57-4fd1-a36a-7adcdcc1ac41",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG38/providers/Microsoft.Compute/virtualMachines/labuser38windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser38windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG38/providers/Microsoft.Network/networkInterfaces/labuser38windows337",
          "primary": null,
          "resourceGroup": "RG38"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "ou5656",
      "allowExtensionOperations": true,
      "computerName": "labuser38window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG38",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG38/providers/Microsoft.Compute/disks/labuser38windows_OsDisk_1_dfea618a5c084a3da01d709dd54c7a32",
          "resourceGroup": "RG38",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser38windows_OsDisk_1_dfea618a5c084a3da01d709dd54c7a32",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:39.415697+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "8d81f40e-83dd-402c-aca8-66f93bc5fbe6",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG39/providers/Microsoft.Compute/virtualMachines/labuser39winodws",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser39winodws",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG39/providers/Microsoft.Network/networkInterfaces/labuser39winodws305_z1",
          "primary": null,
          "resourceGroup": "RG39"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "hj",
      "allowExtensionOperations": true,
      "computerName": "labuser39winodw",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG39",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG39/providers/Microsoft.Compute/disks/labuser39winodws_OsDisk_1_31fed378c2ef4be696e351135607c4a6",
          "resourceGroup": "RG39",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser39winodws_OsDisk_1_31fed378c2ef4be696e351135607c4a6",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:02.337172+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "b881ae10-45c4-4fb3-8bdc-45de3d9d0de3",
    "zones": [
      "1"
    ]
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG40/providers/Microsoft.Compute/virtualMachines/labuser40windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser40windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG40/providers/Microsoft.Network/networkInterfaces/labuser40windows319",
          "primary": null,
          "resourceGroup": "RG40"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "oga",
      "allowExtensionOperations": true,
      "computerName": "labuser40window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG40",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG40/providers/Microsoft.Compute/disks/labuser40windows_OsDisk_1_23cc9c2116f9425a828cae677a82c33e",
          "resourceGroup": "RG40",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser40windows_OsDisk_1_23cc9c2116f9425a828cae677a82c33e",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:38:11.228535+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "9cc19c8b-12cb-4082-94cc-6d14d50182e1",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG43/providers/Microsoft.Compute/virtualMachines/labuser43windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser43windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG43/providers/Microsoft.Network/networkInterfaces/labuser43windows137",
          "primary": null,
          "resourceGroup": "RG43"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "dkska323",
      "allowExtensionOperations": true,
      "computerName": "labuser43window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG43",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG43/providers/Microsoft.Compute/disks/labuser43windows_OsDisk_1_055bd9929516401cb5a01740ee59ee33",
          "resourceGroup": "RG43",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser43windows_OsDisk_1_055bd9929516401cb5a01740ee59ee33",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:00.930917+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "5db75581-a14e-4e97-8a89-e002495635ac",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG47/providers/Microsoft.Compute/virtualMachines/labuser47vm",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser47vm",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG47/providers/Microsoft.Network/networkInterfaces/labuser47vm968_z1",
          "primary": null,
          "resourceGroup": "RG47"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "hajaemin",
      "allowExtensionOperations": true,
      "computerName": "labuser47vm",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG47",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG47/providers/Microsoft.Compute/disks/labuser47vm_OsDisk_1_98b275ab320147abb8f52d6ac4d98f0f",
          "resourceGroup": "RG47",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser47vm_OsDisk_1_98b275ab320147abb8f52d6ac4d98f0f",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:24.181242+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "ea6f3f71-0f4f-4d3f-bb8f-d4730a7d2605",
    "zones": [
      "1"
    ]
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG58/providers/Microsoft.Compute/virtualMachines/labuser58windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser58windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG58/providers/Microsoft.Network/networkInterfaces/labuser58windows207",
          "primary": null,
          "resourceGroup": "RG58"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser58",
      "allowExtensionOperations": true,
      "computerName": "labuser58window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG58",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG58/providers/Microsoft.Compute/disks/labuser58windows_OsDisk_1_25a68034651c47e8ac13e8e96dc41576",
          "resourceGroup": "RG58",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser58windows_OsDisk_1_25a68034651c47e8ac13e8e96dc41576",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:59.102816+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "4890db16-a2fd-4e76-9790-803908d9c3ea",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_D2s_v3",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG6/providers/Microsoft.Compute/virtualMachines/labuser6windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser6windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG6/providers/Microsoft.Network/networkInterfaces/labuser6windows576_z1",
          "primary": null,
          "resourceGroup": "RG6"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "dbtmd324",
      "allowExtensionOperations": true,
      "computerName": "labuser6windows",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG6",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG6/providers/Microsoft.Compute/disks/labuser6windows_OsDisk_1_f0124070d21447e8a82ea81c7f054bec",
          "resourceGroup": "RG6",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser6windows_OsDisk_1_f0124070d21447e8a82ea81c7f054bec",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:43:09.074711+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "b7edd64c-027a-44ff-8a8d-3c40bc57a716",
    "zones": [
      "1"
    ]
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG61/providers/Microsoft.Compute/virtualMachines/labuser61windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser61windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG61/providers/Microsoft.Network/networkInterfaces/labuser61windows215",
          "primary": null,
          "resourceGroup": "RG61"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "wave8000",
      "allowExtensionOperations": true,
      "computerName": "labuser61window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG61",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG61/providers/Microsoft.Compute/disks/labuser61windows_OsDisk_1_abcb6ce1dcaa44f7bb0ecd115ad09ace",
          "resourceGroup": "RG61",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser61windows_OsDisk_1_abcb6ce1dcaa44f7bb0ecd115ad09ace",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:50.618934+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "f2c158f5-0d6f-4d88-a155-0a6028e176be",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG63/providers/Microsoft.Compute/virtualMachines/labuser63windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser63windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG63/providers/Microsoft.Network/networkInterfaces/labuser63windows328",
          "primary": null,
          "resourceGroup": "RG63"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "dlwnsqhrdml",
      "allowExtensionOperations": true,
      "computerName": "labuser63window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG63",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG63/providers/Microsoft.Compute/disks/labuser63windows_OsDisk_1_7a9270601bc54d768d5c28bffe9d4dfc",
          "resourceGroup": "RG63",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser63windows_OsDisk_1_7a9270601bc54d768d5c28bffe9d4dfc",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:00.040277+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "261c2171-b910-4821-b2ad-1aac5013d72e",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG66/providers/Microsoft.Compute/virtualMachines/labuser66windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser66windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG66/providers/Microsoft.Network/networkInterfaces/labuser66windows14",
          "primary": null,
          "resourceGroup": "RG66"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "gidong136",
      "allowExtensionOperations": true,
      "computerName": "labuser66window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG66",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG66/providers/Microsoft.Compute/disks/labuser66windows_OsDisk_1_568069972bff4fe6b66363665b17954b",
          "resourceGroup": "RG66",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser66windows_OsDisk_1_568069972bff4fe6b66363665b17954b",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:57.680875+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "b5d6d37a-9a15-4e42-a0ce-8049a9a08c5d",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG73/providers/Microsoft.Compute/virtualMachines/labuser73windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser73windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG73/providers/Microsoft.Network/networkInterfaces/labuser73windows318",
          "primary": null,
          "resourceGroup": "RG73"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "labuser73",
      "allowExtensionOperations": true,
      "computerName": "labuser73window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG73",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG73/providers/Microsoft.Compute/disks/labuser73windows_OsDisk_1_2fe70c41b981400a99a215490626bfad",
          "resourceGroup": "RG73",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser73windows_OsDisk_1_2fe70c41b981400a99a215490626bfad",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:36:59.727774+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "0c402f8b-6d83-47a8-805a-2b3a683742f8",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG79/providers/Microsoft.Compute/virtualMachines/labuser79windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser79windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG79/providers/Microsoft.Network/networkInterfaces/labuser79windows152",
          "primary": null,
          "resourceGroup": "RG79"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "winkey",
      "allowExtensionOperations": true,
      "computerName": "labuser79window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG79",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG79/providers/Microsoft.Compute/disks/labuser79windows_OsDisk_1_4ad7c292f4e24aebb6dadcee887afaf4",
          "resourceGroup": "RG79",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser79windows_OsDisk_1_4ad7c292f4e24aebb6dadcee887afaf4",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:53.853393+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "f3b85081-980e-421d-9b60-4d1a7267f36a",
    "zones": null
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG8/providers/Microsoft.Compute/virtualMachines/labuser8windows",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser8windows",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG8/providers/Microsoft.Network/networkInterfaces/labuser8windows846_z1",
          "primary": null,
          "resourceGroup": "RG8"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "eojin",
      "allowExtensionOperations": true,
      "computerName": "labuser8windows",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG8",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG8/providers/Microsoft.Compute/disks/labuser8windows_OsDisk_1_b4d39076ce1846ae985a47adb77c220d",
          "resourceGroup": "RG8",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser8windows_OsDisk_1_b4d39076ce1846ae985a47adb77c220d",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:56.400295+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "f6de36e8-b856-4306-8e71-91dd05ed9fee",
    "zones": [
      "1"
    ]
  },
  {
    "additionalCapabilities": null,
    "applicationProfile": null,
    "availabilitySet": null,
    "billingProfile": null,
    "capacityReservation": null,
    "diagnosticsProfile": {
      "bootDiagnostics": {
        "enabled": true,
        "storageUri": null
      }
    },
    "evictionPolicy": null,
    "extendedLocation": null,
    "extensionsTimeBudget": null,
    "hardwareProfile": {
      "vmSize": "Standard_DS2_v2",
      "vmSizeProperties": null
    },
    "host": null,
    "hostGroup": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG9/providers/Microsoft.Compute/virtualMachines/labuser9window",
    "identity": null,
    "instanceView": null,
    "licenseType": "Windows_Client",
    "location": "koreacentral",
    "name": "labuser9window",
    "networkProfile": {
      "networkApiVersion": null,
      "networkInterfaceConfigurations": null,
      "networkInterfaces": [
        {
          "deleteOption": "Detach",
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG9/providers/Microsoft.Network/networkInterfaces/labuser9window333_z1",
          "primary": null,
          "resourceGroup": "RG9"
        }
      ]
    },
    "osProfile": {
      "adminPassword": null,
      "adminUsername": "harang",
      "allowExtensionOperations": true,
      "computerName": "labuser9window",
      "customData": null,
      "linuxConfiguration": null,
      "requireGuestProvisionSignal": true,
      "secrets": [],
      "windowsConfiguration": {
        "additionalUnattendContent": null,
        "enableAutomaticUpdates": true,
        "enableVmAgentPlatformUpdates": false,
        "patchSettings": {
          "assessmentMode": "ImageDefault",
          "automaticByPlatformSettings": null,
          "enableHotpatching": false,
          "patchMode": "AutomaticByOS"
        },
        "provisionVmAgent": true,
        "timeZone": null,
        "winRm": null
      }
    },
    "plan": null,
    "platformFaultDomain": null,
    "priority": null,
    "provisioningState": "Succeeded",
    "proximityPlacementGroup": null,
    "resourceGroup": "RG9",
    "resources": null,
    "scheduledEventsProfile": null,
    "securityProfile": null,
    "storageProfile": {
      "dataDisks": [],
      "diskControllerType": null,
      "imageReference": {
        "communityGalleryImageId": null,
        "exactVersion": "22000.1219.221105",
        "id": null,
        "offer": "windows-11",
        "publisher": "microsoftwindowsdesktop",
        "sharedGalleryImageId": null,
        "sku": "win11-21h2-pro",
        "version": "latest"
      },
      "osDisk": {
        "caching": "ReadWrite",
        "createOption": "FromImage",
        "deleteOption": "Delete",
        "diffDiskSettings": null,
        "diskSizeGb": 127,
        "encryptionSettings": null,
        "image": null,
        "managedDisk": {
          "diskEncryptionSet": null,
          "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG9/providers/Microsoft.Compute/disks/labuser9window_OsDisk_1_edf959fad5864aa98018c4613588906e",
          "resourceGroup": "RG9",
          "securityProfile": null,
          "storageAccountType": "Premium_LRS"
        },
        "name": "labuser9window_OsDisk_1_edf959fad5864aa98018c4613588906e",
        "osType": "Windows",
        "vhd": null,
        "writeAcceleratorEnabled": null
      }
    },
    "tags": null,
    "timeCreated": "2022-11-15T04:37:26.790633+00:00",
    "type": "Microsoft.Compute/virtualMachines",
    "userData": null,
    "virtualMachineScaleSet": null,
    "vmId": "f934fe34-a356-44fc-9e73-79313187d4ae",
    "zones": [
      "1"
    ]
  }
]

C:\Users\administrator>az group list
[
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-NCUS",
    "location": "northcentralus",
    "managedBy": null,
    "name": "DefaultResourceGroup-NCUS",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-SUK",
    "location": "uksouth",
    "managedBy": null,
    "name": "DefaultResourceGroup-SUK",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/Kanghoyong-rg",
    "location": "eastus2",
    "managedBy": null,
    "name": "Kanghoyong-rg",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/ML_EDU",
    "location": "eastus2",
    "managedBy": null,
    "name": "ML_EDU",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-EUS2",
    "location": "eastus2",
    "managedBy": null,
    "name": "DefaultResourceGroup-EUS2",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-CUS",
    "location": "centralus",
    "managedBy": null,
    "name": "DefaultResourceGroup-CUS",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-EUS",
    "location": "eastus",
    "managedBy": null,
    "name": "DefaultResourceGroup-EUS",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-ECAN",
    "location": "canadaeast",
    "managedBy": null,
    "name": "DefaultResourceGroup-ECAN",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-EJP",
    "location": "japaneast",
    "managedBy": null,
    "name": "DefaultResourceGroup-EJP",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-WUS",
    "location": "westus",
    "managedBy": null,
    "name": "DefaultResourceGroup-WUS",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/cloud-shell-storage-southeastasia",
    "location": "southeastasia",
    "managedBy": null,
    "name": "cloud-shell-storage-southeastasia",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/NetworkWatcherRG",
    "location": "koreacentral",
    "managedBy": null,
    "name": "NetworkWatcherRG",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-SE",
    "location": "koreacentral",
    "managedBy": null,
    "name": "DefaultResourceGroup-SE",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG1",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG1",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG2",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG2",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG3",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG3",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG4",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG4",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG5",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG5",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG6",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG6",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG7",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG7",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG8",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG8",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG9",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG9",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG10",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG10",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG11",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG11",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG12",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG12",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG13",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG13",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG14",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG14",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG15",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG15",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG16",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG16",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG17",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG17",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG18",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG18",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG19",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG19",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG20",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG20",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG21",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG21",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG22",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG22",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG23",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG23",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG24",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG24",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG25",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG25",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG26",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG26",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG27",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG27",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG28",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG28",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG29",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG29",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG30",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG30",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG31",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG31",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG32",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG32",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG33",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG33",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG34",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG34",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG35",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG35",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG36",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG36",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG37",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG37",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG38",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG38",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG39",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG39",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG40",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG40",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG41",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG41",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG42",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG42",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG43",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG43",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG44",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG44",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG45",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG45",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG46",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG46",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG47",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG47",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG48",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG48",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG49",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG49",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG50",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG50",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG51",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG51",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG52",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG52",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG53",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG53",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG54",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG54",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG55",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG55",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG56",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG56",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG57",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG57",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG58",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG58",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG59",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG59",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG60",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG60",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG61",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG61",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG62",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG62",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG63",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG63",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG64",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG64",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG65",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG65",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG66",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG66",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG67",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG67",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG68",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG68",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG69",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG69",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG70",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG70",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG71",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG71",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG72",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG72",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG73",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG73",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG74",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG74",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG75",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG75",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG76",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG76",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG77",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG77",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG78",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG78",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG79",
    "location": "koreacentral",
    "managedBy": null,
    "name": "RG79",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/labuser78windowsmk2_group",
    "location": "koreacentral",
    "managedBy": null,
    "name": "labuser78windowsmk2_group",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": null,
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-EAU",
    "location": "australiaeast",
    "managedBy": null,
    "name": "DefaultResourceGroup-EAU",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  },
  {
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/DefaultResourceGroup-SEA",
    "location": "southeastasia",
    "managedBy": null,
    "name": "DefaultResourceGroup-SEA",
    "properties": {
      "provisioningState": "Succeeded"
    },
    "tags": {},
    "type": "Microsoft.Resources/resourceGroups"
  }
]

C:\Users\administrator>az group create --name RGTest77 --location eastus
{
  "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RGTest77",
  "location": "eastus",
  "managedBy": null,
  "name": "RGTest77",
  "properties": {
    "provisioningState": "Succeeded"
  },
  "tags": null,
  "type": "Microsoft.Resources/resourceGroups"
}

C:\Users\administrator>az network vnet create --name uservnet --resource-group RGTest77 --subnet-name usersubnet --address-prefixes 10.0.0.0/16 --subnet-prefixes 10.0.0.0/24
{
  "newVNet": {
    "addressSpace": {
      "addressPrefixes": [
        "10.0.0.0/16"
      ]
    },
    "bgpCommunities": null,
    "ddosProtectionPlan": null,
    "dhcpOptions": {
      "dnsServers": []
    },
    "enableDdosProtection": false,
    "enableVmProtection": null,
    "encryption": null,
    "etag": "W/\"3d0b79bb-7d4e-4b44-a56d-a9e6f85cc64d\"",
    "extendedLocation": null,
    "flowTimeoutInMinutes": null,
    "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RGTest77/providers/Microsoft.Network/virtualNetworks/uservnet",
    "ipAllocations": null,
    "location": "eastus",
    "name": "uservnet",
    "provisioningState": "Succeeded",
    "resourceGroup": "RGTest77",
    "resourceGuid": "29cc1229-615a-4786-9300-b161226cedeb",
    "subnets": [
      {
        "addressPrefix": "10.0.0.0/24",
        "addressPrefixes": null,
        "applicationGatewayIpConfigurations": null,
        "delegations": [],
        "etag": "W/\"3d0b79bb-7d4e-4b44-a56d-a9e6f85cc64d\"",
        "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RGTest77/providers/Microsoft.Network/virtualNetworks/uservnet/subnets/usersubnet",
        "ipAllocations": null,
        "ipConfigurationProfiles": null,
        "ipConfigurations": null,
        "name": "usersubnet",
        "natGateway": null,
        "networkSecurityGroup": null,
        "privateEndpointNetworkPolicies": "Disabled",
        "privateEndpoints": null,
        "privateLinkServiceNetworkPolicies": "Enabled",
        "provisioningState": "Succeeded",
        "purpose": null,
        "resourceGroup": "RGTest77",
        "resourceNavigationLinks": null,
        "routeTable": null,
        "serviceAssociationLinks": null,
        "serviceEndpointPolicies": null,
        "serviceEndpoints": null,
        "type": "Microsoft.Network/virtualNetworks/subnets"
      }
    ],
    "tags": {},
    "type": "Microsoft.Network/virtualNetworks",
    "virtualNetworkPeerings": []
  }
}

C:\Users\administrator>az vm create --resource-group RGTest77 --name usertestvm --image UbuntuLTS --vnet-name uservnet --subnet usersubnet --generate-ssh-keys
SSH key files 'C:\Users\administrator\.ssh\id_rsa' and 'C:\Users\administrator\.ssh\id_rsa.pub' have been generated under ~/.ssh to allow SSH access to the VM. If using machines without permanent storage, back up your keys to a safe location.
It is recommended to use parameter "--public-ip-sku Standard" to create new VM with Standard public IP. Please note that the default public IP used for VM creation will be changed from Basic to Standard in the future.
{
  "fqdns": "",
  "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RGTest77/providers/Microsoft.Compute/virtualMachines/usertestvm",
  "location": "eastus",
  "macAddress": "60-45-BD-D4-CE-FF",
  "powerState": "VM running",
  "privateIpAddress": "10.0.0.4",
  "publicIpAddress": "20.169.181.183",
  "resourceGroup": "RGTest77",
  "zones": ""
}

C:\Users\administrator>az vm show --name usertestvm --resource-group RGTest77 --query 'networkProfile.networkInterfaces[].id'
"networkProfile.networkInterfaces[].id"

C:\Users\administrator>az group delete --name RGTest77
Are you sure you want to perform this operation? (y/n): y

C:\Users\administrator>
C:\Users\administrator>az acr create --resource-group RG77 --name userACR MyHelmACR --sku Basic
unrecognized arguments: MyHelmACR

Examples from AI knowledge base:
az acr create --name MyRegistry --resource-group MyResourceGroup --sku Standard
Create a managed container registry with the Standard SKU.

az acr create --location westus2 --name MyRegistry --resource-group MyResourceGroup --sku Classic
Create an Azure Container Registry. (autogenerated)

https://docs.microsoft.com/en-US/cli/azure/acr#az_acr_create
Read more about the command in reference docs

C:\Users\administrator>az acr create --resource-group RG77 --name useracr --sku Basic
{
  "adminUserEnabled": false,
  "anonymousPullEnabled": false,
  "creationDate": "2022-11-15T07:06:06.072966+00:00",
  "dataEndpointEnabled": false,
  "dataEndpointHostNames": [],
  "encryption": {
    "keyVaultProperties": null,
    "status": "disabled"
  },
  "id": "/subscriptions/7ae06d59-97e1-4a36-bbfe-efb081b9b03b/resourceGroups/RG77/providers/Microsoft.ContainerRegistry/registries/useracr",
  "identity": null,
  "location": "koreacentral",
  "loginServer": "useracr.azurecr.io",
  "name": "useracr",
  "networkRuleBypassOptions": "AzureServices",
  "networkRuleSet": null,
  "policies": {
    "azureAdAuthenticationAsArmPolicy": {
      "status": "enabled"
    },
    "exportPolicy": {
      "status": "enabled"
    },
    "quarantinePolicy": {
      "status": "disabled"
    },
    "retentionPolicy": {
      "days": 7,
      "lastUpdatedTime": "2022-11-15T07:06:08.859334+00:00",
      "status": "disabled"
    },
    "softDeletePolicy": {
      "lastUpdatedTime": "2022-11-15T07:06:08.859334+00:00",
      "retentionDays": 7,
      "status": "disabled"
    },
    "trustPolicy": {
      "status": "disabled",
      "type": "Notary"
    }
  },
  "privateEndpointConnections": [],
  "provisioningState": "Succeeded",
  "publicNetworkAccess": "Enabled",
  "resourceGroup": "RG77",
  "sku": {
    "name": "Basic",
    "tier": "Basic"
  },
  "status": null,
  "systemData": {
    "createdAt": "2022-11-15T07:06:06.072966+00:00",
    "createdBy": "user@daeguailab.onmicrosoft.com",
    "createdByType": "User",
    "lastModifiedAt": "2022-11-15T07:06:06.072966+00:00",
    "lastModifiedBy": "user@daeguailab.onmicrosoft.com",
    "lastModifiedByType": "User"
  },
  "tags": {},
  "type": "Microsoft.ContainerRegistry/registries",
  "zoneRedundancy": "Disabled"
}

C:\Users\administrator>az aks create --resource-group RG77 --name useraks --location eastus --attach-acr useracr --generate-ssh-keys
Waiting for AAD role to propagate[################################    ]  90.0000%Could not create a role assignment for ACR. Are you an Owner on this subscription?

C:\Users\administrator>az aks install-cli
The detected arch is intel64 family 6 model 63 stepping 2, genuineintel, would be treated as amd64, which may not match the actual situation due to translation and other reasons. If there is any problem, please download the appropriate binary by yourself.
Downloading client to "C:\Users\administrator\.azure-kubectl\kubectl.exe" from "https://storage.googleapis.com/kubernetes-release/release/v1.25.4/bin/windows/amd64/kubectl.exe"
Please add "C:\Users\administrator\.azure-kubectl" to your search PATH so the `kubectl.exe` can be found. 2 options:
    1. Run "set PATH=%PATH%;C:\Users\administrator\.azure-kubectl" or "$env:path += ';C:\Users\administrator\.azure-kubectl'" for PowerShell. This is good for the current command session.
    2. Update system PATH environment variable by following "Control Panel->System->Advanced->Environment Variables", and re-open the command window. You only need to do it once
The detected arch is intel64 family 6 model 63 stepping 2, genuineintel, would be treated as amd64, which may not match the actual situation due to translation and other reasons. If there is any problem, please download the appropriate binary by yourself.
Downloading client to "C:\Users\administrator\AppData\Local\Temp\tmpzf1tc5aa\kubelogin.zip" from "https://github.com/Azure/kubelogin/releases/download/v0.0.21/kubelogin.zip"
Please add "C:\Users\administrator\.azure-kubelogin" to your search PATH so the `kubelogin.exe` can be found. 2 options:
    1. Run "set PATH=%PATH%;C:\Users\administrator\.azure-kubelogin" or "$env:path += 'C:\Users\administrator\.azure-kubelogin'" for PowerShell. This is good for the current command session.
    2. Update system PATH environment variable by following "Control Panel->System->Advanced->Environment Variables", and re-open the command window. You only need to do it once

C:\Users\administrator>az aks get-credentials --resource-group RG77 --name useraks
Merged "useraks" as current context in C:\Users\administrator\.kube\config

C:\Users\administrator>[오후 4:32] 김영욱 교장선생님
'[오후' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\administrator>git clone https://github.com/Azure-Samples/azure-voting-app-redis.git
'git' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\administrator>GitHub - Azure-Samples/azure-voting-app-redis: Azure voting app used in docs.
'GitHub' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\administrator>Azure voting app used in docs. Contribute to Azure-Samples/azure-voting-app-redis development by creating an account on GitHub.
'Azure' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\administrator>
C:\Users\administrator>