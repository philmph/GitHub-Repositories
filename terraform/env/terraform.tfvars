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
      workspace_execution_mode    = "remote"
      workspace_working_directory = "terraform/env"
      enable_vcs_workflow         = true
    }
  },
  # {
  #   name        = "TFE-VCS-Workflow-Test"
  #   description = "Repo to test VCS workflow with Terraform Cloud."
  #   visibility  = "public"
  #   archived    = false

  #   options = {
  #     gitignore_template = "Terraform"
  #     has_projects       = false
  #     has_wiki           = false
  #   }

  #   create_terraform_cloud_workspace = true

  #   terraform_cloud_options = {
  #     workspace_execution_mode    = "remote"
  #     workspace_working_directory = "terraform"
  #     enable_vcs_workflow         = true
  #   }
  # }
]
