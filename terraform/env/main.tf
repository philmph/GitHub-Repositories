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

  organization          = var.tfe_organization
  workspace_description = each.value.description
  workspace_name        = each.value.name

  # TODO Research why using null doesn't lead to module using defaul value
  # workspace_execution_mode = null

  workspace_execution_mode    = each.value.terraform_cloud_options.workspace_execution_mode
  workspace_working_directory = each.value.terraform_cloud_options.workspace_working_directory
}
