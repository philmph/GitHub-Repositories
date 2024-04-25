module "github_repository" {
  source = "../modules/github-repository"

  for_each = { for i, o in local.github_repositories : o.name => o }

  name        = each.value.name
  description = each.value.description
  visibility  = each.value.visibility
  archived    = each.value.archived

  options = each.value.options
}

module "tfe_workspace" {
  source = "../modules/tfe-workspace"

  for_each = { for i, o in local.github_repositories : o.name => o if o.create_terraform_cloud_workspace }

  tfe_organization      = local.tfe_organization
  workspace_description = each.value.description
  workspace_name        = each.value.name

  workspace_execution_mode        = each.value.terraform_cloud_options.workspace_execution_mode
  workspace_file_triggers_enabled = each.value.terraform_cloud_options.workspace_file_triggers_enabled
  workspace_working_directory     = each.value.terraform_cloud_options.workspace_working_directory
  enable_vcs_workflow             = each.value.terraform_cloud_options.enable_vcs_workflow

  vcs_repo_identifier = module.github_repository[each.value.name].full_name

  depends_on = [module.github_repository]
}
