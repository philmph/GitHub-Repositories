provider "github" {
  token = var.github_token
}

provider "tfe" {
  token        = var.tfe_token
  organization = var.tfe_organization
}
