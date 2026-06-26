#!/usr/bin/env bash
# Bootstrap a new repository to organization standard by copying templates from this repo.
#
# Usage:  scripts/bootstrap-repo.sh /path/to/new-repo
#
# Copies editor/lint/owner config, README starter, and the per-repo GitHub configs
# (Dependabot, release notes, labels). It never overwrites existing files.
set -euo pipefail

TARGET="${1:-}"
if [[ -z "$TARGET" || ! -d "$TARGET" ]]; then
  echo "Usage: $0 /path/to/new-repo   (target directory must exist)" >&2
  exit 1
fi

# Resolve this .github repo root (parent of the scripts/ directory).
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

copy() {  # copy SRC DEST — skip if DEST already exists
  local src="$1" dest="$2"
  if [[ -e "$dest" ]]; then
    echo "  skip (exists): ${dest#"$TARGET"/}"
  else
    mkdir -p "$(dirname "$dest")"
    cp "$src" "$dest"
    echo "  added:         ${dest#"$TARGET"/}"
  fi
}

echo "Bootstrapping standards into: $TARGET"

# Root config + README starter
copy "$ROOT/docs/templates/.editorconfig"          "$TARGET/.editorconfig"
copy "$ROOT/docs/templates/.pre-commit-config.yaml" "$TARGET/.pre-commit-config.yaml"
copy "$ROOT/docs/templates/CODEOWNERS"             "$TARGET/CODEOWNERS"
copy "$ROOT/docs/templates/README.template.md"     "$TARGET/README.md"

# Per-repo GitHub config (these are NOT inherited from .github)
copy "$ROOT/.github/dependabot.yml" "$TARGET/.github/dependabot.yml"
copy "$ROOT/.github/release.yml"    "$TARGET/.github/release.yml"
copy "$ROOT/.github/labels.yml"     "$TARGET/.github/labels.yml"

cat <<'NEXT'

Done. Next steps (see docs/REPOSITORY_CREATION_CHECKLIST.md):
  1. Pick a CI starter from docs/templates/workflows/ → .github/workflows/ci.yml
  2. Trim dependabot.yml to the ecosystems this repo uses
  3. Enable branch protection (docs/BRANCH_PROTECTION.md)
  4. Run label sync, set the social preview, start docs/adr/
NEXT
