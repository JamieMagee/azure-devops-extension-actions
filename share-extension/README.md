# share-extension

Share an extension with an Azure DevOps organisation

## Usage

```yml
- uses: JamieMagee/azure-devops-extension-actions/share-extension@main
  with:
    token: ${{ secrets.AZURE_DEVOPS_TOKEN }}
    publisher-id: 'my-publisher-name' # Can be publisher name or publisher id
    extension-id: 'my-extension-name' # Can be extension name or extension id
    share-with: 'organization1, organization2'
```

## Token Requirements

Organization: All accessible organizations

Scopes:
- Marketplace (Publish)