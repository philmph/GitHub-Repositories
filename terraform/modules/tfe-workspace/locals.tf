locals {
  organization             = var.organization
  project_name             = var.project_name
  workspace_description    = var.workspace_description
  workspace_execution_mode = var.workspace_execution_mode
  workspace_name           = var.workspace_name

  # Set to null to omit in resource block
  # TODO Test with default = null instead without nullable = false
  workspace_working_directory = var.workspace_working_directory != "" ? var.workspace_working_directory : null
}
