# package-extension

Package an Azure DevOps extension into an extension package (`.vsix`) file

## Usage

```yml
- uses: JamieMagee/azure-devops-extensions-actions/package-extension@main
  with:
    token: ${{ secrets.AZURE_DEVOPS_TOKEN }}
    publisher-id: 'my-publisher-name' # Can be publisher name or publisher id
    extension-id: 'my-extension-name' # Can be extension name or extension id
```

## Token Requirements

N/A