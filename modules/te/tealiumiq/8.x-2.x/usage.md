<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Tealium iQ Tag Management embeds Tealium's `utag` loader and builds the data layer that its tags read, with per-entity tag values driven by tokens.

---

Enterprise marketing organisations do not add tracking scripts to sites; they add **one** container and manage everything inside it. Tealium iQ is one of the major tag managers alongside Google Tag Manager and Adobe Launch, and the value proposition is governance: the marketing team adds and removes tags without a Drupal deployment, and the organisation has a single inventory of what runs on its pages. What the site owes the container is a **data layer** — a structured description of the current page: content type, section, publication date, author, product identifier — because a tag manager can only act on what the page tells it. Getting that right is the actual work, and this module makes it configurable, using **`token`** so values are drawn from the entity being viewed rather than hard-coded. Version **8.x-2.4** on `^10.2 || ^11`, with two permissions, both `restrict access: TRUE`: `manage global tealium tags` and `administer tealium settings`. That restriction is correct and worth understanding — a tag manager can inject arbitrary JavaScript into every page, so anyone who can point the site at a container has, in practice, the ability to run code on every visitor's browser. Two further points: **consent** governs the container as much as any individual script, so the container must be integrated with the consent manager rather than assumed to handle it; and a **data layer is a disclosure decision** — anything put into it is visible to every tag in the container and to anyone reading the page source, so do not put personal data there without deciding to.

---

- Add a Tealium container to a site.
- Build a data layer for tag management.
- Let marketing manage tags without deploys.
- Expose content type to analytics.
- Pass product data to tags.
- Populate the data layer with tokens.
- Support an enterprise analytics standard.
- Consolidate tracking scripts.
- Add tags to a specific section.
- Support a group-wide tag governance policy.
- Pass author and publication date to tags.
- Integrate with a consent manager.
- Support a marketing measurement plan.
- Track campaign pages.
- Provide page metadata to tags.
- Replace hand-added tracking scripts.
- Support a multi-brand tag setup.
- Audit what runs on the site's pages.
