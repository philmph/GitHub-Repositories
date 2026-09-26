# AGENTS.md

Baseline conventions for this Terraform/OpenTofu repository. Everything below is what the tooling
does not enforce - whatever `pre-commit` catches is deliberately not restated here.

## Repository

Provisions GitHub repositories (`terraform/modules/github-repository`), Spacelift stacks
(`terraform/modules/spacelift-module`), and TFE workspaces (`terraform/modules/tfe-workspace`)
for philmph's personal GitHub account. Spacelift/TFE own plan and apply - GitHub Actions runs
checks only.

- Do not create or update a CHANGELOG

## Documentation

- Default: document in the root `README.md`
- Split into `docs/` only once the README outgrows one screen - one subfolder per audience (e.g.
  `workflows/` for contributor runbooks, `architecture/` for design decisions)
- Per-module docs go in that module's own `README.md`, below `<!-- END_TF_DOCS -->` - terraform-docs
  runs in `mode: inject` and leaves hand-written content there untouched
- No docs-site tooling is assumed

## Skills

- **terraform-skill** is mandatory - invoke it before writing, reviewing, or debugging any `.tf`
  file, module, or state operation. Never author HCL without it

## Checks

Run all three after every change and before every commit:

```bash
pre-commit run --all-files
npx --yes prettier --write "**/*.md" --ignore-path .prettierignore --ignore-path .gitignore
terraform test
```

All three must pass clean, and any file the first two rewrite must be staged, before the commit is
made. Prettier runs through `npx` because no local install is committed; `.prettierignore` keeps it
off the terraform-docs generated READMEs. `terraform test` runs per module directory that has a
`tests/` folder, not repo-wide.

Whatever these two catch - `terraform fmt`, tflint's typed and documented variables and outputs,
standard module structure - is not restated below.

## Terraform

Only what neither the tooling nor **terraform-skill** already covers. Resource block ordering,
`this` for singleton resources, and `nullable` semantics live in terraform-skill - do not restate
them here.

### General

- Group mandatory variables (all relevant block types) under `# Mandatory`, optional under `# Optional`
- Sort variables and outputs by 1. `# Mandatory`, `# Optional` and 2. alphabet
- Blocks within blocks always have a newline above e.g.

```tf
resource "something" "this" {
  attribute1 = true

  attribute2 = {
    attribute3 = true
  }
}
```

### Naming

- Use plural name for `list(...)`, `map(...)`, and `set(...)`
- No double negatives - prefer `encryption_enabled` over `encryption_disabled`

### Variables

- Key order: `description`, `type`, `default`, `nullable` (if applicable), `validation`

### Modules

1. `source`/`version`, followed by a blank line
2. `count`/`for_each`, followed by a blank line
3. Looped elements (e.g. `something = each.key`, if applicable), followed by a blank line
4. Regular content
5. `depends_on` and `lifecycle` last

### Tests

- Tests live in `<module>/tests/*.tftest.hcl`, one `run` block per spec criterion, named after it
- Use `mock_provider` with `command = plan`, so tests need no credentials or state - provider
  depends on module: `github`, `spacelift`, or `tfe`
- Give each `validation` block in a schema-validation submodule its own `run` block using `expect_failures`
- Write tests before the implementation
- `terraform test` passing is the definition of done - its output is the PR evidence
- Never weaken, delete, or skip an assertion to make tests pass - if a test seems wrong, stop and ask

## When X Changes

### When module variables or outputs change

Source of truth: the `.tf` files in `terraform/modules/<name>/`. Regenerate: run `pre-commit run
terraform_docs` from repo root - it rewrites every module's `README.md` in `mode: inject`,
leaving content below `<!-- END_TF_DOCS -->` untouched. Stage the rewritten README before
committing.
