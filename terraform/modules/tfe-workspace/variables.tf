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

variable "project_name" {
  description = "Name of the project"
  default     = "Default Project"
  type        = string
}

variable "vcs_repo_identifier" {
  description = "Identifier of the VCS repository"
  default     = null
  type        = string
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

variable "workspace_name" {
  description = "Name of the TFE workspace"
  type        = string
}

variable "workspace_working_directory" {
  description = "Path to the TFE workspaces working directory"
  default     = null
  type        = string
}
