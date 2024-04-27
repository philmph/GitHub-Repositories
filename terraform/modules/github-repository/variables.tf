variable "archived" {
  type        = bool
  default     = false
  description = "The archived status of the repository"
}

variable "description" {
  type        = string
  default     = null
  description = "The description of the repository"
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
}

variable "options" {
  type = object({
    gitignore_template = optional(string)
    has_issues         = optional(bool, true)
    has_discussions    = optional(bool, false)
    has_projects       = optional(bool, true)
    has_wiki           = optional(bool, true)
    has_downloads      = optional(bool, false)
    license_template   = optional(string)
  })

  default = {
    gitignore_template = null
    has_issues         = false
    has_discussions    = false
    has_projects       = true
    has_wiki           = true
    has_downloads      = false
    license_template   = null
  }

  description = "Optional options for the repository"
  nullable    = false
}
