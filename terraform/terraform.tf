terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.6.0"
    }

    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.20.3"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.64.0"
    }
  }
}
