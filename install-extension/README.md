# install-extension

Install an extension to an Azure DevOps organisation

## Usage

```yml
- uses: JamieMagee/azure-devops-extension-actions/install-extension@main
  with:
    token: ${{ secrets.AZURE_DEVOPS_TOKEN }}
    publisher-id: 'my-publisher-name' # Can be publisher name or publisher id
    extension-id: 'my-extension-name' # Can be extension name or extension id
    service-url: 'https://dev.azure.com/my-organisation'
```

## Token Requirements

Organization: All accessible organizations

Scopes:
- Extensions (read & manage)
- Marketplace (acquire)