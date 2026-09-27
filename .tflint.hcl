config {
  format = "compact"
}

plugin "terraform" {
  enabled = true
  source  = "github.com/terraform-linters/tflint-ruleset-terraform"
  version = "0.15.0"

  preset = "all"
}

# Cloud-specific ruleset - uncomment the one that matches the target cloud and
# pin its current release (check the ruleset's own repo for the latest tag).
# plugin "azurerm" {
#   enabled = true
#   source  = "github.com/terraform-linters/tflint-ruleset-azurerm"
#   version = "<latest>"
# }
# plugin "aws" {
#   enabled = true
#   source  = "github.com/terraform-linters/tflint-ruleset-aws"
#   version = "<latest>"
# }
# plugin "google" {
#   enabled = true
#   source  = "github.com/terraform-linters/tflint-ruleset-google"
#   version = "<latest>"
# }
