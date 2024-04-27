github_repositories = [
  {
    name        = "GitHub-Repositories"
    description = "Used to store my GitHub Repositories and optional connected TFE Workspaces."
    visibility  = "public"
    archived    = false

    options = {
      has_projects = false
      has_wiki     = false
    }

    create_terraform_cloud_workspace = true

    terraform_cloud_options = {
      workspace_auto_apply        = true
      workspace_execution_mode    = "remote"
      workspace_working_directory = "terraform/env"
      enable_vcs_workflow         = true
    }
  },

  {
    name        = "Terraform-Data-Types-Training"
    description = "I will use this repository to build a simple module that showcases, uses and explains the various data types of Terraform."
    visibility  = "public"
    archived    = false

    options = {
      has_projects = false
      has_wiki     = false
    }
  },

  {
    name        = "Renovate-Test"
    description = "Used to test Renovate Bot."
    visibility  = "public"
    archived    = false

    options = {
      has_projects = false
      has_wiki     = false
    }
  }
]
