# Terraform Conventions

Shared baseline for Terraform repositories. Everything below is what the tooling does not enforce -
whatever `pre-commit` catches is deliberately not restated here. Repository-specific context lives
in the repository's own `CLAUDE.md`.

Assumes modules live in `terraform/modules/<name>/`.

## Documentation

- Default: document in the root `README.md`
- Split into `docs/` only once the README outgrows one screen - one subfolder per audience (e.g.
  `workflows/` for contributor runbooks, `architecture/` for design decisions)
- Per-module docs go in that module's own `README.md`, below `<!-- END_TF_DOCS -->` - terraform-docs
  runs via pre-commit in `mode: inject`, regenerates everything above that marker, and leaves
  hand-written content below it untouched
- No docs-site tooling is assumed

## Skills

- **terraform-skill** is mandatory - invoke it before writing, reviewing, or debugging any `.tf`
  file, module, or state operation. Never author HCL without it

## Checks

Run from the repo root after every change and before every commit:

```bash
pre-commit run --all-files
npx --yes prettier --write "**/*.md" --ignore-path .prettierignore --ignore-path .gitignore
rc=0
for d in terraform/modules/*/; do
  [ -d "${d}tests" ] || continue
  terraform -chdir="$d" init -backend=false -input=false && terraform -chdir="$d" test || rc=1
done
[ "$rc" -eq 0 ]
```

All checks must pass clean, and any file that pre-commit or prettier rewrites must be staged before
the commit is made. Prettier runs through `npx` because no local install is committed;
`.prettierignore` keeps it off the terraform-docs generated READMEs.

Whatever pre-commit catches - `terraform fmt`, tflint's typed and documented variables and outputs,
standard module structure - is not restated below.

## Terraform

Only what neither the tooling nor **terraform-skill** already covers. Resource block ordering,
`this` for singleton resources, and `nullable` semantics live in terraform-skill - do not restate
them here.

### General

- Group mandatory variables (all relevant block types) under `# Mandatory`, optional under `# Optional`
- Sort variables by 1. group (`# Mandatory`, `# Optional`) and 2. alphabet; sort outputs alphabetically
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
- Use `mock_provider` with `command = plan`, so tests need no credentials or state - mock every
  provider the module uses (the repository's `CLAUDE.md` lists them)
- Give each `validation` block in a schema-validation submodule its own `run` block using `expect_failures`
- Write tests before the implementation
- Passing tests are the definition of done - their output is the PR evidence
- Never weaken, delete, or skip an assertion to make tests pass - if a test seems wrong, stop and ask

## When X Changes

### When module variables or outputs change

Source of truth: the `.tf` files in `terraform/modules/<name>/`. Run the checks - pre-commit
regenerates the affected module READMEs - and stage the rewritten READMEs before committing.
