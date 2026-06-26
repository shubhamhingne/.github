# Repository Creation Checklist

Steps to stand up a new repository to organization standard. Following this makes every
repo feel like it came from a mature engineering org.

## 1. Create
- [ ] Name is `kebab-case`, descriptive, product-named (no `test-`, `final-`, version suffixes).
- [ ] Description set; topics/tags added.
- [ ] License added (`MIT` unless a product requires otherwise).
- [ ] Default branch is `main`.

## 2. Standards (inherited from `.github`, add per-repo where needed)
- [ ] `README.md` from [README template](templates/README.template.md).
- [ ] `.gitignore` and `.editorconfig`.
- [ ] `.github/dependabot.yml` copied and trimmed to the repo's ecosystems.
- [ ] `.github/release.yml` copied for release notes.
- [ ] `.github/labels.yml` + `label-sync.yml`, then run the label sync.
- [ ] CI workflow added (copy a starter from `docs/templates/workflows/`).
- [ ] `.pre-commit-config.yaml` for lint/format hooks.

## 3. Quality gates
- [ ] Branch protection enabled (see [BRANCH_PROTECTION.md](BRANCH_PROTECTION.md)).
- [ ] Required status checks: CI must pass.
- [ ] At least one approving review required.
- [ ] Secret scanning and Dependabot alerts enabled.

## 4. Documentation
- [ ] README has problem → architecture → setup → usage → license.
- [ ] Architecture diagram added for non-trivial systems.
- [ ] `docs/adr/` started with the first decision record.

## 5. Project setup
- [ ] Repo added to the relevant GitHub Project and milestone.
- [ ] Social preview image set (`Settings → Social preview`).

## 6. Definition of Done (before public / pinning)
- [ ] Runs from a clean clone in one documented command.
- [ ] Tests pass in CI; default branch green.
- [ ] No secrets, no dead code, no hardcoded config.
- [ ] Tagged release with notes.
- [ ] Reviewed at ≥ 90/100 internal bar.
