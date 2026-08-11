<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Expose actions as local actions — agent index

**Core actions as clickable local actions** (confirm form). Version **2.1.0**. Core `^10||^11`.

Gate: per-action `access exposed action <id>` + `view` access; CSRF via confirm form. Hardening note: access is `view`-only regardless of the action's effect — expose destructive actions + grant perms narrowly. Depends on core `action`.