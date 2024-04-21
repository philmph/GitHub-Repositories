locals {
  name        = var.name
  description = var.description
  visibility  = var.visibility
  archived    = var.archived

  options = var.options
}

resource "github_repository" "this" {
  name        = local.name
  description = local.description
  visibility  = local.visibility
  archived    = local.archived

  # Optional settings
  gitignore_template = local.options.gitignore_template
  has_issues         = local.options.has_issues
  has_discussions    = local.options.has_discussions
  has_projects       = local.options.has_projects
  has_wiki           = local.options.has_wiki
  has_downloads      = local.options.has_downloads
  license_template   = local.options.license_template
}
