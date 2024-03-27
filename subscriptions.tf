# get the billing account details
data "azurerm_billing_enrollment_account_scope" "caf" {
  billing_account_name    = "Malachi Cunliffe"
  enrollment_account_name = "Malachi Cunliffe"
}

resource "azurerm_subscription" "identity" {
  subscription_name = "Identity"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.caf.id
}

resource "azurerm_subscription" "connectivity" {
  subscription_name = "Connectivity"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.caf.id
}

resource "azurerm_subscription" "management" {
  subscription_name = "Management"
  billing_scope_id  = data.azurerm_billing_enrollment_account_scope.caf.id
}