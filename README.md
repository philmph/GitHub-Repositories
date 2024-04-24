# GitHub-Repositories

I use this repository to setup my own GitHub repositories with the option to also provision an equivalent workspace in TFE (Terraform Cloud).

## Nullable Gotcha

Modules do not omit values assigned `variable = null` and instead send the value of `null` to the module making it ignore the `default` value of variables. Solution is to disallow `null` by using `nullable = false` as variable parameter. This makes Terraform use the `default` if the input is `null`.

Docs:

- https://github.com/hashicorp/terraform/issues/24142
- https://github.com/hashicorp/terraform/issues/29858
- https://github.com/hashicorp/terraform/pull/29832

## License

- [LICENSE](./LICENSE)
