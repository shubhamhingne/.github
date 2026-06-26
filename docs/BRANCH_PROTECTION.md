# Branch Protection Recommendations

Apply to `main` in every repository. Settings → Branches → Add rule.

## Required rules

- [ ] **Require a pull request before merging**
  - [ ] Require **1** approving review (more for shared/critical repos).
  - [ ] Dismiss stale approvals when new commits are pushed.
  - [ ] Require review from Code Owners (if `CODEOWNERS` exists).
- [ ] **Require status checks to pass before merging**
  - [ ] Require branches to be up to date before merging.
  - [ ] Required checks: `CI` (build + test + lint).
- [ ] **Require conversation resolution before merging.**
- [ ] **Require linear history** (squash or rebase merges only).
- [ ] **Do not allow force pushes** to `main`.
- [ ] **Do not allow deletions** of `main`.

## Recommended

- [ ] Require signed commits on shared/production repositories.
- [ ] Restrict who can push to `main` (maintainers only).
- [ ] Enable **secret scanning** and **push protection**.
- [ ] Enable **Dependabot alerts** and **security updates**.

## Merge strategy

- Prefer **Squash and merge** with a Conventional Commit title — keeps `main` history clean
  and one commit per change.
- Enable **Automatically delete head branches** after merge.

## Applying via CLI

```bash
gh api -X PUT repos/OWNER/REPO/branches/main/protection \
  -F required_pull_request_reviews.required_approving_review_count=1 \
  -F required_status_checks.strict=true \
  -F 'required_status_checks.contexts[]=CI' \
  -F enforce_admins=true \
  -F restrictions=
```
