locals {
  github_token        = var.github_token
  github_repositories = var.github_repositories
  tfe_token           = var.tfe_token
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

# module "tfe_workspace" {
#   source = "../modules/tfe-workspace"

#   for_each = { for i, o in local.github_repositories : o.name => o if o.create_terraform_cloud_workspace }

#   # TODO
# }
