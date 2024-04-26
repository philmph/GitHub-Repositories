resource "github_repository" "this" {
  name        = var.name
  description = var.description
  visibility  = var.visibility
  archived    = var.archived

  auto_init = true

  # Optional settings
  gitignore_template = var.options.gitignore_template
  has_issues         = var.options.has_issues
  has_discussions    = var.options.has_discussions
  has_projects       = var.options.has_projects
  has_wiki           = var.options.has_wiki
  has_downloads      = var.options.has_downloads
  license_template   = var.options.license_template
}

resource "github_branch" "this" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_branch_default" "this" {
  repository = github_repository.this.name
  branch     = github_branch.this.branch
}
