<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Auto Export (config_auto_export) — agent index

Detects configuration changes, **exports them automatically** to a configurable directory, and can
fire a **webhook** so a CI pipeline reacts. Settings at
`/admin/config/development/config_auto_export` behind `administer site configuration`;
`trigger config_auto_export` (`restrict access: true`) fires the webhook manually.
Version **2.2.2**. Core requirement `^10.3 || ^11`.

**The failure it closes:** someone adjusts a view or a field, nobody runs `drush config:export`,
and weeks later a deployment overwrites the change or an unexplainable diff appears.

**Three things to settle before turning it on:**
1. **The export directory must not be web-accessible.** Exported configuration is not secret by
   design, but real sites have API endpoints, internal paths and email addresses in it. (Actual
   secrets belong in a **Key** entity or an environment variable, never in config.)
2. **The webhook URL is a credential** — anything holding it can trigger the pipeline. Put it in an
   **environment variable**, not in exported configuration, which is what this module would write.
3. **It changes what a config diff means.** A diff stops being a record of *deliberate* change and
   becomes a record of *every* change, including accidents. The review step moves from "export" to
   "commit" — and someone has to be doing it.
