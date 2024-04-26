<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 6.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch_default.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_archived"></a> [archived](#input\_archived) | The archived status of the repository | `bool` | `false` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the repository | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the repository | `string` | n/a | yes |
| <a name="input_options"></a> [options](#input\_options) | Optional options for the repository | <pre>object({<br>    gitignore_template = optional(string)<br>    has_issues         = optional(bool, false)<br>    has_discussions    = optional(bool, false)<br>    has_projects       = optional(bool, true)<br>    has_wiki           = optional(bool, true)<br>    has_downloads      = optional(bool, false)<br>    license_template   = optional(string)<br>  })</pre> | <pre>{<br>  "gitignore_template": null,<br>  "has_discussions": false,<br>  "has_downloads": false,<br>  "has_issues": false,<br>  "has_projects": true,<br>  "has_wiki": true,<br>  "license_template": null<br>}</pre> | no |
| <a name="input_visibility"></a> [visibility](#input\_visibility) | The visibility of the repository | `string` | `"public"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_full_name"></a> [full\_name](#output\_full\_name) | The full name of the GitHub repository |
| <a name="output_http_clone_url"></a> [http\_clone\_url](#output\_http\_clone\_url) | The HTTP clone URL of the GitHub repository |
| <a name="output_repo_id"></a> [repo\_id](#output\_repo\_id) | The ID of the GitHub repository |
<!-- END_TF_DOCS -->
