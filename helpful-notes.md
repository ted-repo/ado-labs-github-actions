Lessons learned during practice:

info on authenticating via Azure SP from terraform: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret

defining backend configuration for Azurerm from terraform: https://developer.hashicorp.com/terraform/language/settings/backends/azurerm

While troubleshooting I realized that the backend and provider needs to authenticate. the backend is not able to use the secret specified as env variables: https://github.com/hashicorp/terraform-provider-azurerm/issues/17120 ??

Wed 23 Nov 2022 - everything looks right but the authentication issue still persist.

A final option is to write a simple github actions workflow and terraform config files to test.

great helpful guide, although it is for azure devops, it still related to Github actions: https://julie.io/writing/terraform-on-azure-pipelines-best-practices/