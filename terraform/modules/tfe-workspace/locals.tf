locals {
  enable_vcs_workflow             = var.enable_vcs_workflow
  tfe_organization                = var.tfe_organization
  project_name                    = var.project_name
  vcs_repo_identifier             = var.vcs_repo_identifier
  workspace_description           = var.workspace_description
  workspace_execution_mode        = var.workspace_execution_mode
  workspace_file_triggers_enabled = var.workspace_file_triggers_enabled
  workspace_name                  = var.workspace_name
  workspace_trigger_patterns      = var.workspace_trigger_patterns
  workspace_working_directory     = var.workspace_working_directory
}
