# AGENTS.md

@.agent-conventions/terraform.md

## Repository

Provisions GitHub repositories (`terraform/modules/github-repository`), Spacelift stacks
(`terraform/modules/spacelift-module`), and TFE workspaces (`terraform/modules/tfe-workspace`)
for philmph's personal GitHub account. Spacelift/TFE own plan and apply - GitHub Actions runs
checks only.

Will be migrated to self-hosted [Atlantis](https://runatlantis.io) replacing both Spacelift stacks and TFE workspaces.

- Terraform providers to mock in tests: `github`, `spacelift`, `tfe`
