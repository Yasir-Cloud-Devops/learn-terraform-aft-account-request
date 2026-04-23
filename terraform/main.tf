module "my_new_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "roomailnadeem96+newaccount@gmail.com"  # unique email
    AccountName               = "my-new-account"                        # unique name
    ManagedOrganizationalUnit = "Account-Factory-OU"
    SSOUserEmail              = "myasir@go-cloud.io"
    SSOUserFirstName          = "New"
    SSOUserLastName           = "Account"
  }

  account_tags = {
    "Environment" = "non-prod"
  }

  change_management_parameters = {
    change_requested_by = "Admin"
    change_reason       = "New account creation"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
