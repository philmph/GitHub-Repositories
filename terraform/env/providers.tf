provider "github" {
  token = local.github_token
}

provider "tfe" {
  token = local.tfe_token
}
