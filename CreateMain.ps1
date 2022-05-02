#
# FileName  : CreateMain.ps1
# Date      : 02/08/2018
# Author    : Arthur A. Garcia
# Purpose   : This script will create a project in VSTS and add groups to the
#             project. It will allow you to set security at the user and group level as needed.
#             It will also get security permissions by team or group
#             This script is for demonstration only not to be used as production code
# last Update: 10/07/2020

#import modules
$modName = $PSScriptRoot + "\ProjectAndGroup.psm1" 
Import-Module -Name $modName 

# get parameter data for scripts
$UserDataFile = $PSScriptRoot + "\ProjectDef.json"
$userParameters = Get-Content -Path $UserDataFile | ConvertFrom-Json

Write-Output $userParameters.VSTSMasterAcct

Copy-ProcessAndWorkItemType -userParams $userParameters -InheritedProcessName "Opportunity Tracking - Master" -DestinationProcess "Opportunity Tracking - Master" -NewWorkItemName "Test Opportunity" -WorkItemToCopy "Government opportunity"
