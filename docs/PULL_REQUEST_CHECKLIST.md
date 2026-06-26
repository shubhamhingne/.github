# Pull Request Checklist

What every author confirms **before** requesting review. A PR that passes this list is
faster to review and faster to merge.

## Scope
- [ ] One purpose. If it does two things, split it.
- [ ] Diff is as small as the change allows.
- [ ] Linked to an issue (`Closes #...`) where one exists.

## Quality
- [ ] Code self-reviewed — I read my own diff line by line.
- [ ] No debug logging, commented-out code, or TODOs without an issue.
- [ ] Names are intention-revealing and consistent with the codebase.
- [ ] Errors are handled; no swallowed exceptions.

## Tests & docs
- [ ] Tests added or updated for the behavior change.
- [ ] All tests pass locally.
- [ ] README / docs / ADRs updated where behavior or interfaces changed.

## Safety
- [ ] No secrets, keys, or credentials in the diff or history.
- [ ] Database migrations are reversible and tested.
- [ ] Backward compatibility considered; breaking changes documented.

## Hygiene
- [ ] PR title follows Conventional Commits.
- [ ] Branch named `type/short-description`.
- [ ] CI is green.
- [ ] PR description explains *what* and *why*.
