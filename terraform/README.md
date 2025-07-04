<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5, < 2.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 6.6.0 |
| <a name="requirement_spacelift"></a> [spacelift](#requirement\_spacelift) | 1.24.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.66.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.66.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_repository"></a> [github\_repository](#module\_github\_repository) | ./modules/github-repository | n/a |
| <a name="module_spacelift_module"></a> [spacelift\_module](#module\_spacelift\_module) | ./modules/spacelift-module | n/a |
| <a name="module_spacelift_stack"></a> [spacelift\_stack](#module\_spacelift\_stack) | spacelift.io/philmph/stack/spacelift | 0.1.0 |
| <a name="module_tfe_workspace"></a> [tfe\_workspace](#module\_tfe\_workspace) | ./modules/tfe-workspace | n/a |

## Resources

| Name | Type |
|------|------|
| [tfe_oauth_client.this](https://registry.terraform.io/providers/hashicorp/tfe/0.66.0/docs/data-sources/oauth_client) | data source |
| [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/0.66.0/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_repositories"></a> [github\_repositories](#input\_github\_repositories) | A list of GitHub repositories to create | <pre>list(object({<br/>    archived               = optional(bool)<br/>    delete_branch_on_merge = optional(bool)<br/>    description            = optional(string)<br/>    name                   = string<br/>    visibility             = optional(string)<br/><br/>    options = optional(object({<br/>      gitignore_template = optional(string)<br/>      has_issues         = optional(bool)<br/>      has_discussions    = optional(bool)<br/>      has_projects       = optional(bool)<br/>      has_wiki           = optional(bool)<br/>      has_downloads      = optional(bool)<br/>      license_template   = optional(string)<br/>      }), {}<br/>    )<br/><br/>    create_terraform_cloud_workspace = optional(bool, false)<br/><br/>    terraform_cloud_options = optional(object({<br/>      allow_workspace_deletion        = optional(bool)<br/>      enable_vcs_workflow             = optional(bool)<br/>      workspace_auto_apply            = optional(bool)<br/>      workspace_execution_mode        = optional(string)<br/>      workspace_file_triggers_enabled = optional(bool)<br/>      workspace_trigger_patterns      = optional(list(string))<br/>      workspace_working_directory     = optional(string)<br/>      }), {}<br/>    )<br/><br/>    create_spacelift_stack = optional(bool, false)<br/><br/>    spacelift_stack_options = optional(object({<br/>      autodeploy                       = optional(bool)<br/>      enable_local_preview             = optional(bool)<br/>      enable_well_known_secret_masking = optional(bool)<br/>      github_run_promotion             = optional(bool)<br/>      labels                           = optional(set(string))<br/>      project_root                     = optional(string)<br/>      protect_from_deletion            = optional(bool)<br/>      spacelift_space_name             = optional(string)<br/>      terraform_version                = optional(string)<br/>      terraform_workflow_tool          = optional(string)<br/>      }), {}<br/>    )<br/><br/>    create_spacelift_module = optional(bool, false)<br/><br/>    spacelift_module_options = optional(object({<br/>      administrative          = optional(bool)<br/>      branch                  = optional(string)<br/>      enable_local_preview    = optional(bool)<br/>      labels                  = optional(set(string))<br/>      project_root            = optional(string)<br/>      protect_from_deletion   = optional(bool)<br/>      public                  = optional(bool)<br/>      spacelift_space_name    = optional(string)<br/>      terraform_workflow_tool = optional(string)<br/>      }), {}<br/>    )<br/>  }))</pre> | n/a | yes |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | GitHub token for authentication | `string` | n/a | yes |
| <a name="input_spacelift_endpoint_name"></a> [spacelift\_endpoint\_name](#input\_spacelift\_endpoint\_name) | Spacelift API endpoint name excluding .app.spacelift.io | `string` | n/a | yes |
| <a name="input_spacelift_key_id"></a> [spacelift\_key\_id](#input\_spacelift\_key\_id) | Spacelift API key ID | `string` | n/a | yes |
| <a name="input_spacelift_key_secret"></a> [spacelift\_key\_secret](#input\_spacelift\_key\_secret) | Spacelift API key secret | `string` | n/a | yes |
| <a name="input_tfe_oauth_service_provider"></a> [tfe\_oauth\_service\_provider](#input\_tfe\_oauth\_service\_provider) | OAuth service provider for Terraform Cloud | `string` | `"github"` | no |
| <a name="input_tfe_organization"></a> [tfe\_organization](#input\_tfe\_organization) | Terraform Cloud organization | `string` | n/a | yes |
| <a name="input_tfe_project_name"></a> [tfe\_project\_name](#input\_tfe\_project\_name) | Name of the Terraform Cloud project | `string` | `"Default Project"` | no |
| <a name="input_tfe_token"></a> [tfe\_token](#input\_tfe\_token) | Terraform Cloud token for authentication. Required if create\_terraform\_cloud\_workspace is true | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_module_github_repository"></a> [module\_github\_repository](#output\_module\_github\_repository) | GitHub Repository module output |
| <a name="output_module_spacelift_stack"></a> [module\_spacelift\_stack](#output\_module\_spacelift\_stack) | Spacelift Stack module output |
| <a name="output_module_tfe_workspace"></a> [module\_tfe\_workspace](#output\_module\_tfe\_workspace) | Terraform Cloud Workspace module output |
<!-- END_TF_DOCS -->
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5, < 2.0 |
| <a name="requirement_github"></a> [github](#requirement\_github) | 6.6.0 |
| <a name="requirement_spacelift"></a> [spacelift](#requirement\_spacelift) | 1.24.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | 0.66.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.66.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_github_repository"></a> [github\_repository](#module\_github\_repository) | ./modules/github-repository | n/a |
| <a name="module_spacelift_module"></a> [spacelift\_module](#module\_spacelift\_module) | ./modules/spacelift-module | n/a |
| <a name="module_spacelift_stack"></a> [spacelift\_stack](#module\_spacelift\_stack) | spacelift.io/philmph/stack/spacelift | 0.1.0 |
| <a name="module_tfe_workspace"></a> [tfe\_workspace](#module\_tfe\_workspace) | ./modules/tfe-workspace | n/a |

## Resources

| Name | Type |
|------|------|
| [tfe_oauth_client.this](https://registry.terraform.io/providers/hashicorp/tfe/0.66.0/docs/data-sources/oauth_client) | data source |
| [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/0.66.0/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_github_repositories"></a> [github\_repositories](#input\_github\_repositories) | A list of GitHub repositories to create | <pre>list(object({<br/>    archived               = optional(bool)<br/>    delete_branch_on_merge = optional(bool)<br/>    description            = optional(string)<br/>    name                   = string<br/>    visibility             = optional(string)<br/><br/>    options = optional(object({<br/>      gitignore_template = optional(string)<br/>      has_issues         = optional(bool)<br/>      has_discussions    = optional(bool)<br/>      has_projects       = optional(bool)<br/>      has_wiki           = optional(bool)<br/>      has_downloads      = optional(bool)<br/>      license_template   = optional(string)<br/>      }), {}<br/>    )<br/><br/>    create_terraform_cloud_workspace = optional(bool, false)<br/><br/>    terraform_cloud_options = optional(object({<br/>      allow_workspace_deletion        = optional(bool)<br/>      enable_vcs_workflow             = optional(bool)<br/>      workspace_auto_apply            = optional(bool)<br/>      workspace_execution_mode        = optional(string)<br/>      workspace_file_triggers_enabled = optional(bool)<br/>      workspace_trigger_patterns      = optional(list(string))<br/>      workspace_working_directory     = optional(string)<br/>      }), {}<br/>    )<br/><br/>    create_spacelift_stack = optional(bool, false)<br/><br/>    spacelift_stack_options = optional(object({<br/>      autodeploy                       = optional(bool)<br/>      enable_local_preview             = optional(bool)<br/>      enable_well_known_secret_masking = optional(bool)<br/>      github_run_promotion             = optional(bool)<br/>      labels                           = optional(set(string))<br/>      project_root                     = optional(string)<br/>      protect_from_deletion            = optional(bool)<br/>      spacelift_space_name             = optional(string)<br/>      terraform_version                = optional(string)<br/>      terraform_workflow_tool          = optional(string)<br/>      }), {}<br/>    )<br/><br/>    create_spacelift_module = optional(bool, false)<br/><br/>    spacelift_module_options = optional(object({<br/>      administrative          = optional(bool)<br/>      branch                  = optional(string)<br/>      enable_local_preview    = optional(bool)<br/>      labels                  = optional(set(string))<br/>      project_root            = optional(string)<br/>      protect_from_deletion   = optional(bool)<br/>      public                  = optional(bool)<br/>      spacelift_space_name    = optional(string)<br/>      terraform_workflow_tool = optional(string)<br/>      }), {}<br/>    )<br/>  }))</pre> | n/a | yes |
| <a name="input_github_token"></a> [github\_token](#input\_github\_token) | GitHub token for authentication | `string` | n/a | yes |
| <a name="input_spacelift_endpoint_name"></a> [spacelift\_endpoint\_name](#input\_spacelift\_endpoint\_name) | Spacelift API endpoint name excluding .app.spacelift.io | `string` | n/a | yes |
| <a name="input_spacelift_key_id"></a> [spacelift\_key\_id](#input\_spacelift\_key\_id) | Spacelift API key ID | `string` | n/a | yes |
| <a name="input_spacelift_key_secret"></a> [spacelift\_key\_secret](#input\_spacelift\_key\_secret) | Spacelift API key secret | `string` | n/a | yes |
| <a name="input_tfe_oauth_service_provider"></a> [tfe\_oauth\_service\_provider](#input\_tfe\_oauth\_service\_provider) | OAuth service provider for Terraform Cloud | `string` | `"github"` | no |
| <a name="input_tfe_organization"></a> [tfe\_organization](#input\_tfe\_organization) | Terraform Cloud organization | `string` | n/a | yes |
| <a name="input_tfe_project_name"></a> [tfe\_project\_name](#input\_tfe\_project\_name) | Name of the Terraform Cloud project | `string` | `"Default Project"` | no |
| <a name="input_tfe_token"></a> [tfe\_token](#input\_tfe\_token) | Terraform Cloud token for authentication. Required if create\_terraform\_cloud\_workspace is true | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_module_github_repository"></a> [module\_github\_repository](#output\_module\_github\_repository) | GitHub Repository module output |
| <a name="output_module_spacelift_stack"></a> [module\_spacelift\_stack](#output\_module\_spacelift\_stack) | Spacelift Stack module output |
| <a name="output_module_tfe_workspace"></a> [module\_tfe\_workspace](#output\_module\_tfe\_workspace) | Terraform Cloud Workspace module output |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
