# package-extension

Package an Azure DevOps extension into an extension package (`.vsix`) file

## Usage

```yml
- uses: JamieMagee/azure-devops-extension-actions/package-extension@main

- uses: JamieMagee/azure-devops-extension-actions/package-extension@main
  with:
    root-directory: './dist'
    manifest-patterns: |
      azure-devops-extension.json
      src/**/*.json
    output-path: './MyPublisher.MyExtension-1.0.0.vsix'

- uses: JamieMagee/azure-devops-extension-actions/package-extension@main
  with:
    root-directory: './dist'
    manifest-patterns: |
      azure-devops-extension.json
      src/**/*.json
    publisher-id: 'my-publisher-name' # Can be publisher name or publisher id
    extension-id: 'my-extension-name' # Can be extension name or extension id
```

## Token Requirements

N/A