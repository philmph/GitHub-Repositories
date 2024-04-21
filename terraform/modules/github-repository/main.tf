locals {
  name               = var.name
  description        = var.description
  visibility         = var.visibility
  gitignore_template = var.gitignore_template
  license_template   = var.license_template
  archived           = var.archived
}

resource "github_repository" "this" {
  name               = local.name
  description        = local.description
  visibility         = local.visibility
  gitignore_template = local.gitignore_template
  license_template   = local.license_template
  archived           = local.archived
}
