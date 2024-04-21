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
      workspace_execution_mode = "local"
    }
  }
]

