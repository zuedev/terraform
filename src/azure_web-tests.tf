resource "azurerm_application_insights" "zue-dot-dev" {
  name                = "zue-dot-dev-app-insights"
  resource_group_name = data.azurerm_resource_group.terraform_uk_south.name
  location            = data.azurerm_resource_group.terraform_uk_south.location
  application_type    = "web"
}

resource "azurerm_application_insights_standard_web_test" "zue-dot-dev" {
  name                    = "zue-dot-dev-web-test"
  resource_group_name     = data.azurerm_resource_group.terraform_uk_south.name
  location                = data.azurerm_resource_group.terraform_uk_south.location
  application_insights_id = azurerm_application_insights.zue-dot-dev.id
  geo_locations = [
    "emea-ru-msa-edge",
    "us-va-ash-azr",
    "emea-au-syd-edge"
  ]

  request {
    url = "https://zue.dev"
  }
}
