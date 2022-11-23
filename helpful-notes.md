Lessons learned during practice:

info on authenticating via Azure SP from terraform: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret

defining backend configuration for Azurerm from terraform: https://developer.hashicorp.com/terraform/language/settings/backends/azurerm

WHile troubleshooting I realized that the backend and provider needs to authenticate. the backend is not able to use the secret specified as env variables: https://github.com/hashicorp/terraform-provider-azurerm/issues/17120