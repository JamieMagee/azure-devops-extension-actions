# publish-extension

Publish an extension to the Visual Studio Marketplace

## Usage

```yml
- uses: JamieMagee/azure-devops-extension-actions/publish-extension@main
  with:
    token: ${{ secrets.AZURE_DEVOPS_TOKEN }}
    vsix: './MyPublisher.MyExtension-1.0.0.vsix'
```

## Token Requirements

Organization: All accessible organizations

Scopes:
- Marketplace (publish)