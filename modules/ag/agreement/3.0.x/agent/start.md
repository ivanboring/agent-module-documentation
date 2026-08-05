<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Agreement (agreement) — agent index

Requires users in targeted roles to accept a document before using the site, and records the
acceptance. Depends on core `filter`. Core requirement `^10.3 || ^11`.
Managed at `/admin/config/people/agreement` (config entity `agreement`).

Key facts:
- Three permissions, well divided:
  - **`administer agreements`** — `restrict access: true`;
  - **`bypass agreement`** — exempt an account from the interruption. **Assign this before a
    rollout**, not after: monitoring, deployment and support accounts will otherwise be redirected
    to the agreement page on every request and appear broken.
  - **`revoke own agreement`** — a user may withdraw acceptance. Worth crediting: under GDPR
    consent must be as easy to withdraw as to give.
- Each agreement is a **config entity** (text, target roles, paths, re-acceptance rules), so
  agreements export and deploy with `drush cex`/`cim`.
- The redirect intercepts requests site-wide for targeted users until acceptance — expect it to
  interfere with other redirecting modules and with automated tests.
- `agreement.api.php` + `AgreementHandlerInterface` document the extension points.
- Scope note when advising: this records *that* someone accepted. Agreement wording, versioning
  policy, and what happens when someone refuses are decisions the module cannot make.
