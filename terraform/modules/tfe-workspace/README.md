<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.53 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | ~> 0.53 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace_settings.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_settings) | resource |
| [tfe_oauth_client.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/oauth_client) | data source |
| [tfe_project.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/data-sources/project) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_vcs_workflow"></a> [enable\_vcs\_workflow](#input\_enable\_vcs\_workflow) | Enable VCS workflow for the TFE workspace | `bool` | `false` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Name of the project | `string` | `"Default Project"` | no |
| <a name="input_tfe_organization"></a> [tfe\_organization](#input\_tfe\_organization) | Name of the TFE organization | `string` | n/a | yes |
| <a name="input_vcs_repo_identifier"></a> [vcs\_repo\_identifier](#input\_vcs\_repo\_identifier) | Identifier of the VCS repository | `string` | `null` | no |
| <a name="input_workspace_description"></a> [workspace\_description](#input\_workspace\_description) | Description of the TFE workspace | `string` | `"Created by Terraform."` | no |
| <a name="input_workspace_execution_mode"></a> [workspace\_execution\_mode](#input\_workspace\_execution\_mode) | Execution mode of the TFE workspace | `string` | `"local"` | no |
| <a name="input_workspace_name"></a> [workspace\_name](#input\_workspace\_name) | Name of the TFE workspace | `string` | n/a | yes |
| <a name="input_workspace_working_directory"></a> [workspace\_working\_directory](#input\_workspace\_working\_directory) | Path to the TFE workspaces working directory | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_html_url"></a> [html\_url](#output\_html\_url) | The HTML URL of the TFE workspace |
| <a name="output_id"></a> [id](#output\_id) | The ID of the TFE workspace |
<!-- END_TF_DOCS -->