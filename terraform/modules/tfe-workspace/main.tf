# TODO The data sources always trigger changes in TFE

data "tfe_project" "this" {
  name         = var.project_name
  organization = var.tfe_organization
}

data "tfe_oauth_client" "this" {
  count = var.enable_vcs_workflow ? 1 : 0

  organization     = var.tfe_organization
  service_provider = "github"
}

resource "tfe_workspace" "this" {
  name                  = var.workspace_name
  description           = var.workspace_description
  file_triggers_enabled = var.workspace_file_triggers_enabled
  organization          = var.tfe_organization
  trigger_patterns      = var.workspace_trigger_patterns
  working_directory     = var.workspace_working_directory

  project_id = data.tfe_project.this.id

  dynamic "vcs_repo" {
    for_each = var.enable_vcs_workflow ? ["this"] : []

    content {
      identifier     = var.vcs_repo_identifier
      oauth_token_id = data.tfe_oauth_client.this[0].oauth_token_id
    }
  }
}

resource "tfe_workspace_settings" "this" {
  workspace_id = tfe_workspace.this.id

  execution_mode = var.workspace_execution_mode
}
