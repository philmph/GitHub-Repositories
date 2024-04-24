output "full_name" {
  description = "The full name of the GitHub repository"
  value       = github_repository.this.full_name
}

output "http_clone_url" {
  description = "The HTTP clone URL of the GitHub repository"
  value       = github_repository.this.http_clone_url
}

output "repo_id" {
  description = "The ID of the GitHub repository"
  value       = github_repository.this.repo_id
}
