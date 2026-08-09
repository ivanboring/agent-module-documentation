<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# After Login Redirect (alr) — agent index

Configures **where users are redirected after login and after logout** (custom destination path vs the
default). Version **2.0.3**. Core `^8||^9||^10||^11`.

Access-adjacent UX — affects redirect destinations only (not who can log in). If a target can come from a
request param, keep it **internal/allow-listed** (avoid open-redirect). No access role.
