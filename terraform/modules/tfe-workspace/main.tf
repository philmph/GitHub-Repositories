data "tfe_project" "this" {
  name         = local.project_name
  organization = local.organization
}

resource "tfe_workspace" "this" {
  name         = local.workspace_name
  description  = local.workspace_description
  organization = local.organization

  project_id = data.tfe_project.this.id

  # vcs_repo {
  #   identifier = "github/${
  #     }
}

}
