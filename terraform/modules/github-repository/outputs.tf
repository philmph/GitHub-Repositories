output "default_branch" {
  description = "The default branch of the GitHub repository"
  value       = github_branch_default.this.branch
}

output "full_name" {
  description = "The full name of the GitHub repository"
  value       = github_repository.this.full_name
}

output "http_clone_url" {
  description = "The HTTP clone URL of the GitHub repository"
  value       = github_repository.this.http_clone_url
}

output "name" {
  description = "The name of the GitHub repository"
  value       = split("/", github_repository.this.full_name)[1]
}

output "namespace" {
  description = "The GitHub organization / user the Repository belongs to"
  value       = split("/", github_repository.this.full_name)[0]
}

output "repo_id" {
  description = "The ID of the GitHub repository"
  value       = github_repository.this.repo_id
}
