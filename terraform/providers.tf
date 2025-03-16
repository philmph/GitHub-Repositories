provider "github" {
  token = var.github_token
}

provider "spacelift" {
  api_key_endpoint = "https://${var.spacelift_endpoint_name}.app.spacelift.io"
  api_key_id       = var.spacelift_key_id
  api_key_secret   = var.spacelift_key_secret
}

provider "tfe" {
  token        = var.tfe_token
  organization = var.tfe_organization
}
