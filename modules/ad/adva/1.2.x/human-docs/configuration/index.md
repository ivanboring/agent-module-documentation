# Configuration

## The settings form

Go to **Configuration → People → Advanced Access**
(`/admin/config/people/adva`). You need the **Administer adva** permission. The
form shows one **fieldset per Access Consumer** — that is, one per entity type that
adva has been switched on for (nodes if `adva_na` is enabled, media if `adva_media`
is enabled, and so on).

Within each consumer's fieldset:

- **Enabled Types** — a checkbox list of the **Access Providers** available for that
  entity type. Check a provider to turn it on; its own configuration sub-form
  appears when you do. The built-in **anonymous** provider is a simple option to
  start with.
- A **Provider Details** section shows each provider's short helper message.

There are two save buttons:

- **Save** — persists your provider selection and configuration, then clears and
  re-queues that entity type's access records to be rebuilt gradually on cron.
- **Save and Update Access Records** — does the same but rebuilds the records
  **immediately** via a batch, so the change takes effect right away.

## Rebuilding access records

Whenever you change which providers apply, the stored `adva_access` records need to
be rebuilt so they match the new configuration. You can:

- use **Save and Update Access Records** on the settings form, or
- visit the dedicated rebuild form at
  `/admin/config/people/adva/rebuild/{consumer}`, or
- let the queued rebuild run on cron.

The site's **Status report** shows a per-entity-type count of grants in use and a
"Rebuild Required" warning when the queue still has entities waiting.

## Permissions

Advanced Access defines three permissions (all marked *restrict access* — grant
them only to trusted roles):

- **Administer adva** — reach the settings and rebuild forms and configure which
  providers apply per entity type.
- **Bypass adva access** — a global bypass; holders are exempt from adva grant
  filtering for every entity type.
- **Bypass adva _(type)_ access** — one is generated per entity type (for example
  *Bypass adva media access*); holders are exempt for that type only.

## Important caveat — how the overriding consumer enforces access

If you are enabling adva to **restrict** content (rather than to grant extra
access), understand how the **overriding** consumer — the kind `adva_media` uses —
behaves. Its enforcement is **additive**: adva grants can *add* access, but the
access handler never denies below what the entity type's own base permission (for
example core's "View media") already allows. At the same time, **listing/query
filtering is subtractive** — entities you have no grant for are removed from Views
and entity-query results.

The practical consequence is that an entity can be **hidden from listings yet still
be directly viewable** at its canonical URL (for example `/media/123`) by anyone
who holds the entity type's baseline view permission. An administrator who enables
`adva_media` and sees content disappear from Views may wrongly assume it is fully
protected, while the direct route still serves it.

The **node** path (`adva_na`) is not affected: it uses a *basic* consumer that
bridges to core's node-grant system, which enforces direct access and listings
consistently and fails closed. If you need genuine restriction on an overriding
consumer, treat the module's own `security.md` notes as required reading and plan
custom hardening. In short: prefer `adva_na` for reliable node restriction, and
verify direct-URL access yourself before trusting an overriding consumer to hide
content.

## Programmatic / Drush

There is no dedicated Drush command. Consumer settings are stored as normal config
entities (`adva.access_consumer.<id>`), so you *can* read and set them with
`drush cget` / `drush cset`, but prefer the UI — it validates providers and queues
the rebuild for you. After any manual config change, always rebuild the records so
`adva_access` matches the new configuration.
