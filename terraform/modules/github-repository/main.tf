resource "github_repository" "this" {
  archived               = var.archived
  delete_branch_on_merge = var.delete_branch_on_merge
  description            = var.description
  name                   = var.name
  visibility             = var.visibility

  # We always initialize the repository
  auto_init = true

  # Optional settings
  gitignore_template = var.options.gitignore_template
  has_issues         = var.options.has_issues
  has_discussions    = var.options.has_discussions
  has_projects       = var.options.has_projects
  has_wiki           = var.options.has_wiki
  has_downloads      = var.options.has_downloads
  license_template   = var.options.license_template

  # Pages is managed via Portal Click-Ops
  lifecycle {
    ignore_changes = [pages]
  }
}

resource "github_branch" "this" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_branch_default" "this" {
  repository = github_repository.this.name
  branch     = github_branch.this.branch
}
