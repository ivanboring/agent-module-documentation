# Cludo Search — manual setup guide

**Cludo Search** (`cludo_search`) connects your Drupal site to
[Cludo](https://www.cludo.com/), a hosted (SaaS) site‑search product. Instead of
building and querying a local search index (as you would with Search API and Solr),
your site sends visitor queries to Cludo's API and renders the results Cludo
returns. Cludo's own crawler indexes your site behind the scenes.

The module gives you the pieces you need to wire this up: a configuration page where
you enter your Cludo account details (customer ID, engine ID and API credentials)
and point Drupal at your search results page, plus **search blocks** — one for the
search form and one for the results page — so you can place Cludo search wherever
your theme needs it.

Choose Cludo when you want to outsource site search for its relevance tuning,
analytics and merchandising features rather than run your own Solr/Search API
infrastructure. The trade‑off is the usual SaaS one: less infrastructure to
operate, but a dependency on Cludo's availability and data handling. Because the
module talks to an external service using account credentials, store the Cludo API
key as a secret, and be aware that visitors' **search terms are sent to Cludo**.
(This module is a community project and is not sponsored or supported by Cludo.)

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — enter your Cludo account details,
   secure the API key, and place the search blocks.

## Where it lives in the admin menu

After enabling, open the Cludo Search settings page (under **Configuration**,
reachable from the module's link on the Extend/modules list) to enter your Cludo
customer and engine IDs and API credentials. Administering the settings is
controlled by the module's own permission.
