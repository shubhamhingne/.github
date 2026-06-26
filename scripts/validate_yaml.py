#!/usr/bin/env python3
"""Validate that every YAML file in the repository parses.

A lightweight smoke test for issue forms, Dependabot, release, labels, and workflow
configs. Walks the tree (including dot-directories like .github/, which shell-style globbing
skips) and exits non-zero with GitHub Actions annotations on the first parse failure.
"""
from __future__ import annotations

import os
import sys

import yaml

SKIP_DIRS = {".git", ".venv", "node_modules", "__pycache__"}


def yaml_files(root: str = ".") -> list[str]:
    found: list[str] = []
    for dirpath, dirnames, filenames in os.walk(root):
        dirnames[:] = [d for d in dirnames if d not in SKIP_DIRS]
        for name in filenames:
            if name.endswith((".yml", ".yaml")):
                found.append(os.path.join(dirpath, name))
    return sorted(found)


def main() -> int:
    files = yaml_files()
    failures = 0
    for path in files:
        try:
            with open(path, encoding="utf-8") as fh:
                list(yaml.safe_load_all(fh))
        except yaml.YAMLError as exc:
            failures += 1
            print(f"::error file={path}::invalid YAML: {exc}")
    print(f"Checked {len(files)} YAML file(s); {failures} invalid.")
    return 1 if failures else 0


if __name__ == "__main__":
    sys.exit(main())
