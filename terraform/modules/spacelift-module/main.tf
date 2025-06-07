data "spacelift_spaces" "this" {
  count = var.spacelift_space_name == "root" ? 0 : 1
}

locals {
  active_spacelift_space_id = var.spacelift_space_name == "root" ? (
    var.spacelift_space_name
    ) : (
    join("", [for k, v in data.spacelift_spaces.this[0].spaces : v.space_id if v.name == var.spacelift_space_name])
  )
}

resource "spacelift_module" "this" {
  # Required
  branch     = var.branch
  repository = var.repository

  # Optional
  administrative        = var.administrative
  description           = var.description
  enable_local_preview  = var.enable_local_preview
  labels                = var.labels
  project_root          = var.project_root
  protect_from_deletion = var.protect_from_deletion
  public                = var.public
  space_id              = local.active_spacelift_space_id
  workflow_tool         = var.terraform_workflow_tool

  github_enterprise {
    id        = var.spacelift_github_integration_id
    namespace = var.github_namespace
  }
}
