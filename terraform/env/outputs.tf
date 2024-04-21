output "module_github_repository" {
  description = "GitHub Repository module output"
  value       = module.github_repository
}

output "module_tfe_workspace" {
  description = "Terraform Cloud Workspace module output"
  value       = module.tfe_workspace
}
