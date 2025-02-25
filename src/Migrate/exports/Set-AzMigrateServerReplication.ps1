
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Updates the target properties for the replicating server.
.Description
The Set-AzMigrateServerReplication cmdlet updates the target properties for the replicating server.
.Example
PS C:\> Set-AzMigrateServerReplication -TargetObjectID '/Subscriptions/xxx-xxx-xxx/resourceGroups/azmigratepwshtestasr13072020/providers/Microsoft.RecoveryServices/vaults/AzMigrateTestProjectPWSH02aarsvault/replicationFabrics/AzMigratePWSHTc8d1replicationfabric/replicationProtectionContainers/AzMigratePWSHTc8d1replicationcontainer/replicationMigrationItems/bcdr-vcenter-fareast-corp-micro-cfcc5a24-a40e-56b9-a6af-e206c9ca4f93_500f44f8-2aa3-587b-8958-ead358639629' -TargetVMName 'rb-w2k12r2-1'

ActivityId                       : da958651-96b3-4e65-a41e-897d4b06f7dd ActivityId: 3a4c8d4d-920a-47cd-82c3-f3dcce90a588
AllowedAction                    : {Cancel}
CustomDetailAffectedObjectDetail : Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20180110.JobDetailsAffectedObjectDetails
CustomDetailInstanceType         : AsrJobDetails
EndTime                          :
Error                            : {}
FriendlyName                     : Update
Id                               : /Subscriptions/xxx-xxx-xxx/resourceGroups/azmigratepwshtestasr13072020/providers/Microsoft.Recover
                                   yServices/vaults/AzMigrateTestProjectPWSH02aarsvault/replicationJobs/931dde9a-de67-4a30-a045-bb9d6162f8ab
Location                         :
Name                             : 931dde9a-de67-4a30-a045-bb9d6162f8ab
ScenarioName                     : Update
StartTime                        : 9/25/20 9:20:08 PM
State                            : InProgress
StateDescription                 : InProgress
TargetInstanceType               : ProtectionEntity
TargetObjectId                   : 101883a0-23f7-538a-bbd5-6d8b4fa900e2
TargetObjectName                 : prsadhu-TestVM
Task                             : {DisableProtectionOnPrimary, UpdateDraState}
Type                             : Microsoft.RecoveryServices/vaults/replicationJobs
.Example
PS C:\> $OSDisk = Set-AzMigrateDiskMapping -DiskID "6000C294-1217-dec3-bc18-81f117220424" -DiskName "ContosoDisk_1"
PS C:\> $DataDisk = Set-AzMigrateDiskMapping -DiskID "6000C292-79b9-bbdc-fb8a-f1fa8dbeff84" -DiskName "ContosoDisk_2"
PS C:\> $DiskMapping = $OSDisk, $DataDisk
PS C:\> Set-AzMigrateServerReplication -TargetObjectId "/Subscriptions/7c943c1b-5122-4097-90c8-861411bdd574/resourceGroups/cbtsignoff2105srcrg/providers/Microsoft.RecoveryServices/vaults/signoff2105app1452vault/replicationFabrics/signoff2105app1c36replicationfabric/replicationProtectionContainers/signoff2105app1c36replicationcontainer/replicationMigrationItems/idclab-vcen67-fareast-corp-micr-6f5e3b29-29ad-4e62-abbd-6cd33c4183ef_5015f6d8-fc84-afdf-de47-1eab79330f00" -DiskToUpdate $DiskMapping

ActivityId                       : c533d88d-2211-43c6-b615-7b46876d8882 ActivityId: de18df8b-8d43-4249-8989-846d33a124f6
AllowedAction                    : {}
CustomDetailAffectedObjectDetail : Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.JobDetailsAffectedObje
                                   ctDetails
CustomDetailInstanceType         : AsrJobDetails
EndTime                          :
Error                            : {}
FriendlyName                     : Update the virtual machine
Id                               : /Subscriptions/7c943c1b-5122-4097-90c8-861411bdd574/resourceGroups/cbtsignoff2105src
                                   rg/providers/Microsoft.RecoveryServices/vaults/signoff2105app1452vault/replicationJo
                                   bs/6ec1cca6-87c7-4f14-9657-bd0469c02fcd
Location                         :
Name                             : 6ec1cca6-87c7-4f14-9657-bd0469c02fcd
ScenarioName                     : UpdateVmProperties
StartTime                        : 8/30/2021 7:08:51 AM
State                            : InProgress
StateDescription                 : InProgress
TargetInstanceType               : ProtectionEntity
TargetObjectId                   : f3aa6bd4-1b60-52bb-b12d-e850f8d8f13c
TargetObjectName                 : Win2k16
Task                             : {UpdateVmPropertiesTask}
Type                             : Microsoft.RecoveryServices/vaults/replicationJobs

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IJob
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

DISKTOUPDATE <IVMwareCbtUpdateDiskInput[]>: Updates the disk for the Azure VM to be created.
  DiskId <String>: The disk Id.
  [TargetDiskName <String>]: The target disk name.

INPUTOBJECT <IMigrationItem>: Specifies the replicating server for which the properties need to be updated. The server object can be retrieved using the Get-AzMigrateServerReplication cmdlet.
  [Location <String>]: Resource Location
  [ProviderSpecificDetail <IMigrationProviderSpecificSettings>]: The migration provider custom settings.

