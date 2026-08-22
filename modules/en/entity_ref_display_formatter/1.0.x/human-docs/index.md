# Entity Reference Display Formatter — manual setup guide

**Entity Reference Display Formatter** (`entity_ref_display_formatter`) is a
**field formatter** for entity reference fields that renders each referenced
entity in a **view mode (display) you choose**. Core's built‑in "Rendered entity"
formatter renders references in a fixed display; this module lets you pick which
view mode to use, giving you finer control over how references appear on a given
field.

For example, a "Related articles" reference field could render its targets in a
compact "Teaser" display in one place and a "Card" display somewhere else — all
by choosing the view mode in the field's display settings, without any theming
code. The referenced entity's own access rules still apply, so users only see
references they are allowed to view.

The module has **no settings form or admin page of its own** — it is a pure
field‑formatter add‑on. You configure it on a field's *Manage display*. It works
on Drupal 10 and 11 and has no dependencies beyond core.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** for this module — it has no settings form. You
set it up on your entity reference field's *Manage display*, described in "How to
use it" below.

## Where it lives in the admin menu

The module adds no admin page. You use it entirely from an entity's **Manage
display**, for example **Structure → Content types → *(type)* → Manage display**.

## How to use it

1. Install and enable the module (see [Installation](installation/index.md)).
2. Go to the **Manage display** of the entity/bundle that has your entity
   reference field — for a content type, **Structure → Content types → *(type)* →
   Manage display**.
3. In the **Format** column for your entity reference field, choose the display
   formatter this module provides.
4. Click the gear/settings icon and **select the view mode (display)** in which
   the referenced entities should render.
5. Save. The field now renders its references using the display you selected.
