<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Email Formatter gives core's Email field display options beyond a plain mailto link.

---

Core renders an email field as a `mailto:` link and nothing else. Sites want more: the address as plain text, a link with different text, the address partially masked, or a link that opens a contact form instead.

The reason this comes up so often is harvesting. An address published as plain markup is scraped within days of going online, and a staff directory is exactly the page that gets scraped. Every organisation publishing contact details eventually asks for obfuscation.

**Obfuscation is worth doing and worth being honest about.** Splitting an address across markup, reversing it in CSS or assembling it in JavaScript defeats naive scrapers, which is most of them, and that is a real reduction in spam. It does not defeat a scraper that renders the page, and those exist. It is a friction measure, not a control — recommending it as protection overstates it, and dismissing it as useless understates the practical effect.

**And obfuscation has a cost that is easy to miss.** An address assembled by JavaScript is not there for a screen reader user with a different reading strategy, is not selectable or copyable in the way a plain address is, and is invisible to anyone with scripting disabled. A contact form is usually the better answer where the address genuinely needs protecting, because it removes the address from the page rather than hiding it.

---

- Display an email address as plain text.
- Use custom link text for a mailto.
- Partially mask a published address.
- Reduce harvesting from a staff directory.
- Defeat naive scrapers.
- Understand obfuscation as friction, not control.
- Weigh the accessibility cost of obfuscation.
- Keep an address selectable and copyable.
- Consider a contact form instead.
- Remove the address from the page entirely.
- Choose a formatter per view mode.
- Show a full address to authenticated users only.
- Audit where addresses are published.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
