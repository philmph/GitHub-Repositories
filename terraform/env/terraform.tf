terraform {
  required_version = "~> 1.5"

  required_providers {
    github = {
      source  = "integrations/github"
      version = "= 6.2.1"
    }

    tfe = {
      source  = "hashicorp/tfe"
      version = "= 0.53.0"
    }
  }
}