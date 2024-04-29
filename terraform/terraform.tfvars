github_repositories = [
  {
    name        = "Advent-of-Code-2022"
    description = "Trying to write solutions for https://adventofcode.com/2022 in Python."
    visibility  = "public"
    archived    = true
  },

  {
    name        = "Builder"
    description = "Building a highly automated PowerShell sample module."
    visibility  = "private"
    archived    = true
  },

  {
    name        = "Frame"
    description = "The idea of Frame is to standardize the scaffolding process of PowerShell Projects and ScriptModules."
    visibility  = "private"
    archived    = true
  },

  {
    name        = "GitHub-Repositories"
    description = "Used to store my GitHub Repositories and optional connected TFE Workspaces."
    visibility  = "public"
    archived    = false

    create_terraform_cloud_workspace = true

    terraform_cloud_options = {
      workspace_auto_apply        = true
      workspace_execution_mode    = "remote"
      workspace_working_directory = "terraform"
      enable_vcs_workflow         = true
    }
  },

  {
    name        = "Learning-Go"
    description = "I will use this repository to upload example code while learning Go."
    visibility  = "public"
    archived    = false
  },

  {
    name        = "Log-istic"
    description = "This project is used to provide various different logging functions for PowerShell."
    visibility  = "public"
    archived    = false
  },

  {
    name       = "philmph"
    visibility = "public"
    archived   = false
  },

  # {
  #   name        = "PowerShell-Common-Functions"
  #   description = "This repository is used to collect various different PowerShell classes and functions I've written over time."
  #   visibility  = "public"
  #   archived    = false
  # },

  # {
  #   name        = "PowerShell-VSCode-Snippets"
  #   description = "This repository is used by myself to maintain my VS Code snippets for PowerShell."
  #   visibility  = "public"
  #   archived    = false
  # },

  {
    name        = "Renovate-Bot"
    description = "Self hosted Renovate Bot to keep my repositories up to date using GitHub Actions."
    visibility  = "public"
    archived    = false
  },

  {
    name        = "Renovate-Test"
    description = "Repository to test the Renovate Bot and its configuration."
    visibility  = "public"
    archived    = false

    options = {
      gitignore_template = "Terraform"
    }

    create_terraform_cloud_workspace = true

    terraform_cloud_options = {
      workspace_auto_apply        = true
      workspace_execution_mode    = "remote"
      workspace_working_directory = "terraform"
      enable_vcs_workflow         = true
    }
  },

  {
    name        = "Terraform-Data-Types-Training"
    description = "I will use this repository to build a simple module that showcases, uses and explains the various data types of Terraform."
    visibility  = "public"
    archived    = false
  }
]
