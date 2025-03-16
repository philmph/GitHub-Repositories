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

resource "spacelift_stack" "this" {
  # Required
  branch     = var.branch
  name       = var.name
  repository = var.repository

  # Optional
  autodeploy                       = var.autodeploy
  description                      = var.description
  enable_local_preview             = var.enable_local_preview
  enable_well_known_secret_masking = var.enable_well_known_secret_masking
  labels                           = var.labels
  project_root                     = var.project_root
  protect_from_deletion            = var.protect_from_deletion
  space_id                         = local.active_spacelift_space_id
  terraform_smart_sanitization     = var.terraform_smart_sanitization
  terraform_version                = var.terraform_version
  terraform_workflow_tool          = var.terraform_workflow_tool

  github_enterprise {
    id        = var.spacelift_github_integration_id
    namespace = var.github_namespace
  }
}
