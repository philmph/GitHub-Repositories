terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 6.2.1, < 7.0.0"
    }
  }
}
