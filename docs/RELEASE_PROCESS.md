# Release Process

Predictable, automated releases using Semantic Versioning and Conventional Commits.

## Versioning (SemVer)

`MAJOR.MINOR.PATCH`

| Bump | When | Driven by |
|---|---|---|
| MAJOR | Breaking change | `feat!:` or `BREAKING CHANGE:` footer |
| MINOR | New feature, backward-compatible | `feat:` |
| PATCH | Bug fix, backward-compatible | `fix:`, `perf:` |

Pre-releases use suffixes: `1.4.0-rc.1`, `1.4.0-beta.1`.

## Flow

1. **Merge** PRs to `main` with Conventional Commit titles (squash-merge).
2. **Decide the version** from the commits since the last tag (table above).
3. **Tag** the release:
   ```bash
   git tag -a v1.4.0 -m "v1.4.0"
   git push origin v1.4.0
   ```
4. **Publish** a GitHub Release from the tag. Notes are auto-generated from
   `.github/release.yml` categories — review and edit for narrative.
5. **Verify** the release artifact/app builds from the tag.

## Changelog

Release notes are generated automatically from merged PR labels (see `.github/release.yml`).
A standalone `CHANGELOG.md` is optional; if kept, it follows
[Keep a Changelog](https://keepachangelog.com) and is updated at release time.

## Hotfixes

1. Branch `fix/...` from the release tag.
2. Fix, test, PR, merge.
3. Tag a PATCH release and publish.
4. Ensure the fix is also on `main`.

## Automation (recommended)

A `release` workflow triggered on tag push (`v*`) that builds, tests, and creates the GitHub
Release with generated notes. Keeps releases reproducible and removes manual steps.
