# RSS Embed Field — manual setup guide

**RSS Embed Field** (`rss_embed_field`) lets an editor drop the latest posts from an
external RSS/Atom feed straight into a node. It works by reusing Drupal's standard
**Link** field: you add a Link field to a content type, switch it to this module's
widget and formatter, and then an editor pastes a feed URL into that field. When the
node is displayed, the module fetches the feed on the server, parses it, and renders
its most recent items inside the node.

It's deliberately lightweight — a simpler alternative to a full feed‑aggregation
setup. You can cap how many items are shown, choose whether to display the feed's own
title, and strip or filter the HTML that comes from the feed. Fetched feeds are
cached (around 24 hours) so the site isn't hitting the remote source on every page
load, and the feed URL is validated when the editor saves the node.

**One security consideration worth understanding.** Because the URL that gets fetched
is whatever an editor typed into the field, anyone allowed to create or edit content
with this field can make your server issue a request to an arbitrary address — this
is a form of server‑side request forgery (SSRF). The impact is bounded (the response
is only shown if it parses as a feed, and its HTML is sanitised on output), but it
means you should only let **trusted roles** edit these feed fields, and treat the
feed URL as untrusted if lower‑trust users can set it.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module and its Link dependency.
2. [Configuration](configuration/index.md) — set up the widget and formatter on a
   Link field, and tune the display options.

## Where it lives in the admin menu

RSS Embed Field adds no admin settings page of its own. Everything is configured on a
field's display, under **Structure → Content types → *(your type)* → Manage form
display** (for the widget) and **Manage display** (for the formatter). See
[Configuration](configuration/index.md).
