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
| [spacelift_module.this](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs/resources/module) | resource |
| [spacelift_spaces.this](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs/data-sources/spaces) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrative"></a> [administrative](#input\_administrative) | Whether the Module is administrative | `bool` | `false` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | The branch to deploy from | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description of the Module | `string` | n/a | yes |
| <a name="input_enable_local_preview"></a> [enable\_local\_preview](#input\_enable\_local\_preview) | Whether to enable local preview | `bool` | `false` | no |
| <a name="input_github_namespace"></a> [github\_namespace](#input\_github\_namespace) | The GitHub organization / user the Repository belongs to | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to apply to the Module | `set(string)` | `[]` | no |
| <a name="input_project_root"></a> [project\_root](#input\_project\_root) | The root directory of the project | `string` | `null` | no |
| <a name="input_protect_from_deletion"></a> [protect\_from\_deletion](#input\_protect\_from\_deletion) | Whether to protect the Module from deletion | `bool` | `true` | no |
| <a name="input_public"></a> [public](#input\_public) | Whether the Module is public | `bool` | `false` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | The GitHub Repository to deploy from | `string` | n/a | yes |
| <a name="input_spacelift_github_integration_id"></a> [spacelift\_github\_integration\_id](#input\_spacelift\_github\_integration\_id) | The ID of the GitHub integration to use for this module. Defaults to the Default Integration if not specified | `string` | `null` | no |
| <a name="input_spacelift_space_name"></a> [spacelift\_space\_name](#input\_spacelift\_space\_name) | The name of the Space to deploy the Module to. If not root, it ID will be queried based on the name provided | `string` | `"root"` | no |
| <a name="input_terraform_workflow_tool"></a> [terraform\_workflow\_tool](#input\_terraform\_workflow\_tool) | The Terraform workflow tool to use | `string` | `"OPEN_TOFU"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Spacelift Module |
| <a name="output_name"></a> [name](#output\_name) | The name of the Spacelift Module |
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
| [spacelift_module.this](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs/resources/module) | resource |
| [spacelift_spaces.this](https://registry.terraform.io/providers/spacelift-io/spacelift/latest/docs/data-sources/spaces) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_administrative"></a> [administrative](#input\_administrative) | Whether the Module is administrative | `bool` | `false` | no |
| <a name="input_branch"></a> [branch](#input\_branch) | The branch to deploy from | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | A description of the Module | `string` | n/a | yes |
| <a name="input_enable_local_preview"></a> [enable\_local\_preview](#input\_enable\_local\_preview) | Whether to enable local preview | `bool` | `false` | no |
| <a name="input_github_namespace"></a> [github\_namespace](#input\_github\_namespace) | The GitHub organization / user the Repository belongs to | `string` | n/a | yes |
| <a name="input_labels"></a> [labels](#input\_labels) | Labels to apply to the Module | `set(string)` | `[]` | no |
| <a name="input_project_root"></a> [project\_root](#input\_project\_root) | The root directory of the project | `string` | `null` | no |
| <a name="input_protect_from_deletion"></a> [protect\_from\_deletion](#input\_protect\_from\_deletion) | Whether to protect the Module from deletion | `bool` | `true` | no |
| <a name="input_public"></a> [public](#input\_public) | Whether the Module is public | `bool` | `false` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | The GitHub Repository to deploy from | `string` | n/a | yes |
| <a name="input_spacelift_github_integration_id"></a> [spacelift\_github\_integration\_id](#input\_spacelift\_github\_integration\_id) | The ID of the GitHub integration to use for this module. Defaults to the Default Integration if not specified | `string` | `null` | no |
| <a name="input_spacelift_space_name"></a> [spacelift\_space\_name](#input\_spacelift\_space\_name) | The name of the Space to deploy the Module to. If not root, it ID will be queried based on the name provided | `string` | `"root"` | no |
| <a name="input_terraform_workflow_tool"></a> [terraform\_workflow\_tool](#input\_terraform\_workflow\_tool) | The Terraform workflow tool to use | `string` | `"OPEN_TOFU"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Spacelift Module |
| <a name="output_name"></a> [name](#output\_name) | The name of the Spacelift Module |
<!-- END_TF_DOCS -->
