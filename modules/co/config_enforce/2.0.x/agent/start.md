<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Enforce — agent index

Makes selected **configuration read-only** (lock critical settings — can't be changed through the UI). Version
**2.0.0-beta0**. Core `^10.2||^11`.

**Security/governance-positive** — prevents a privileged user/mistake from weakening enforced settings via the
UI (change locked config in code/deployment instead). No access role of its own.
