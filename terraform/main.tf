data "tfe_project" "this" {
  name         = var.tfe_project_name
  organization = var.tfe_organization
}

data "tfe_oauth_client" "this" {
  organization     = var.tfe_organization
  service_provider = var.tfe_oauth_service_provider
}

module "github_repository" {
  source = "./modules/github-repository"

  for_each = { for i, o in var.github_repositories : replace(o.name, "/[^a-zA-Z\\-]/", "") => o }

  archived               = each.value.archived
  delete_branch_on_merge = each.value.delete_branch_on_merge
  description            = each.value.description
  name                   = each.value.name
  visibility             = each.value.visibility

  options = each.value.options
}

module "tfe_workspace" {
  source = "./modules/tfe-workspace"

  for_each = { for i, o in var.github_repositories : replace(o.name, "/[^a-zA-Z\\-]/", "") => o if o.create_terraform_cloud_workspace }

  tfe_project_id     = data.tfe_project.this.id
  tfe_oauth_token_id = data.tfe_oauth_client.this.oauth_token_id

  tfe_organization = var.tfe_organization

  workspace_description = each.value.description
  workspace_name        = each.value.name

  enable_vcs_workflow             = each.value.terraform_cloud_options.enable_vcs_workflow
  workspace_auto_apply            = each.value.terraform_cloud_options.workspace_auto_apply
  workspace_execution_mode        = each.value.terraform_cloud_options.workspace_execution_mode
  workspace_file_triggers_enabled = each.value.terraform_cloud_options.workspace_file_triggers_enabled
  workspace_trigger_patterns      = each.value.terraform_cloud_options.workspace_trigger_patterns
  workspace_working_directory     = each.value.terraform_cloud_options.workspace_working_directory

  vcs_repo_identifier = module.github_repository[each.value.name].full_name

  depends_on = [module.github_repository]
}
