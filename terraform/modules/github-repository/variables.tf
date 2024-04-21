variable "archived" {
  type        = bool
  default     = false
  description = "The archived status of the repository"
}

variable "description" {
  type        = string
  description = "The description of the repository"
}

variable "gitignore_template" {
  type        = string
  description = "The gitignore template of the repository"
}

variable "license_template" {
  type        = string
  description = "The license template of the repository"
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
  description = "The visibility of the repository"
}
