<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Layout Builder + Section Library (lb_plus_section_library) — agent index

Submodule of **lb_plus**. Reconnects the **Section Library** module to the Layout Builder + UI.
Version **3.6.12**. Core `^10 || ^11`.
Depends on `section_library`, `lb_plus`, `navigation_plus` — install only if running all of them.

Exists because `lb_plus` **replaces** the Layout Builder UI, and a replaced UI does not
automatically carry another module's integration points.

Governance point to raise: an uncurated section library fills with near-duplicate templates within
months and editors stop using it. Decide who curates before it fills up.