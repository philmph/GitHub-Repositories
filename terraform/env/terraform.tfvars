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
    }
  },

  {
    name        = "TFE-Organization"
    description = "Used to setup my TFE Organization and required components."
    visibility  = "public"
    archived    = false

    options = {
      has_projects = false
      has_wiki     = false
    }

    # create_terraform_cloud_workspace = true

    # terraform_cloud_options = {
    #   workspace_execution_mode    = "remote"
    #   workspace_working_directory = "terraform/env"
    # }
  }
]

