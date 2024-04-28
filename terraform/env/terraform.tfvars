github_repositories = [
  {
    name        = "GitHub-Repositories"
    description = "Used to store my GitHub Repositories and optional connected TFE Workspaces."
    visibility  = "public"
    archived    = false

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
  },

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
  }
]
