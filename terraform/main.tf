module "github_repository" {
  source = "./modules/github-repository"

  for_each = { for i, o in var.github_repositories : o.name => o }

  archived               = each.value.archived
  delete_branch_on_merge = each.value.delete_branch_on_merge
  description            = each.value.description
  name                   = each.value.name
  visibility             = each.value.visibility

  options = each.value.options
}

data "tfe_project" "this" {
  name         = var.tfe_project_name
  organization = var.tfe_organization
}

data "tfe_oauth_client" "this" {
  organization     = var.tfe_organization
  service_provider = var.tfe_oauth_service_provider
}

module "tfe_workspace" {
  source = "./modules/tfe-workspace"

  for_each = { for i, o in var.github_repositories : o.name => o if o.create_terraform_cloud_workspace }

  tfe_project_id     = data.tfe_project.this.id
  tfe_oauth_token_id = data.tfe_oauth_client.this.oauth_token_id

  tfe_organization = var.tfe_organization

  workspace_description = each.value.description
  workspace_name        = each.value.name

  enable_vcs_workflow             = each.value.terraform_cloud_options.enable_vcs_workflow
  allow_workspace_deletion        = each.value.terraform_cloud_options.allow_workspace_deletion
  workspace_auto_apply            = each.value.terraform_cloud_options.workspace_auto_apply
  workspace_execution_mode        = each.value.terraform_cloud_options.workspace_execution_mode
  workspace_file_triggers_enabled = each.value.terraform_cloud_options.workspace_file_triggers_enabled
  workspace_trigger_patterns      = each.value.terraform_cloud_options.workspace_trigger_patterns
  workspace_working_directory     = each.value.terraform_cloud_options.workspace_working_directory

  vcs_repo_identifier = module.github_repository[each.value.name].full_name
}

module "spacelift_stack" {
  # source = "./modules/spacelift-stack"
  source  = "spacelift.io/philmph/stack/spacelift"
  version = "0.1.0"

  for_each = { for i, o in var.github_repositories : o.name => o if o.create_spacelift_stack }

  description = each.value.description
  name        = each.value.name

  autodeploy                       = each.value.spacelift_stack_options.autodeploy
  enable_local_preview             = each.value.spacelift_stack_options.enable_local_preview
  enable_well_known_secret_masking = each.value.spacelift_stack_options.enable_well_known_secret_masking
  github_run_promotion             = each.value.spacelift_stack_options.github_run_promotion
  labels                           = each.value.spacelift_stack_options.labels
  project_root                     = each.value.spacelift_stack_options.project_root
  protect_from_deletion            = each.value.spacelift_stack_options.protect_from_deletion
  spacelift_space_name             = each.value.spacelift_stack_options.spacelift_space_name
  terraform_version                = each.value.spacelift_stack_options.terraform_version
  terraform_workflow_tool          = each.value.spacelift_stack_options.terraform_workflow_tool

  branch           = module.github_repository[each.value.name].default_branch
  github_namespace = module.github_repository[each.value.name].namespace
  repository       = module.github_repository[each.value.name].name
}

module "spacelift_module" {
  source = "./modules/spacelift-module"

  for_each = { for i, o in var.github_repositories : o.name => o if o.create_spacelift_module }

  description = each.value.description

  administrative          = each.value.spacelift_module_options.administrative
  enable_local_preview    = each.value.spacelift_module_options.enable_local_preview
  labels                  = each.value.spacelift_module_options.labels
  project_root            = each.value.spacelift_module_options.project_root
  protect_from_deletion   = each.value.spacelift_module_options.protect_from_deletion
  public                  = each.value.spacelift_module_options.public
  spacelift_space_name    = each.value.spacelift_module_options.spacelift_space_name
  terraform_workflow_tool = each.value.spacelift_module_options.terraform_workflow_tool

  branch           = module.github_repository[each.value.name].default_branch
  github_namespace = module.github_repository[each.value.name].namespace
  repository       = module.github_repository[each.value.name].name
}
