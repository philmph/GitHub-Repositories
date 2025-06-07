# variable "allow_delete" {
#   description = "Allow deletion of resources"
#   type        = bool
#   default     = false
# }

variable "github_repositories" {
  description = "A list of GitHub repositories to create"
  type = list(object({
    archived               = optional(bool)
    delete_branch_on_merge = optional(bool)
    description            = optional(string)
    name                   = string
    visibility             = optional(string)

    options = optional(object({
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
      allow_workspace_deletion        = optional(bool)
      enable_vcs_workflow             = optional(bool)
      workspace_auto_apply            = optional(bool)
      workspace_execution_mode        = optional(string)
      workspace_file_triggers_enabled = optional(bool)
      workspace_trigger_patterns      = optional(list(string))
      workspace_working_directory     = optional(string)
      }), {}
    )

    create_spacelift_stack = optional(bool, false)

    spacelift_stack_options = optional(object({
      autodeploy                       = optional(bool)
      enable_local_preview             = optional(bool)
      enable_well_known_secret_masking = optional(bool)
      github_run_promotion             = optional(bool)
      labels                           = optional(set(string))
      project_root                     = optional(string)
      protect_from_deletion            = optional(bool)
      space_name                       = optional(string)
      terraform_version                = optional(string)
      terraform_workflow_tool          = optional(string)
      }), {}
    )
  }))
}

variable "github_token" {
  description = "GitHub token for authentication"
  type        = string
  sensitive   = true
}

variable "spacelift_endpoint_name" {
  description = "Spacelift API endpoint name excluding .app.spacelift.io"
  type        = string
}

variable "spacelift_key_id" {
  description = "Spacelift API key ID"
  type        = string
}

variable "spacelift_key_secret" {
  description = "Spacelift API key secret"
  sensitive   = true
  type        = string
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
