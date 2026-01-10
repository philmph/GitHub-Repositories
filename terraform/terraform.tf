terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.9.1"
    }

    spacelift = {
      source  = "spacelift-io/spacelift"
      version = "1.42.0"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.73.0"
    }
  }
}
