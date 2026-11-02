# Agent Instructions

Before starting any task in this repository:

1. Run `make agents/sync`. It writes the shared Plus3 IT instructions for this repository's tardigrade-ci version to `.agents/plus3it/AGENTS.md`.
2. Read `.agents/plus3it/AGENTS.md` and follow it together with this file. If the sync fails, tell the user, and don't guess the conventions.

These rules always apply, even without the shared instructions:

- Don't push, open pull requests, publish releases, or apply infrastructure changes unless the user asks. List those steps for a person in your final report.
- Don't edit files under `.agents/plus3it/`; they are generated and overwritten by the sync.

@.agents/plus3it/AGENTS.md

## Repository-specific

### Purpose

This Terraform module manages one AWS Service Quota. The main input is `service_quota`, an object with the new `value`, the `service_code`, and either `quota_code` or `quota_name` (exactly one; validation rejects both or neither). The module looks up the quota with a data source and sets its value with `aws_servicequotas_service_quota`, and the `service_quota` output returns that resource.
