variable "archived" {
  type        = bool
  default     = false
  description = "The archived status of the repository"
  nullable    = false
}

variable "delete_branch_on_merge" {
  type        = bool
  default     = true
  description = "The delete branch on PR merge setting of the repository"
  nullable    = false
}

variable "description" {
  type        = string
  default     = "Created by Terraform (philmph/GitHub-Repositories)"
  description = "The description of the repository"
  nullable    = false
}

variable "name" {
  type        = string
  description = "The name of the repository"

  validation {
    condition     = can(regex("^[-a-zA-Z]+$", var.name)) && length(var.name) <= 100
    error_message = "Invalid repository name. Only letters and dashes are allowed."
  }
}

variable "visibility" {
  type        = string
  default     = "public"
  description = "The visibility of the repository"
  nullable    = false
}

variable "options" {
  type = object({
    gitignore_template = optional(string, null)
    has_issues         = optional(bool, true)
    has_discussions    = optional(bool, false)
    has_projects       = optional(bool, false)
    has_wiki           = optional(bool, false)
    has_downloads      = optional(bool, false)
    license_template   = optional(string, "mit")
  })

  default = {
    gitignore_template = null
    has_issues         = true
    has_discussions    = false
    has_projects       = false
    has_wiki           = false
    has_downloads      = false
    license_template   = "mit"
  }

  description = "Optional options for the repository"
  nullable    = false
}
