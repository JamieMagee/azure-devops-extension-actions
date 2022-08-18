# unpublish-extension

Unpublish an extension from the Visual Studio Marketplace

## Usage

```yml
- uses: JamieMagee/azure-devops-extension-actions/unpublish-extension@main
  with:
    token: ${{ secrets.AZURE_DEVOPS_TOKEN }}
    publisher-id: 'my-publisher-name' # Can be publisher name or publisher id
    extension-id: 'my-extension-name' # Can be extension name or extension id
```

## Token Requirements

Organization: All accessible organizations

Scopes:
- Marketplace (manage)