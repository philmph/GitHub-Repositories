variable "github_repositories" {
  description = "A list of GitHub repositories to create"
  type = list(object({
    archived    = optional(bool)
    name        = string
    description = optional(string)
    visibility  = optional(string)

    options = optional(object({
      # Not sure if these are needed (DRY?) - Already handled in module
      gitignore_template = optional(string)
      has_issues         = optional(bool)
      has_discussions    = optional(bool)
      has_projects       = optional(bool)
      has_wiki           = optional(bool)
      has_downloads      = optional(bool)
      license_template   = optional(string)
      }), {}
    )

    create_terraform_cloud_workspace = optional(bool, false)

    terraform_cloud_options = optional(object({
      workspace_auto_apply            = optional(bool)
      workspace_execution_mode        = optional(string)
      workspace_file_triggers_enabled = optional(bool)
      workspace_trigger_patterns      = optional(list(string))
      workspace_working_directory     = optional(string)
      enable_vcs_workflow             = optional(bool)
      }), {}
    )
  }))
}

variable "github_token" {
  description = "GitHub token for authentication"
  type        = string
  sensitive   = true
}

variable "tfe_oauth_service_provider" {
  default     = "github"
  description = "OAuth service provider for Terraform Cloud"
  type        = string
}

variable "tfe_organization" {
  description = "Terraform Cloud organization"
  type        = string
}

variable "tfe_project_name" {
  description = "Name of the Terraform Cloud project"
  default     = "Default Project"
  type        = string
}

variable "tfe_token" {
  description = "Terraform Cloud token for authentication. Required if create_terraform_cloud_workspace is true"
  type        = string
  sensitive   = true
}
