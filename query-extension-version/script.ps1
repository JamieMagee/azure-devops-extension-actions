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

$arguments = @(
  "extension", "show",
  "--output", "json",
  "--no-color",
  "--auth-type", "pat",
  "--token", "$Token",
  "--publisher", "$PublisherId",
  "--extension-id", "$ExtensionId"
)

$res = & tfx $arguments

$version = $res `
| ConvertFrom-Json `
| Select-Object -ExpandProperty 'versions' `
| Select-Object -First 1 `
| Select-Object -ExpandProperty 'version'

Write-Output "::set-output name=version::$version"