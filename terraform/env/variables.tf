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
      workspace_execution_mode = optional(string)
      }), {}
    )
  }))
}

variable "github_token" {
  description = "GitHub token for authentication"
  type        = string
  sensitive   = true
}

variable "tfe_organization" {
  default     = ""
  description = "Terraform Cloud organization"
  type        = string
}

variable "tfe_token" {
  default     = ""
  description = "Terraform Cloud token for authentication. Required if create_terraform_cloud_workspace is true"
  type        = string
  sensitive   = true
}
