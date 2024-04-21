variable "organization" {
  description = "Name of the TFE organization"
  type        = string
}

variable "workspace_description" {
  description = "Description of the TFE workspace"
  default     = null
  type        = string
}

variable "workspace_name" {
  description = "Name of the TFE workspace"
  type        = string
}
