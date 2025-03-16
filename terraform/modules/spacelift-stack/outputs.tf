output "name" {
  description = "The name of the Spacelift Stack"
  value       = spacelift_stack.this.name
}

output "id" {
  description = "The ID of the Spacelift Stack"
  value       = spacelift_stack.this.id
}
