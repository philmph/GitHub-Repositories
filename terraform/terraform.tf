terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.13.0"
    }

    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.53.5"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.79.0"
    }
  }
}
