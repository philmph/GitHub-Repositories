terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.54.0, < 1.0.0"
    }
  }
}
