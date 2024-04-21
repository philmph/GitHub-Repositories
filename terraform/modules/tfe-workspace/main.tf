resource "tfe_workspace" "this" {
  name         = local.workspace_name
  description  = local.workspace_description
  organization = local.organization
}
