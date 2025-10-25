terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.7.0"
    }

    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.35.1"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.70.0"
    }
  }
}
