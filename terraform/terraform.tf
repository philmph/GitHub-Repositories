terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.5.0"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "0.62.0"
    }
  }
}
