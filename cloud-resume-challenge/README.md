# azure-resume-challenge

Taking on https://cloudresumechallenge.dev/docs/the-challenge/azure/

## Azure CLI

- <https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-macos>
- <https://docs.microsoft.com/en-us/cli/azure/get-started-with-azure-cli>

```sh
az login --use-device-code
az account list
az account set --subscription <subscription-id>
az storage blob upload-batch -s ./public -d '$web' --account-name <storage account name> --overwrite
```

## Counter

Run `func init --worker-runtime python`

- <https://medium.com/@codefoxx/how-to-count-the-number-of-visits-on-your-website-with-html-css-javascript-and-the-count-api-2f99b42b5990>
- <https://docs.microsoft.com/en-us/azure/azure-functions/create-first-function-vs-code-python>
- <https://docs.microsoft.com/en-us/azure/azure-functions/functions-add-output-binding-cosmos-db-vs-code?tabs=in-process&pivots=programming-language-csharp>
- <https://evan-wong.medium.com/create-api-using-azure-function-with-python-and-azure-cosmos-db-afda09338d82>
- <https://docs.microsoft.com/en-us/azure/azure-functions/functions-how-to-use-azure-function-app-settings?tabs=portal#cors>

## Tests

- <https://docs.microsoft.com/en-us/azure/azure-functions/functions-reference-python?tabs=asgi%2Capplication-level>
- <https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/>
