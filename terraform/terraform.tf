terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.8.2"
    }

    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.37.0"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.71.0"
    }
  }
}
