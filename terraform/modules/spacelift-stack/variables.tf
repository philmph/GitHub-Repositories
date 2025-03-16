variable "autodeploy" {
  default     = false
  description = "Whether to automatically deploy changes"
  type        = bool
  nullable    = false
}

variable "branch" {
  description = "The branch to deploy from"
  type        = string
}

variable "description" {
  description = "A description of the Stack"
  type        = string
}

variable "enable_local_preview" {
  default     = false
  description = "Whether to enable local preview"
  type        = bool
  nullable    = false
}

variable "enable_well_known_secret_masking" {
  default     = true
  description = "Whether to enable well-known secret masking"
  type        = bool
  nullable    = false
}

variable "github_namespace" {
  description = "The GitHub organization / user the Repository belongs to"
  type        = string
}

variable "labels" {
  default     = []
  description = "Labels to apply to the Stack"
  type        = set(string)
  nullable    = false
}

variable "name" {
  description = "The name of the Stack"
  type        = string
}

variable "project_root" {
  default     = null
  description = "The root directory of the project"
  type        = string
}

variable "protect_from_deletion" {
  default     = true
  description = "Whether to protect the Stack from deletion"
  type        = bool
  nullable    = false
}

variable "repository" {
  description = "The GitHub Repository to deploy from"
  type        = string
}

variable "terraform_smart_sanitization" {
  default     = true
  description = "Whether to use smart sanitization (recommended)"
  type        = bool
  nullable    = false
}

variable "terraform_version" {
  default     = "~> 1.9"
  description = "The version of Terraform to use"
  type        = string
  nullable    = false
}

variable "terraform_workflow_tool" {
  default     = "OPEN_TOFU"
  description = "The Terraform workflow tool to use"
  type        = string
  nullable    = false
}

variable "spacelift_github_integration_id" {
  default     = null
  description = "The ID of the GitHub integration to use for this stack. Defalults to the Default if not specified"
  type        = string
  nullable    = false
}

variable "spacelift_space_name" {
  default     = "root"
  description = "The name of the Space to deploy the Stack to. If not root, it ID will be queried based on the name provided"
  type        = string
  nullable    = false
}
