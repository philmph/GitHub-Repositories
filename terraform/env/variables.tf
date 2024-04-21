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
    create_terraform_cloud_workspace = optional(bool, false)

    options = optional(object({
      gitignore_template = optional(string)
      has_downloads      = optional(bool)
      has_projects       = optional(bool)
      has_wiki           = optional(bool)
      license_template   = optional(string)
    }))
  }))
}

variable "github_token" {
  description = "GitHub token for authentication"
  type        = string
  sensitive   = true
}
}
