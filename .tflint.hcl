plugin "terraform" {
  enabled = true
  preset  = "all"

  version = "0.11.0"
  source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}
