resource "tfe_workspace" "this" {
  name         = local.name
  description  = local.description
  organization = local.organization
}
