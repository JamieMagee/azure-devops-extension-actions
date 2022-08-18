<#

#>
param (
  [Parameter(Mandatory)]
  [string]
  $Token,

  [Parameter(Mandatory)]
  [string]
  $PublisherId,

  [Parameter(Mandatory)]
  [string]
  $ExtensionId
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$res = tfx extension show `
  --auth-type pat `
  --token $Token `
  --publisher $PublisherId `
  --extension-id $ExtensionId `
  --output json `
  --no-color

Write-Host $res.ToString()