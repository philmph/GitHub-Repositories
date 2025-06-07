# spacelift-space

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5, < 2.0 |
| <a name="requirement_spacelift"></a> [spacelift](#requirement\_spacelift) | >= 1.20.3, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_spacelift"></a> [spacelift](#provider\_spacelift) | >= 1.20.3, < 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [spacelift_stack.this](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs/resources/stack) | resource |
| [spacelift_spaces.this](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs/data-sources/spaces) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autodeploy"></a> [autodeploy](#input\_autodeploy) | Whether to automatically deploy changes | `bool` | `false` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | The branch to deploy from | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description of the Stack | `string` | n/a | yes |
| <a name="input_enable_local_preview"></a> [enable\_local\_preview](#input\_enable\_local\_preview) | Whether to enable local preview | `bool` | `false` | no |
| <a name="input_enable_well_known_secret_masking"></a> [enable\_well\_known\_secret\_masking](#input\_enable\_well\_known\_secret\_masking) | Whether to enable well-known secret masking | `bool` | `true` | no |
| <a name="input_github_namespace"></a> [github\_namespace](#input\_github\_namespace) | The GitHub organization / user the Repository belongs to | `string` | n/a | yes |
| <a name="input_github_run_promotion"></a> [github\_run\_promotion](#input\_github\_run\_promotion) | Whether to allow build promotion using GitHub Actions | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to apply to the Stack | `set(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Stack | `string` | n/a | yes |
| <a name="input_project_root"></a> [project\_root](#input\_project\_root) | The root directory of the project | `string` | `null` | no |
| <a name="input_protect_from_deletion"></a> [protect\_from\_deletion](#input\_protect\_from\_deletion) | Whether to protect the Stack from deletion | `bool` | `true` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | The GitHub Repository to deploy from | `string` | n/a | yes |
| <a name="input_spacelift_github_integration_id"></a> [spacelift\_github\_integration\_id](#input\_spacelift\_github\_integration\_id) | The ID of the GitHub integration to use for this stack. Defalults to the Default if not specified | `string` | `null` | no |
| <a name="input_spacelift_space_name"></a> [spacelift\_space\_name](#input\_spacelift\_space\_name) | The name of the Space to deploy the Stack to. If not root, it ID will be queried based on the name provided | `string` | `"root"` | no |
| <a name="input_terraform_smart_sanitization"></a> [terraform\_smart\_sanitization](#input\_terraform\_smart\_sanitization) | Whether to use smart sanitization (recommended) | `bool` | `true` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | The version of Terraform to use | `string` | `"~> 1.9"` | no |
| <a name="input_terraform_workflow_tool"></a> [terraform\_workflow\_tool](#input\_terraform\_workflow\_tool) | The Terraform workflow tool to use | `string` | `"OPEN_TOFU"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Spacelift Stack |
| <a name="output_name"></a> [name](#output\_name) | The name of the Spacelift Stack |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5, < 2.0 |
| <a name="requirement_spacelift"></a> [spacelift](#requirement\_spacelift) | >= 1.20.3, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_spacelift"></a> [spacelift](#provider\_spacelift) | >= 1.20.3, < 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [spacelift_stack.this](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs/resources/stack) | resource |
| [spacelift_spaces.this](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs/data-sources/spaces) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autodeploy"></a> [autodeploy](#input\_autodeploy) | Whether to automatically deploy changes | `bool` | `false` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | The branch to deploy from | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description of the Stack | `string` | n/a | yes |
| <a name="input_enable_local_preview"></a> [enable\_local\_preview](#input\_enable\_local\_preview) | Whether to enable local preview | `bool` | `false` | no |
| <a name="input_enable_well_known_secret_masking"></a> [enable\_well\_known\_secret\_masking](#input\_enable\_well\_known\_secret\_masking) | Whether to enable well-known secret masking | `bool` | `true` | no |
| <a name="input_github_namespace"></a> [github\_namespace](#input\_github\_namespace) | The GitHub organization / user the Repository belongs to | `string` | n/a | yes |
| <a name="input_github_run_promotion"></a> [github\_run\_promotion](#input\_github\_run\_promotion) | Whether to allow build promotion using GitHub Actions | `bool` | `false` | no |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to apply to the Stack | `set(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the Stack | `string` | n/a | yes |
| <a name="input_project_root"></a> [project\_root](#input\_project\_root) | The root directory of the project | `string` | `null` | no |
| <a name="input_protect_from_deletion"></a> [protect\_from\_deletion](#input\_protect\_from\_deletion) | Whether to protect the Stack from deletion | `bool` | `true` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | The GitHub Repository to deploy from | `string` | n/a | yes |
| <a name="input_spacelift_github_integration_id"></a> [spacelift\_github\_integration\_id](#input\_spacelift\_github\_integration\_id) | The ID of the GitHub integration to use for this stack. Defalults to the Default if not specified | `string` | `null` | no |
| <a name="input_spacelift_space_name"></a> [spacelift\_space\_name](#input\_spacelift\_space\_name) | The name of the Space to deploy the Stack to. If not root, it ID will be queried based on the name provided | `string` | `"root"` | no |
| <a name="input_terraform_smart_sanitization"></a> [terraform\_smart\_sanitization](#input\_terraform\_smart\_sanitization) | Whether to use smart sanitization (recommended) | `bool` | `true` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | The version of Terraform to use | `string` | `"~> 1.9"` | no |
| <a name="input_terraform_workflow_tool"></a> [terraform\_workflow\_tool](#input\_terraform\_workflow\_tool) | The Terraform workflow tool to use | `string` | `"OPEN_TOFU"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Spacelift Stack |
| <a name="output_name"></a> [name](#output\_name) | The name of the Spacelift Stack |
<!-- END_TF_DOCS -->
