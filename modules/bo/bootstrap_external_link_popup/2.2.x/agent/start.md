<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Bootstrap External Link Pop-up (bootstrap_external_link_popup) — agent index

Renders `external_link_popup`'s outbound-link warning as a **Bootstrap modal**. Requires
**`external_link_popup`**. Presentation only. Version **2.2.0**.
Core requirement `^9.3 || ^10 || ^11`.

**Value is the same qualifier as other Bootstrap-specific modules:** on a Bootstrap-themed site the
framework's modal is **already loaded**, matches the rest of the site, and needs no styling to
override.

**Why the parent module exists:** public bodies and regulated financial and health organisations
often must not appear to **endorse** third-party content, and a documented interstitial is how that
is demonstrated.

**Two things to attach:**
1. **A modal is a focus event** — trap focus while open, return focus to the link on dismissal,
   close on **Escape**, announce as a dialog. A warning nobody can dismiss with a keyboard is a link
   nobody can follow.
2. **Name the cost to whoever asked for it.** An interstitial interrupts **every** outbound click,
   is dismissed unread after the second time, and stops nobody going anywhere. Where the requirement
   is **regulatory** it is right regardless; where it is a **preference**, a visual indicator on
   external links is the lighter alternative and usually what the concern actually needed.
