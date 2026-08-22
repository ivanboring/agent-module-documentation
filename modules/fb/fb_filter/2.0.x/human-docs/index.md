# Facebook Filter — manual setup guide

**Facebook Filter** (`fb_filter`) is a text‑format filter that processes
Facebook‑related content when text is rendered — most usefully converting Facebook
`#hashtags` in your content into links, and handling Facebook embeds so that
Facebook post or video markup in a body field turns into a proper embed on output.

Because it is a text‑format filter, you do not configure it on a dedicated settings
page. Instead you add it to one or more of your site's text formats, and it then
transforms matching content whenever text in that format is displayed. Its effect
is purely on output — the stored content is unchanged.

One thing to keep in mind: any Facebook content it embeds is third‑party and loads
Facebook's script, which is a privacy and consent consideration. The filter has no
access‑control role of its own.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer and
   enable it.

There is **no standalone configuration page** — you enable the filter on a text
format, as described below.

## How to use it — add the filter to a text format

1. Go to **Configuration → Content authoring → Text formats and editors**
   (`/admin/config/content/formats`).
2. Choose the text format you want to affect (for example *Basic HTML* or *Full
   HTML*) and click **Configure**.
3. Under **Enabled filters**, tick the **Facebook Filter** filter.
4. If the format has several filters, check the **Filter processing order** tab so
   Facebook Filter runs at a sensible point relative to the others.
5. Click **Save configuration**.

From then on, content written in that text format has its Facebook hashtags and
embeds processed automatically when it is displayed.
