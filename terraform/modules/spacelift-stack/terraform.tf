terraform {
  required_version = ">= 1.5, < 2.0"

  required_providers {
    spacelift = {
      source  = "spacelift-io/spacelift"
      version = ">= 1.20.3, < 2.0.0"
    }
  }
}
