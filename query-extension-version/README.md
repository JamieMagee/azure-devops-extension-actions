# query-extension-version

Query an Azure DevOps extension's version

## Usage

```yml
- uses: JamieMagee/azure-devops-extension-actions/query-extension-version@main
  with:
    token: ${{ secrets.AZURE_DEVOPS_TOKEN }}
    publisher-id: 'my-publisher-name' # Can be publisher name or publisher id
    extension-id: 'my-extension-name' # Can be extension name or extension id
```

## Token Requirements

Organization: All accessible organization

Scopes: 
- Marketplace (Read)