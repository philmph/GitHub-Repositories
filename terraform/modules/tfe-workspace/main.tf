resource "tfe_workspace" "this" {
  name                  = var.workspace_name
  auto_apply            = var.workspace_auto_apply
  description           = var.workspace_description
  file_triggers_enabled = var.workspace_file_triggers_enabled
  organization          = var.tfe_organization
  trigger_patterns      = var.workspace_trigger_patterns
  working_directory     = var.workspace_working_directory

  project_id = var.tfe_project_id

  dynamic "vcs_repo" {
    for_each = var.enable_vcs_workflow ? ["this"] : []

    content {
      identifier     = var.vcs_repo_identifier
      oauth_token_id = var.tfe_oauth_token_id
    }
  }
}

resource "tfe_workspace_settings" "this" {
  workspace_id = tfe_workspace.this.id

  execution_mode = var.workspace_execution_mode
}
