data "tfe_project" "this" {
  name         = local.project_name
  organization = local.tfe_organization
}

# TODO Why does this trigger a ~ change in TFE

data "tfe_oauth_client" "this" {
  count = local.enable_vcs_workflow ? 1 : 0

  organization     = local.tfe_organization
  service_provider = "github"
}

resource "tfe_workspace" "this" {
  name              = local.workspace_name
  description       = local.workspace_description
  organization      = local.tfe_organization
  working_directory = local.workspace_working_directory

  project_id = data.tfe_project.this.id

  dynamic "vcs_repo" {
    for_each = local.enable_vcs_workflow ? ["this"] : []

    content {
      identifier     = local.vcs_repo_identifier
      oauth_token_id = data.tfe_oauth_client.this[0].oauth_token_id
    }
  }
}

resource "tfe_workspace_settings" "this" {
  workspace_id = tfe_workspace.this.id

  execution_mode = local.workspace_execution_mode
}
