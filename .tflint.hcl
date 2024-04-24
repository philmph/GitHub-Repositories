plugin "terraform" {
  enabled = true
  preset  = "all"

  version = "0.6.0"
  source  = "github.com/terraform-linters/tflint-ruleset-terraform"
}