NICTOUPDATE <IVMwareCbtNicInput[]>: Updates the NIC for the Azure VM to be created.
  IsPrimaryNic <String>: A value indicating whether this is the primary NIC.
  NicId <String>: The NIC Id.
  [IsSelectedForMigration <String>]: A value indicating whether this NIC is selected for migration.
  [TargetNicName <String>]: Target NIC name.
  [TargetStaticIPAddress <String>]: The static IP address.
  [TargetSubnetName <String>]: Target subnet name.

UPDATEDISKTAG <IVMwareCbtEnableMigrationInputTargetDiskTags>: Specifies the tag to be used for disk creation.
  [(Any) <String>]: This indicates any property can be added to this object.

UPDATENICTAG <IVMwareCbtEnableMigrationInputTargetNicTags>: Specifies the tag to be used for NIC creation.
  [(Any) <String>]: This indicates any property can be added to this object.

UPDATEVMTAG <IVMwareCbtEnableMigrationInputTargetVmtags>: Specifies the tag to be used for VM creation.
  [(Any) <String>]: This indicates any property can be added to this object.
.Link
https://docs.microsoft.com/powershell/module/az.migrate/set-azmigrateserverreplication
#>
function Set-AzMigrateServerReplication {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IJob])]
[CmdletBinding(DefaultParameterSetName='ByIDVMwareCbt', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='ByIDVMwareCbt', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies the replcating server for which the properties need to be updated.
    # The ID should be retrieved using the Get-AzMigrateServerReplication cmdlet.
    ${TargetObjectID},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies the replcating server for which the properties need to be updated.
    # The ID should be retrieved using the Get-AzMigrateServerReplication cmdlet.
    ${TargetVMName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies the name of the Azure VM to be created.
    ${TargetDiskName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Updates the SKU of the Azure VM to be created.
    ${TargetVMSize},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Updates the Virtual Network id within the destination Azure subscription to which the server needs to be migrated.
    ${TargetNetworkId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Updates the Resource Group id within the destination Azure subscription to which the server needs to be migrated.
    ${TargetResourceGroupID},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IVMwareCbtNicInput[]]
    # Updates the NIC for the Azure VM to be created.
    # To construct, see NOTES section for NICTOUPDATE properties and create a hash table.
    ${NicToUpdate},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IVMwareCbtUpdateDiskInput[]]
    # Updates the disk for the Azure VM to be created.
    # To construct, see NOTES section for DISKTOUPDATE properties and create a hash table.
    ${DiskToUpdate},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies the Availability Set to be used for VM creation.
    ${TargetAvailabilitySet},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies the Availability Zone to be used for VM creation.
    ${TargetAvailabilityZone},

    [Parameter()]
    [ArgumentCompleter({ "NoLicenseType" , "PAYG" , "AHUB" })]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies if Azure Hybrid benefit for SQL Server is applicable for the server to be migrated.
    ${SqlServerLicenseType},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.Collections.Hashtable]
    # Specifies the tag to be used for Resource creation.
    ${UpdateTag},

    [Parameter()]
    [ArgumentCompleter({ "Merge" , "Replace" , "Delete" })]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies update tag operation.
    ${UpdateTagOperation},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IVMwareCbtEnableMigrationInputTargetVmtags]
    # Specifies the tag to be used for VM creation.
    # To construct, see NOTES section for UPDATEVMTAG properties and create a hash table.
    ${UpdateVMTag},

    [Parameter()]
    [ArgumentCompleter({ "Merge" , "Replace" , "Delete" })]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies update VM tag operation.
    ${UpdateVMTagOperation},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IVMwareCbtEnableMigrationInputTargetNicTags]
    # Specifies the tag to be used for NIC creation.
    # To construct, see NOTES section for UPDATENICTAG properties and create a hash table.
    ${UpdateNicTag},

    [Parameter()]
    [ArgumentCompleter({ "Merge" , "Replace" , "Delete" })]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies update NIC tag operation.
    ${UpdateNicTagOperation},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IVMwareCbtEnableMigrationInputTargetDiskTags]
    # Specifies the tag to be used for disk creation.
    # To construct, see NOTES section for UPDATEDISKTAG properties and create a hash table.
    ${UpdateDiskTag},

    [Parameter()]
    [ArgumentCompleter({ "Merge" , "Replace" , "Delete" })]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies update disk tag operation.
    ${UpdateDiskTagOperation},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies the storage account to be used for boot diagnostics.
    ${TargetBootDiagnosticsStorageAccount},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The subscription Id.
    ${SubscriptionId},

    [Parameter(ParameterSetName='ByInputObjectVMwareCbt', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IMigrationItem]
    # Specifies the replicating server for which the properties need to be updated.
    # The server object can be retrieved using the Get-AzMigrateServerReplication cmdlet.
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            ByIDVMwareCbt = 'Az.Migrate.custom\Set-AzMigrateServerReplication';
            ByInputObjectVMwareCbt = 'Az.Migrate.custom\Set-AzMigrateServerReplication';
        }
        if (('ByIDVMwareCbt', 'ByInputObjectVMwareCbt') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
