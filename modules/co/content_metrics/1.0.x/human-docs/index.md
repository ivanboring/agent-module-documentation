# Content Metrics — manual setup guide

**Content Metrics** (`content_metrics`) gives content maintainers a visual picture
of how a site's content has grown over time. It renders charts of content
activity — for example, how many items were created per month over the past twelve
months, plus related charts such as comments over time — so editors and site
owners running long-lived sites can see trends at a glance instead of digging
through content listings.

Most of the charts include **exposed filters**, so you can narrow the view
(by content type, date range, and so on) to answer a specific question. The module
aggregates content metadata into these charts; it is a reporting and statistics
tool and has no access-control role of its own.

Content Metrics draws its charts with the **ChartJS API** module, which is its one
dependency. Because the dashboard summarizes site content, it's sensible to expose
it only to roles that should see that overview.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer along with its
   ChartJS API dependency, and enable the module.

There is **no dedicated settings form** for this module. You interact with it by
opening its charts and adjusting the exposed filters shown on the page.

## How to use it

Once enabled, visit the content-metrics charts to see content-creation activity
over time. Use the exposed filters on each chart to focus on a particular content
type or time span. The views that power these charts can be adjusted in the
**Views UI** like any other view if you want to change what's displayed.
