# Code Review Checklist

What every reviewer verifies before approving. Be specific, cite file and line, and
separate **blocking** issues from **suggestions** (prefix non-blocking with `nit:`).

## Correctness
- [ ] The change does what the PR and linked issue describe.
- [ ] Edge cases and error paths are handled, not just the happy path.
- [ ] No off-by-one, null/undefined, or unhandled-promise mistakes.
- [ ] Concurrency, retries, and timeouts are correct where relevant.

## Design & architecture
- [ ] Fits the existing architecture; respects layer boundaries.
- [ ] No business logic leaking into UI, controllers, or views.
- [ ] Reuses existing abstractions instead of duplicating them (DRY).
- [ ] Simplest design that solves the problem (KISS / YAGNI).
- [ ] Public interfaces are minimal and named for intent.

## Security
- [ ] No secrets, keys, or tokens in code or logs.
- [ ] Input is validated; output is encoded/escaped where needed.
- [ ] AuthN/AuthZ checks are present and correct.
- [ ] Dependencies are trusted and necessary.

## Tests
- [ ] Behavior changes are covered by tests.
- [ ] Tests assert behavior, not implementation details.
- [ ] Failure cases are tested, not only success.
- [ ] Tests are deterministic (no real network/time/random dependence).

## Readability & maintainability
- [ ] Names reveal intent; no `data2`, `tmp`, `helper3`.
- [ ] Functions are small and single-purpose.
- [ ] Comments explain *why*, not *what*.
- [ ] No dead code, commented-out blocks, or stray debug logs.

## Performance
- [ ] No N+1 queries or obvious hot-path inefficiency.
- [ ] Appropriate pagination, indexing, caching where relevant.
- [ ] Large payloads and memory use are bounded.

## Domain-specific

**Mobile** — lifecycle handled, no main-thread blocking, state survives config changes,
accessibility labels present.

**Frontend** — accessible (semantics, focus, contrast), responsive, no unnecessary
re-renders, loading/error states handled.

**Backend** — input validation, idempotency where needed, proper status codes, migrations
are reversible, no blocking I/O on async paths.

**AI / LLM** — prompts/versions are pinned, outputs validated/guard-railed, tokens/cost
bounded, failures and timeouts handled, no PII leakage to providers.

## Before approving
- [ ] CI is green.
- [ ] Docs updated where behavior or interfaces changed.
- [ ] Commit/PR title follows Conventional Commits.
