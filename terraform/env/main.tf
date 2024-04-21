locals {
  github_token        = var.github_token
  github_repositories = var.github_repositories
}

module "github_repository" {
  source = "../modules/github-repository"

  for_each = { for i, o in local.github_repositories : o.name => o }

  name        = each.value.name
  description = each.value.description
  visibility  = each.value.visibility
  archived    = each.value.archived

  options = each.value.options
}

