# Entity View Mode Field Plugin — manual setup guide

**Entity View Mode Field Plugin** (`entity_view_mode_field_plugin`) is a small
developer helper that **exposes the current view mode of an entity as a field**.
When an entity is being rendered, it is rendered *in* a view mode — "full",
"teaser", "search result", and so on — but that information is not normally
available as a field you can output or branch on. This module makes it available,
so site builders and developers can vary output or logic based on which view mode
is doing the rendering.

It is aimed at display and Views scenarios where "which view mode am I in?" is a
useful piece of data — for example rendering something differently in a teaser
than in the full view. According to the module's notes it pairs with the RESTful
Web Services integration and the companion **Entity View Mode Normalize** module.

This is a developer/display-oriented plugin with a narrow, focused job. It works
across Drupal 8 through 11 and has no central settings page — you use it where
fields are configured.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** for this module — it provides a field plugin
you use where entity fields and displays are configured, not a settings form.

## How to use it

Once enabled, the plugin makes the entity's view mode available as a field so you
can output it or use it in display/Views logic. Add or use it where you configure
the entity's fields and displays. Because it integrates with RESTful Web Services,
it is especially handy when serializing entities and you want the view mode to
travel with the output; the companion **Entity View Mode Normalize** module
complements it there.
