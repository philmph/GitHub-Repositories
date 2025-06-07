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
    name        = "Blog-Resources"
    description = "This Repository is used to store the code samples used in my blog."
    visibility  = "public"
    archived    = false

    options = {
      gitignore_template = "Terraform"
    }
  },

  {
    name        = "Cloudflare"
    description = "I use this Repository to manage my Domain in Cloudflare using Spacelift."
    visibility  = "public"
    archived    = false

    options = {
      gitignore_template = "Terraform"
    }

    create_spacelift_stack = true

    spacelift_stack_options = {
      autodeploy           = true
      enable_local_preview = true
      project_root         = "terraform/"
      space_name           = "default"
    }
  },

  {
    name        = "Cloudflare-Data"
    description = "Used to version control my DNS zone file."
    visibility  = "private"
    archived    = false

    options = {
      gitignore_template = "Terraform"
    }

    create_spacelift_stack = true

    spacelift_stack_options = {
      autodeploy           = true
      enable_local_preview = true
      project_root         = "terraform/"
      space_name           = "default"
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
    description = "Used to store my GitHub Repositories and optional connected TFE Workspace or Spacelift Stack."
    visibility  = "public"
    archived    = false

    create_terraform_cloud_workspace = true

    terraform_cloud_options = {
      enable_vcs_workflow         = true
      workspace_auto_apply        = true
      workspace_execution_mode    = "remote"
      workspace_working_directory = "terraform"
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
    name        = "philmph.github.io"
    description = "Repository to host my GitHub pages used for my future Blog"
    visibility  = "public"
    archived    = false
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
