<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Mail Debugger (mail_debugger) — agent index

Sends a test email through Drupal's mail manager. No dependencies.
Core requirement `^8 || ^9 || ^10 || ^11`. `package: development`.

| Route | Path | Sends to |
|---|---|---|
| `mail_debugger.wizard` | `/admin/config/development/mail_debugger` | **free-text address** |
| `mail_debugger.user` | `/admin/config/development/mail_debugger/user` | a selected site user |

Both gated by the single permission **`access mail_debugger`**.

> **Grant that permission carefully — it is not flagged as restricted.**
> `access mail_debugger` has **no `restrict access: true`**, yet the first form takes an arbitrary
> `to`, `subject` and `body` and sends them through the site's own mail configuration — i.e. from
> the organisation's domain, with aligned SPF/DKIM on a well-configured site. That is a phishing
> and spam capability with no warning on the permissions page. Access was verified live: a role
> holding only this permission reached the form with all three fields. See the local
> `security.md`.

Key facts:
- Mail goes through the **mail manager**, so the site's configured transport and any mail-altering
  modules are exercised. That is the point — it tests the real path, not a synthetic one.
- The last message (to/subject/body) is stored and repopulated on the next visit, so the previous
  recipient is visible to the next holder of the permission.
- Development tool by declaration (`package: development`); nothing in the module prevents or
  warns about enabling it in production.
- `.info.yml` reports the legacy `version: '8.x-1.5'`.
