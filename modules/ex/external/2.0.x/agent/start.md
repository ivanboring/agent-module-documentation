<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# External Links (external) — agent index

**What it is.** A tiny frontend module that makes outbound links open in a new browser tab using a
client-side jQuery `window.open()` click handler — deliberately *not* `target="_blank"`, so the
markup keeps validating. Version **2.0.0-alpha5** (**alpha**), core `^10 || ^11`.

**How it actually works (read the code, don't assume):**
- `external.module` → `external_page_attachments()` attaches the `external/external` library and
  `drupalSettings.external.externalpdf` (a single boolean) **only** when the `external_enabled`
  config flag is true and `external_active()` returns true (the current path/alias is not matched by
  the `external_disabled_patterns` list).
- `js/external.js` → `Drupal.behaviors.external` binds a click handler to: external `http(s)` links
  (host-vs-`location.hostname` heuristic: treated external if the hostname is absent from the href
  *or* appears at index > 13), any `a.newtab` link, and — if the PDF option is on — any
  `a[href*=.pdf]`. The handler is `window.open(this.href); return false;`.
- It adds **no** `target`, **no** `rel` (so **no `noopener`**), **no** icon, **no** ARIA/announcement.
  The DOM is left untouched.
- `src/Form/ExternalAdminSettings.php` → settings form at `/admin/config/content/external`
  (`administer external`, `restrict access: TRUE`): `external_enabled`, `external_docs_enabled`,
  `external_disabled_patterns` (Drupal paths; `*` wildcard and `<front>` token supported).

**What it does NOT provide:** no fields, formatters, filters, plugins, services, entities, Drush
commands, or any server-side HTTP fetch. There is no SSRF/proxy surface — the module never requests
a remote URL; the browser does the navigating.

**Config keys** (`external.settings`): `external_enabled` (bool, default true),
`external_docs_enabled` (bool, default false), `external_disabled_patterns` (string; default
`admin*`, `img_assist*`, `node/add/*`, `node/*/edit`).

**Accessibility / UX caveats worth surfacing to whoever asks for this behaviour:** opening in a new
tab disables the back button for that tab, is a context change that WCAG expects to be announced (this
module announces nothing and adds no external-link icon), and takes the middle-/ctrl-click choice away
from the user.
