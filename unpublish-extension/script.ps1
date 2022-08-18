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
  $ExtensionId
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$arguments = @(
  "extension", "unpublish",
  "--output", "json",
  "--no-color",
  "--auth-type", "pat",
  "--token", "$Token",
  "--publisher", "$PublisherId",
  "--extension-id", "$ExtensionId"
)

& tfx $arguments
