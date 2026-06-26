# Architecture Decision Records (ADRs)

An ADR captures a significant architectural decision, its context, and its consequences.
Decisions outlive the code that implements them — record the *why* so the next engineer
(including future you) understands it.

## When to write one

Write an ADR when a decision:

- Is hard or expensive to reverse.
- Affects structure, dependencies, interfaces, or cross-cutting concerns.
- Chooses between credible alternatives with real trade-offs.

Skip ADRs for routine, easily reversible choices.

## How to use

1. Copy [`0000-template.md`](0000-template.md) to `NNNN-short-title.md` (next number).
2. Fill it in. Keep it short — one decision per record.
3. Open it in the PR that implements the decision.
4. Never edit a decision's meaning after acceptance. To change course, write a **new** ADR
   that supersedes the old one and update the old one's status to `Superseded by NNNN`.

## Statuses

`Proposed` → `Accepted` → (`Deprecated` | `Superseded by NNNN`)

## Index

| ADR | Title | Status |
|---|---|---|
| 0000 | Template | — |

<!-- Add a row per ADR as they are created. -->
