variable "github_token" {
  description = "GitHub token for authentication"
  type        = string
  sensitive   = true
}

variable "github_repositories" {
  description = "A list of GitHub repositories to create"
  type = list(object({
    archived                         = optional(bool, false)
    name                             = string
    description                      = optional(string, null)
    visibility                       = optional(string, "public")
    gitignore_template               = optional(string, null)
    license_template                 = optional(string, null)
    create_terraform_cloud_workspace = optional(bool, false)
  }))
}
