# CLAUDE.md

@.agent-conventions/terraform.md

## Repository

Provisions GitHub repositories (`terraform/modules/github-repository`), Spacelift stacks
(`terraform/modules/spacelift-module`), and TFE workspaces (`terraform/modules/tfe-workspace`)
for philmph's personal GitHub account. Spacelift/TFE own plan and apply - GitHub Actions runs
checks only.

- Providers to mock in tests: `github`, `spacelift`, `tfe`
- Do not create or update a CHANGELOG
