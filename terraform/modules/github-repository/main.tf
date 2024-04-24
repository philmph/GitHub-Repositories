resource "github_repository" "this" {
  name        = local.name
  description = local.description
  visibility  = local.visibility
  archived    = local.archived

  auto_init = true

  # Optional settings
  gitignore_template = local.options.gitignore_template
  has_issues         = local.options.has_issues
  has_discussions    = local.options.has_discussions
  has_projects       = local.options.has_projects
  has_wiki           = local.options.has_wiki
  has_downloads      = local.options.has_downloads
  license_template   = local.options.license_template
}

resource "github_branch" "this" {
  repository = github_repository.this.name
  branch     = "main"
}

resource "github_branch_default" "this" {
  repository = github_repository.this.name
  branch     = github_branch.this.branch
}
