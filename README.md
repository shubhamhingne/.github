# .github — Engineering Standards

Organization-wide engineering standards for every `shubhamhingne/*` repository.

Files in this repository act as **defaults**: any repo that does not define its own
copy of a community-health file inherits it from here. Build the standard once, apply it
everywhere.

> Identity: Senior Product Engineer — production products, end-to-end.
> Standards support Mobile (Android · Kotlin · Flutter · React Native · iOS),
> Frontend (React · Next.js), Backend (Python · FastAPI · Flask · Node.js),
> AI/LLM, and Infrastructure.

## What inherits automatically

GitHub applies these to repos without their own copy:

| File | Purpose |
|---|---|
| `CONTRIBUTING.md` | How to propose changes — workflow, Conventional Commits, branch naming |
| `SECURITY.md` | How to report vulnerabilities, supported versions, response SLA |
| `CODE_OF_CONDUCT.md` | Community behavior standard (Contributor Covenant) |
| `SUPPORT.md` | Where to get help |
| `.github/ISSUE_TEMPLATE/*` | GitHub-native issue forms (bug, feature, task) |
| `.github/PULL_REQUEST_TEMPLATE.md` | Default PR description and checklist |

## What does NOT inherit (kept here as canonical templates)

| File | Why it lives here |
|---|---|
| `.github/dependabot.yml` | Dependabot config is per-repo — copy into each repo's `.github/` |
| `.github/labels.yml` + `workflows/label-sync.yml` | Labels are per-repo — synced by Action |
| `.github/release.yml` | Release-notes categories — copy per repo |
| `.github/workflows/ci.yml` | CI for *this* repo (validates the standards) |
| `docs/templates/workflows/*` | Copyable CI starters for new repos (node, python) |

## Documentation

| Doc | Purpose |
|---|---|
| [docs/CODE_REVIEW_CHECKLIST.md](docs/CODE_REVIEW_CHECKLIST.md) | What every reviewer verifies before approving |
| [docs/PULL_REQUEST_CHECKLIST.md](docs/PULL_REQUEST_CHECKLIST.md) | What every author confirms before requesting review |
| [docs/REPOSITORY_LIFECYCLE.md](docs/REPOSITORY_LIFECYCLE.md) | The 9-stage lifecycle every repo follows (Vision → Case Study) |
| [docs/REPOSITORY_CREATION_CHECKLIST.md](docs/REPOSITORY_CREATION_CHECKLIST.md) | Steps to stand up a new repo to standard |
| [docs/RELEASE_PROCESS.md](docs/RELEASE_PROCESS.md) | Semantic versioning, tagging, and release flow |
| [docs/BRANCH_PROTECTION.md](docs/BRANCH_PROTECTION.md) | Recommended branch-protection rules |
| [docs/adr/](docs/adr/) | Architecture Decision Records — template and index |
| [docs/templates/](docs/templates/) | Copyable starters: `README.template.md`, `.editorconfig`, `.pre-commit-config.yaml`, `CODEOWNERS`, and CI workflows (`node-ci.yml`, `python-ci.yml`) |

## Conventional Commits

All commits follow [Conventional Commits](https://www.conventionalcommits.org):
`type(scope): subject`. Allowed types: `feat fix docs refactor test style ci perf build chore`.
See [CONTRIBUTING.md](CONTRIBUTING.md) for the full convention.

## Maintaining these standards

These standards are versioned and meant to evolve deliberately, not drift.

- **Change them via pull request.** A change here affects every repository — treat it with
  the same rigor as production code. CI validates the YAML, workflows, and Markdown.
- **Record significant changes as an ADR** in [docs/adr/](docs/adr/) so the reasoning is kept.
- **Tag releases of the standards** (`v1`, `v1.1`, …) so repositories can reference a known
  version of a reusable workflow (`uses: shubhamhingne/.github/.github/workflows/...@v1`).
- **Keep templates in sync.** When a template (`README.template.md`, CI starters,
  `.pre-commit-config.yaml`) changes, note it in the release so downstream repos can update.
- **Inherited vs. copied:** community-health files update everywhere automatically; copied
  templates (Dependabot, labels, release, CI) must be re-pulled by each repo — the
  [Repository Creation Checklist](docs/REPOSITORY_CREATION_CHECKLIST.md) is the source of truth.

## License

[MIT](LICENSE) © Shubham Hingne
