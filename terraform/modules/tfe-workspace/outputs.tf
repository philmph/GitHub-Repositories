output "id" {
  description = "The ID of the TFE workspace"
  value       = tfe_workspace.this.id
}

output "html_url" {
  description = "The HTML URL of the TFE workspace"
  value       = tfe_workspace.this.html_url
}
