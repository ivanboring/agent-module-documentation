# Entity Field Fetch — manual setup guide

**Entity Field Fetch** (`entity_field_fetch`) adds a **field type** that mirrors a
field value from *another* entity onto the entity you put it on. You designate one
node or term as the source of some centralized content, add an Entity Field Fetch
field to the content type (or vocabulary, or paragraph type) that should display
it, and the field goes and fetches the source value — showing it on both the view
and edit screens of the destination entity.

The problem it solves is shared, centrally-managed content. Say every article
should carry the same "top of page" notice, edited in one place. With this module
that notice lives on a single source entity, and every article's Entity Field
Fetch field pulls it in. Because the fetched value rides along with the
destination entity much like an entity reference, it also works with entity loads
and data APIs — a nicer fit for decoupled setups than a block, and far better for
workflow and revisions than a markup field. The displayed value is **cached
against the source**, so updating the central content refreshes it everywhere.

It works as soon as you enable it — there is no global settings page. Everything is
configured **per field**, on the field's settings. It supports Drupal 8 through 11
and has no dependencies.

> **Two caveats worth knowing up front.** First, if the source content is deleted,
> a destination that fetches it breaks — keep the source in place for as long as
> anything mirrors it. Second, and more importantly, see the security note below.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** — you set the fetch source on each field's own
configuration. See "How to use it" below.

## How to use it

1. Create the **source** entity — a node or term (optionally with a paragraph) that
   holds the content you want to centralize.
2. Edit the content type / vocabulary / paragraph type that should **display** that
   content and **add a field of type "Entity Field Fetch field."**
3. In the field's configuration, set:
   - the **target entity type** (node or term) of the source,
   - the **target entity id** (the source's node or term ID),
   - the **field machine name** to fetch from the source,
   - and, if the content lives inside a paragraph, the **UUID** of that paragraph.
4. View or edit any entity that has the field — you'll see the source content
   pulled in. Update the source and the cache refreshes automatically.

## Important security note

The fetch **does not check the source entity's view access or the field's access**
before showing the value. Whoever can view the **host** (destination) entity sees
the mirrored value, regardless of whether they could view the **source**. So do
**not** mirror fields from access-restricted or unpublished entities onto a
more-public host — that restricted data would leak through the host. Only mirror
fields whose visibility already matches, or is broader than, the host's. The
module has no access-control role of its own.
