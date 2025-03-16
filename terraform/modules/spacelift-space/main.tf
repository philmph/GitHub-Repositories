data "spacelift_spaces" "this" {
  count = var.spacelift_space_name != "root" ? 1 : 0
}

locals {
  active_spacelift_space_id = var.spacelift_space_name != "root" ? (
    join("", [for k, v in data.spacelift_spaces.this[0] : v.id if v.name == var.spacelift_space_name])
    ) : (
    var.spacelift_space_name
  )
}

resource "spacelift_stack" "this" {
  # Required
  branch     = var.branch
  name       = var.name
  repository = var.repository

  # Optional
  autodeploy              = var.autodeploy
  description             = var.description
  enable_local_preview    = var.enable_local_preview
  labels                  = var.labels
  project_root            = var.project_root
  protect_from_deletion   = var.protect_from_deletion
  space_id                = local.active_spacelift_space_id
  terraform_version       = var.terraform_version
  terraform_workflow_tool = var.terraform_workflow_tool

  github_enterprise {
    id        = var.spacelift_github_integration_id
    namespace = var.github_namespace
  }
}

# Steps?
# Build spacelift-stack module until plan is ok
## Create token / Add to TFE Workspace of GitHub-Repositories
## Pin github_enterprise with my static values? Only allow github but dynamic id by data source in root?
# Test with renovate-test repo
#
