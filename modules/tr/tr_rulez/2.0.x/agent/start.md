<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Rules Essentials (tr_rulez) — agent index

Fills gaps in the **Rules** module for Drupal 8+: **cloning** rules and components, **scheduling**
(`rules_scheduler`), **worked examples** (`rules_examples`), better in-place docs. Depends on
`rules`. Configure via `rules.settings`. Version **2.0.0** (2024).
Core requirement `^10.3 || ^11`.

Why it exists: the Drupal 8+ port of Rules arrived incomplete, and several D7 features — the
scheduler most conspicuously — were never finished. This supplies them from outside.

Access on the clone routes is **correctly built** and worth noting as a positive pattern:
```yaml
requirements:
  _permission: 'administer rules+administer rules reactions'   # '+' = BOTH required
  _csrf_token: 'TRUE'
```
A clone endpoint is state-changing on GET; without `_csrf_token` it could be fired by a link
elsewhere. This one has it.

Also ships a `/unimplemented-feature/{feature}/{title}/{issue}` route that names what is missing
and links the issue — an unusually honest touch.

**Strategic note: `eca` is now the actively developed automation framework** in this space. This
module makes the Rules path viable for a **D7 migration that already has Rules models**; for new
automation work, evaluate ECA first.
