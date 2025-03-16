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
    name        = "Cloudflare"
    description = "I use this Repository to manage my Domain in Cloudflare."
    visibility  = "public"
    archived    = false

    options = {
      gitignore_template = "Terraform"
    }
  },

  {
    name        = "Frame"
    description = "The idea of Frame is to standardize the scaffolding process of PowerShell Projects and ScriptModules."
    visibility  = "public"
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
    name        = "Lets-Go-Snippetbox"
    description = "Repository to follow along with the book 'Let's Go' by Alex Edwards."
    visibility  = "public"
    archived    = false
  },

  {
    name        = "Log-istic"
    description = "This project is used to provide various different logging functions for PowerShell."
    visibility  = "public"
    archived    = true
  },

  {
    name       = "philmph"
    visibility = "public"
    archived   = false
  },

  {
    name        = "PowerShell-Common-Functions"
    description = "This repository is used to collect various different PowerShell classes and functions I've written over time."
    visibility  = "public"
    archived    = true
  },

  {
    name        = "PowerShell-VSCode-Snippets"
    description = "This repository is used by myself to maintain my VS Code snippets for PowerShell."
    visibility  = "public"
    archived    = true
  },

  {
    name        = "Renovate-Bot"
    description = "Self hosted Renovate Bot to keep my repositories up to date using GitHub Actions."
    visibility  = "public"
    archived    = false
  },

  {
    name        = "Renovate-Bot-Test"
    description = "Repository to test my Renovate Bot configuration."
    visibility  = "public"
    archived    = false

    create_terraform_cloud_workspace = true

    terraform_cloud_options = {
      enable_vcs_workflow         = true
      allow_workspace_deletion    = true
      workspace_auto_apply        = true
      workspace_execution_mode    = "remote"
      workspace_working_directory = "tests/terraform"
    }

    create_spacelift_stack = true

    spacelift_stack_options = {
      project_root          = "tests/terraform"
      protect_from_deletion = false
    }
  },

  {
    name        = "Terraform-Data-Types-Training"
    description = "I will use this repository to build a simple module that showcases, uses and explains the various data types of Terraform."
    visibility  = "public"
    archived    = false
  },

  {
    name        = "Terraform-Explorer"
    description = "Used to test various Terraform features. Mostly a showcase repository."
    visibility  = "public"
    archived    = false

    options = {
      gitignore_template = "Terraform"
    }
  },

  {
    name        = "Vienna-HUG-MeetUp-Sep-2024"
    description = "Repository to store the code samples for my Vienna HUG MeetUp talk in September 2024."
    visibility  = "public"
    archived    = false

    options = {
      gitignore_template = "Terraform"
    }
  },
]
