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
  $ServiceUrl
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$arguments = @(
  "extension", "install",
  "--output", "json",
  "--no-color",
  "--auth-type", "pat",
  "--token", "$Token",
  "--publisher", "$PublisherId",
  "--extension-id", "$ExtensionId"
  "--service-url", "$ServiceUrl"
)

& tfx $arguments