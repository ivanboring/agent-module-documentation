<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# RedHen CRM (redhen) — agent index

CRM built as **Drupal entities** — contacts, organisations and the relationships between them.
Submodules: `redhen_contact`, `redhen_org` (the entities), `redhen_connection` (relationships),
`redhen_dedupe`. Version **3.0.0-alpha1** — **alpha**. Core requirement `^10 || ^11`.

**The architectural fork, worth stating when this comes up:**
- **CiviCRM** — a full CRM with its own data model and upgrade cycle, installed alongside Drupal or
  reached over an API (`cmrf_core`, wave 80). Brings fundraising, membership lifecycle, event
  registration and reporting.
- **RedHen** — contacts and organisations are **Drupal entities**, so they have fields, view modes,
  Views integration, **entity access** and revisions like anything else. Composable without an
  integration layer; a Drupal developer learns no second system. **Costs everything a mature CRM
  ships that this does not.**

**A CRM is the most sensitive data a small organisation holds** — more so than its website content:
names, addresses, relationships, correspondence, often giving history.

**Two consequences:**
1. **Entity access has to be designed, not inherited.** A contact record is not public content, and
   *"authenticated users can view"* is the wrong default for something holding a supporter's home
   address.
2. **The data carries a retention obligation** a website's content model usually does not.
   **Deletion and anonymisation need to exist before the first import**, not after the first subject
   request.
