<#

#>
param (
  [Parameter(Mandatory)]
  [string]
  $Version
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

&npm install --global tfx-cli@"$Version"