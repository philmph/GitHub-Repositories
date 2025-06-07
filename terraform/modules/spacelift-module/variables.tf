variable "administrative" {
  default     = false
  description = "Whether the Module is administrative"
  type        = bool
  nullable    = false
}

variable "branch" {
  description = "The branch to deploy from"
  type        = string
}

variable "description" {
  description = "A description of the Module"
  type        = string
}

variable "enable_local_preview" {
  default     = false
  description = "Whether to enable local preview"
  type        = bool
  nullable    = false
}

variable "github_namespace" {
  description = "The GitHub organization / user the Repository belongs to"
  type        = string
}

variable "labels" {
  default     = []
  description = "Labels to apply to the Module"
  type        = set(string)
  nullable    = false
}

variable "project_root" {
  default     = null
  description = "The root directory of the project"
  type        = string
}

variable "protect_from_deletion" {
  default     = true
  description = "Whether to protect the Module from deletion"
  type        = bool
  nullable    = false
}

variable "public" {
  default     = false
  description = "Whether the Module is public"
  type        = bool
  nullable    = false
}

variable "repository" {
  description = "The GitHub Repository to deploy from"
  type        = string
}

variable "spacelift_github_integration_id" {
  default     = null
  description = "The ID of the GitHub integration to use for this module. Defaults to the Default Integration if not specified"
  type        = string
}

variable "spacelift_space_name" {
  default     = "root"
  description = "The name of the Space to deploy the Module to. If not root, it ID will be queried based on the name provided"
  type        = string
  nullable    = false
}

variable "terraform_workflow_tool" {
  default     = "OPEN_TOFU"
  description = "The Terraform workflow tool to use"
  type        = string
  nullable    = false
}
