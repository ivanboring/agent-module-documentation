# Configuration

LegalWeb Cloud has two small jobs for you — connect the site to your legalweb.io
account, and choose which services and legal components to display — after which
the service does the rest. Most of the intelligence lives in legalweb.io; the
module fetches and inserts what it returns.

## Connect to legalweb.io

In the module's settings, enter the **license key / API identifier** (the `guid`)
that legalweb.io issued for your subscription. This is what authorises the module
to fetch your legal texts and consent configuration. Once it is set, the module
can pull down your consent popup, notices, privacy information, and imprint.

## Choose services and components

Your remaining task is to **select the services you use** and fill in a few input
fields. From that, legalweb.io generates:

- the **consent popup** and the cookie / services notice;
- **control of services and embeddings** (what loads before consent);
- the **data protection information**;
- the **imprint** (with an expanded generator in the cloud version).

You can surface the imprint via a block, a dedicated page, or a token.

## Store the license key safely

The API `guid` is stored in the module's configuration, and by default that is
plaintext. Treat it as a secret:

- Store the value in an environment variable with DDEV's dotenv command — for
  example `ddev dotenv set .ddev/.env --legalweb-guid=<value>` — then
  `ddev restart`. Never commit `.ddev/.env`.
- Reference it through a **Key** entity backed by the environment provider where
  the workflow allows, so the raw key stays out of exported config and version
  control.

## Understand what you are trusting

This is the part to be deliberate about. The module takes the JavaScript that
legalweb.io returns and loads it as **first‑party code on every non‑admin page**
(refreshed via cron). That gives legalweb.io, in effect, the ability to run
arbitrary script in every visitor's browser. The connection is over TLS and no
visitor PII is sent outbound, so this is not a network‑interception concern — it
is a **provider‑trust / supply‑chain** decision. Before enabling in production:

- confirm you are willing to trust legalweb.io as a fully trusted party;
- ideally prefer loading vendor JavaScript from the vendor's own origin rather
  than as a first‑party library on your domain;
- remember that a popup being present does not by itself make you compliant —
  configuring the services and texts correctly is still your responsibility, and
  100% conformity cannot be guaranteed by the plugin alone.

## Save

Save the settings, then load a front‑end page and confirm the consent popup and
the other generated components appear as expected.
