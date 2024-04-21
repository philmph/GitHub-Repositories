data "tfe_project" "this" {
  name         = local.project_name
  organization = local.organization
}

resource "tfe_workspace" "this" {
  name              = local.workspace_name
  description       = local.workspace_description
  organization      = local.organization
  working_directory = local.workspace_working_directory

  project_id = data.tfe_project.this.id

  # vcs_repo {
  #   identifier = "github/${
  #     }
}

resource "tfe_workspace_settings" "this" {
  workspace_id = tfe_workspace.this.id

  execution_mode = local.workspace_execution_mode
}
