<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
RedHen is a CRM built as Drupal entities — contacts, organisations and the relationships between them — rather than an integration with one hosted elsewhere.

---

The choice it represents is a real architectural fork for membership organisations, charities and associations. **CiviCRM** is the other answer: a full CRM with its own data model, its own upgrade cycle and a large feature set, either installed alongside Drupal or reached over an API (`cmrf_core`, documented in wave 80, is that second arrangement). RedHen takes the opposite position — contacts and organisations are **Drupal entities**, so they have fields, view modes, Views integration, entity access and revisions like anything else, and a developer already fluent in Drupal does not learn a second system. What that buys is composability: a contact can be referenced from a node, listed in a view, exposed over JSON:API and moderated, without an integration layer. What it costs is everything a mature CRM ships that RedHen does not — the fundraising apparatus, the membership lifecycle, the event registration, the reporting. The submodules show the shape: `redhen_contact` and `redhen_org` are the entities, `redhen_connection` models relationships between them, and `redhen_dedupe` addresses the problem every contact database has within a year. Version **3.0.0-alpha1** — an **alpha** — on core `^10 || ^11`. **A CRM is the most sensitive data a small organisation holds**, more so than its website content: names, addresses, relationships, correspondence and often giving history. Two consequences follow. **Entity access has to be designed rather than inherited** — a contact record is not public content, and "authenticated users can view" is the wrong default for something that will hold a supporter's home address. And **the data has a retention obligation**, which a website's content model does not usually carry, so deletion and anonymisation need to exist before the first import rather than after the first subject request.

---

- Store contacts as Drupal entities.
- Model organisations and their people.
- Track relationships between contacts.
- Build a membership database.
- Reference a contact from content.
- List constituents in a view.
- Deduplicate a contact database.
- Support a charity's supporter records.
- Model an association's members.
- Track a contact's organisation history.
- Build a CRM without a second system.
- Expose contacts over JSON:API.
- Apply entity access to contact records.
- Model a professional body's membership.
- Track volunteer records.
- Build a donor database.
- Model board and committee membership.
- Support a small organisation's CRM needs.
