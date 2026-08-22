# Configuration

ConReg needs a few post‑install steps before it can take registrations. Because the
project is at an early alpha stage, some of these are rougher than a typical
contrib module — the maintainer has flagged them as things being improved.

## 1. Create the convention (event) record

Right now, ConReg does not yet provide a UI to create your first convention. After
installing, you currently need to add a record **manually** to the module's
`conreg_events` database table. The maintainer has stated this will be fixed in a
future release, so check the project page for a UI‑based way to create an event as
newer versions land. Until then, this manual step is what makes a convention exist
for ConReg to register people against.

## 2. Configure Stripe for payments

ConReg takes membership and add‑on payments through **Stripe**. To accept payments
you must:

- Have the **Stripe PHP library** installed (it comes in via Composer — see
  [Installation](../installation/index.md)).
- Set your **Stripe API keys** in the site's settings, as described on the project
  page. Keep secret keys out of version control — store them in an environment
  variable and reference them from `settings.php`, or use the Key module, rather
  than committing them.

Because this is a real financial flow, treat the keys as secrets and restrict who
can reach the registration management screens.

## 3. Membership types, preferences and add‑ons

ConReg supports several membership‑related settings that shape the registration
form:

- **Membership types** — the different kinds of membership attendees can choose.
- **Membership preferences** — customisable options you collect from each member.
- **Add‑on payments** — extra charges or optional items a member can pay for on
  top of their membership.

Configure these to match how your convention sells memberships.

## 4. Permissions

ConReg provides its own permissions for the management side. At **People →
Permissions** (`/admin/people/permissions`), grant the ConReg management
permissions only to the organiser roles that need them — registration data is
attendee personal data (and, with payments enabled, financial data), so keep it
away from roles that do not need it.

## A note on maturity

ConReg is being actively modernised: its roadmap moves it from custom database
tables toward Drupal entities and, later, integration with the Member Platform /
CRM ecosystem. Expect the setup steps above (especially the manual event record) to
become smoother in later releases — check the project's documentation for the
current state before running a live event.
