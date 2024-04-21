variable "organization" {
  description = "Name of the TFE organization"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  default     = "Default Project"
  type        = string
}

variable "workspace_description" {
  description = "Description of the TFE workspace"
  default     = null
  type        = string
}

variable "workspace_execution_mode" {
  description = "Execution mode of the TFE workspace"
  default     = "local"
  type        = string
}

variable "workspace_name" {
  description = "Name of the TFE workspace"
  type        = string
}
