<#

#>
param(
  [Parameter()]
  [string]
  $RootDirectory,

  [Parameter()]
  [string[]]
  $Manifests,

  [Parameter()]
  [string[]]
  $ManifestPatterns,

  [Parameter()]
  [string]
  $PublisherId,

  [Parameter()]
  [string]
  $ExtensionId,

  [Parameter()]
  [string]
  $OutputPath
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$arguments = @(
  "extension", "create",
  "--output", "json",
  "--no-color"
)

if ($RootDirectory) {
  $arguments += @(
    "--root", "$RootDirectory"
  )
}

if ($Manifests) {
  $arguments += @(
    "--manifests", "$($Manifests -join ",")"
  )
}

if ($ManifestPatterns) {
  $arguments += @(
    "--manifest-globs", "$($ManifestPatterns -join ",")"
  )
}

if ($PublisherId) {
  $arguments += @(
    "--publisher", "$PublisherId"
  )
}

if ($ExtensionId) {
  $arguments += @(
    "--extension-id", "$ExtensionId"
  )
}

if ($OutputPath) {
  $arguments += @(
    "--output-path", "$OutputPath"
  )
}

$res = & tfx $arguments

$path = $res `
| ConvertFrom-Json `
| Select-Object -ExpandProperty "path"

Write-Output "::set-output name=output-path::$path"