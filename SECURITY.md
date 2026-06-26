# Security Policy

## Supported versions

Security fixes are applied to the latest released minor version of each project. Older
versions may receive fixes at the maintainer's discretion.

| Version | Supported |
|---|---|
| Latest release | ✅ |
| Previous minor | ⚠️ Critical fixes only |
| Older | ❌ |

## Reporting a vulnerability

**Do not open a public issue, pull request, or discussion for security vulnerabilities.**

Report privately using GitHub's **[Private vulnerability reporting](https://docs.github.com/en/code-security/security-advisories/guidance-on-reporting-and-writing-information-about-vulnerabilities/privately-reporting-a-security-vulnerability)**
(repository → **Security** → **Report a vulnerability**), or email **hingneshubham@gmail.com**
with the subject `SECURITY`.

Please include:

- A description of the vulnerability and its impact.
- Steps to reproduce or a proof of concept.
- Affected versions, and any known mitigations.

## Response targets

| Stage | Target |
|---|---|
| Acknowledgement | within 48 hours |
| Initial assessment | within 5 business days |
| Fix or mitigation plan | within 14 days for confirmed high/critical issues |

## Disclosure

Coordinated disclosure. We will agree a disclosure timeline with the reporter and credit
reporters who wish to be named once a fix is released.

## Scope

In scope: source code in this organization's repositories. Out of scope: third-party
dependencies (report upstream), and issues requiring physical access or social engineering.

## Good practices we follow

- No secrets in source control; secrets via environment or a secrets manager.
- Dependencies monitored by Dependabot; security updates prioritized.
- Least-privilege tokens and scoped CI credentials.
