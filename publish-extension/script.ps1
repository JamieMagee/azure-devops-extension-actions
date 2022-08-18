<#

#>
param(
  [Parameter(Mandatory)]
  [string]
  $Token,

  [Parameter(Mandatory)]
  [string]
  $Vsix
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$arguments = @(
  "extension", "publish",
  "--output", "json",
  "--no-color",
  "--auth-type", "pat",
  "--token", "$Token",
  "--vsix", "$Vsix"
)

& tfx $arguments
