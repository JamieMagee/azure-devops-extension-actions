<#

#>
param(
  [Parameter(Mandatory)]
  [string]
  $Token,

  [Parameter(Mandatory)]
  [string]
  $PublisherId,

  [Parameter(Mandatory)]
  [string]
  $ExtensionId,

  [Parameter(Mandatory)]
  [string]
  $ShareWith
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$arguments = @(
  "extension", "share",
  "--output", "json",
  "--no-color",
  "--auth-type", "pat",
  "--token", "$Token",
  "--publisher", "$PublisherId",
  "--extension-id", "$ExtensionId"
  "--share-with", "$ShareWith"
)

& tfx $arguments