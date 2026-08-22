# Configuration

Setting up Consent Management is a matter of defining the policies you want users
to agree to, deciding how the consent prompt is shown, and controlling who can see
the resulting consent records.

## Who can configure it

The module provides its own permissions and gates its admin functions behind them.
Before configuring, go to **People → Permissions** (`/admin/people/permissions`)
and grant the consent‑management permissions only to the roles that should manage
policies and view consent — this data is sensitive.

## Create your data policies

The core task is to create one or more **data policies** — the documents users are
asked to consent to (a privacy policy, terms of use, a specific data‑processing
notice, and so on). For each policy you define its content and it carries a
**version**, so that when you update the policy the module can tell existing
consent apart from consent to the new version.

## Show the consent prompt

Because the module depends on core **Block**, the consent prompt is surfaced
through Drupal's block system and Path Alias. Place and target the consent prompt
where users need to see it — for example site‑wide, or on particular paths — using
the normal **Structure → Block layout** tools, so visitors are asked to agree at
the right point.

## Re‑prompting on policy changes

When a policy's version changes, the module can re‑prompt users who had only
consented to an earlier version, so their recorded consent stays current. Update
the policy when its terms change rather than editing in place silently, so the
version history — and therefore the audit trail — stays meaningful.

## Reviewing and protecting consent records

Each agreement is stored as a **consent record** tied to a user and a policy
version — this is your compliance artifact. Treat it accordingly:

- Restrict who can view or export consent records to the roles that genuinely need
  it.
- Retain records for only as long as your privacy policy and applicable law
  require, and expose them in line with that policy.
- Keep the records protected — they are personal data.

## Save

Save each policy and block placement as you configure it. Then test as an ordinary
user: you should be prompted to consent, and after agreeing a consent record should
be stored against your account for that policy version.
