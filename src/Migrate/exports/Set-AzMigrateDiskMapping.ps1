
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
Updates disk mapping
.Description
The Set-AzMigrateDiskMapping cmdlet updates a mapping of the source disk attached to the server to be migrated
.Example
PS C:\> Set-AzMigrateDiskMapping -DiskID "6000C294-1217-dec3-bc18-81f117220424" -DiskName "ContosoDisk_1"

DiskId                               TargetDiskName
------                               --------------
6000C294-1217-dec3-bc18-81f117220424 ContosoDisk_1

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IVMwareCbtUpdateDiskInput
.Link
https://docs.microsoft.com/powershell/module/az.migrate/set-azmigratediskmapping
#>
function Set-AzMigrateDiskMapping {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.Migrate.Models.Api20210210.IVMwareCbtUpdateDiskInput])]
[CmdletBinding(DefaultParameterSetName='VMwareCbt', PositionalBinding=$false)]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies the disk ID of the disk attached to the discovered server to be migrated.
    ${DiskID},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.Migrate.Category('Path')]
    [System.String]
    # Specifies the name of the managed disk to be created.
    ${DiskName}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            VMwareCbt = 'Az.Migrate.custom\Set-AzMigrateDiskMapping';
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
