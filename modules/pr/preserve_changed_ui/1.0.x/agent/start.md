<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Preserve Changed Timestamp UI (preserve_changed_ui) — agent index

Checkbox on the node form that prevents a save from updating `changed`. Depends on core `node`.
Core requirement `^8.8 || ^9 || ^10 || ^11`. **Current release is 1.0.0-beta2 — beta.**
Settings at `/admin/config/system/preserve-changed-ui`.

Key facts:
- Two permissions, **both `restrict access: true`**:
  - `administer preserve_changed_ui configuration` — the settings form;
  - `preserve_changed_ui allow preserve changed time` — the checkbox itself.
  The second restriction is deliberate and worth respecting: suppressing `changed` hides an edit
  from every listing, feed, sitemap `lastmod` and re-index decision that keys on it. It is
  effectively "edit without leaving a trace" for anything that trusts that field.
- Pairs naturally with `resave_all_nodes` (also documented in this wave), whose mass resave
  moves `changed` on every node.
- Surface: `preserve_changed_ui.module`, `src/Form/SettingsForm.php`, `config/install`,
  `config/schema`. Node-scoped — the dependency is on `node`, not on entity API generally.
