# Repository Lifecycle

Every new repository follows this lifecycle. It is what separates a portfolio of polished
engineering products from a collection of code repositories: each stage produces a durable
artifact and has a gate before the next begins.

| # | Stage | Question it answers | Artifact | Gate |
|---|---|---|---|---|
| 1 | **Vision** | Why are we building this? | `README` intro / `docs/VISION.md` | Problem, users, and success criteria are clear |
| 2 | **PRD** | What exactly are we building? | `docs/PRD.md` | Scope, user stories, and non-goals agreed |
| 3 | **Architecture** | How will it work? | `docs/architecture/`, `docs/adr/`, API & DB design | Key decisions recorded as ADRs |
| 4 | **Engineering Standards** | What rules govern the build? | Imported from `.github` (templates copied) | [Repository Creation Checklist](REPOSITORY_CREATION_CHECKLIST.md) complete |
| 5 | **Implementation** | Build it | Production code, Conventional Commits | Clean architecture; small, reviewed PRs |
| 6 | **Testing** | Does it work and stay working? | Unit / integration / e2e as appropriate | Meaningful coverage; CI green |
| 7 | **Documentation** | Can others use and maintain it? | README, API docs, usage examples | Docs match the implementation |
| 8 | **Release** | Ship a known version | Tag + changelog (see [Release Process](RELEASE_PROCESS.md)) | SemVer tag, generated notes reviewed |
| 9 | **Case Study** | What did we learn? | `docs/CASE_STUDY.md` — screenshots, diagrams, lessons | Story a reviewer can read in 3 minutes |

## Principles

- **Stages are sequential but not rigid.** Small projects compress 1–3 into the README;
  large ones expand each. The artifact is what matters, not ceremony.
- **Decisions before code.** Stages 1–4 exist so implementation is deliberate, not improvised.
- **Documentation tracks implementation.** Stage 7 is continuous, not a final chore.
- **The Case Study is the differentiator.** It turns working code into a story that proves
  senior judgment — the reason the repo exists in the portfolio.

## Definition of Done (portfolio-grade)

A repository is portfolio-grade when stages 1–9 are complete, the
[Repository Creation Checklist](REPOSITORY_CREATION_CHECKLIST.md) passes, and an internal
review scores it ≥ 90/100.
