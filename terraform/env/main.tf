locals {
  github_token        = var.github_token
  github_repositories = var.github_repositories
}

module "github_repositorty" {
  source = "../modules/github-repository"

  for_each = { for i, o in local.github_repositories : o.name => o }

  name               = each.value.name
  description        = each.value.description
  visibility         = each.value.visibility
  gitignore_template = each.value.gitignore_template
  license_template   = each.value.license_template
  archived           = each.value.archived
}
