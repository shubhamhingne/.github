# Contributing

Thank you for contributing. This guide applies to every `shubhamhingne/*` repository.

## Workflow

1. **Open an issue** first for anything non-trivial — use the issue forms. Small, obvious
   fixes can go straight to a pull request.
2. **Branch** from the default branch (`main`).
3. **Commit** using Conventional Commits (below).
4. **Open a pull request** using the template. Keep it focused and small.
5. **Pass CI and review.** At least one approval and green checks are required to merge.
6. **Squash-merge** with a Conventional Commit title. Delete the branch after merge.

## Branch naming

`type/short-description`, kebab-case:

```
feat/agent-tool-registry
fix/auth-token-refresh
docs/architecture-diagram
refactor/repository-layer
chore/ci-cache
```

## Conventional Commits

Format: `type(scope): subject` — imperative mood, lowercase subject, ≤ 72 characters,
no trailing period.

```
feat(agent): add tool-call retry with backoff
fix(auth): refresh expired token before retry
```

| Type | Use for |
|---|---|
| `feat` | A new feature |
| `fix` | A bug fix |
| `docs` | Documentation only |
| `refactor` | Code change that neither fixes a bug nor adds a feature |
| `test` | Adding or correcting tests |
| `style` | Formatting only (no logic change) |
| `ci` | CI/CD configuration |
| `perf` | Performance improvement |
| `build` | Build system or dependencies |
| `chore` | Maintenance / housekeeping |

Breaking changes: add `!` after the type/scope (`feat(api)!: ...`) and a `BREAKING CHANGE:`
footer.

**Never** commit `update`, `changes`, `wip`, `final`, or `fix stuff`. A message must say
what changed and why.

## Local development

Each repository documents its own setup in its README. Baseline expectations:

- One-command setup from a clean clone.
- Linting and formatting run locally (pre-commit) and in CI.
- Tests pass locally before opening a PR.

## Pull request expectations

- Linked to an issue where one exists.
- Small and single-purpose. Large PRs will be asked to split.
- Tests added or updated for behavior changes.
- Docs updated when behavior or interfaces change.
- See the [Pull Request Checklist](docs/PULL_REQUEST_CHECKLIST.md).

## Code review

Reviews follow the [Code Review Checklist](docs/CODE_REVIEW_CHECKLIST.md). Be specific,
cite lines, and separate blocking issues from suggestions.

## Reporting security issues

Do **not** open a public issue for vulnerabilities. Follow [SECURITY.md](SECURITY.md).
