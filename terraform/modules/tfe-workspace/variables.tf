variable "allow_workspace_deletion" {
  description = "Allow deletion of the TFE workspace"
  default     = false
  type        = bool
}

variable "enable_vcs_workflow" {
  description = "Enable VCS workflow for the TFE workspace"
  default     = false
  nullable    = false
  type        = bool
}

variable "tfe_organization" {
  description = "Name of the TFE organization"
  type        = string
}

variable "tfe_project_id" {
  description = "ID of the TFE project"
  type        = string
}

variable "tfe_oauth_token_id" {
  description = "ID of the TFE OAuth token"
  type        = string
  sensitive   = true
}

variable "vcs_repo_identifier" {
  description = "Identifier of the VCS repository"
  default     = null
  type        = string
}

variable "workspace_auto_apply" {
  description = "Enable auto apply for the TFE workspace"
  default     = null
  type        = bool
}

variable "workspace_description" {
  description = "Description of the TFE workspace"
  default     = "Created by Terraform."
  type        = string
}

variable "workspace_execution_mode" {
  description = "Execution mode of the TFE workspace"
  default     = "local"
  nullable    = false
  type        = string
}

variable "workspace_file_triggers_enabled" {
  description = "Enable file triggers for the TFE workspace"
  default     = false
  nullable    = false
  type        = bool
}

variable "workspace_name" {
  description = "Name of the TFE workspace"
  type        = string
}

variable "workspace_trigger_patterns" {
  description = "List of glob pattern triggers for the TFE workspace. Only relevant if 'workspace_file_triggers_enabled' is 'true'."
  default     = null
  type        = list(string)
}

variable "workspace_working_directory" {
  description = "Path to the TFE workspaces working directory"
  default     = null
  type        = string
}
