# Collector Systems — manual setup guide

**Collector Systems** (`collector_systems`) connects Drupal to the **Collector
Systems API** — a collections-management platform used by museums, galleries, and
private collectors. With it, collection and artwork data from Collector Systems can
be pulled into Drupal so an institution can publish its collection on its website.

It acts as a bridge between the external Collector Systems database and your Drupal
site: the module fetches records from the API so they can be displayed as Drupal
content. It has no other module dependencies and supports Drupal 9, 10, and 11.

Because it talks to an external service, it needs configuration before it does
anything useful — you supply the Collector Systems API credentials, and those should
be stored securely (environment-backed) rather than committed. It is also worth
reviewing which data is imported and caching API responses appropriately, both to
respect the remote service and to keep your pages fast. Note that this module is
**not covered by Drupal's security advisory policy**.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable it.

## How to use it

After enabling, configure the connection to the Collector Systems API by entering
your API credentials on the module's settings screen. Keep the credentials
**environment-backed** (see the DDEV note below) rather than pasting raw secrets
into exported configuration. Once connected, the module fetches collection/artwork
records so they can be displayed on your site; review what is imported and cache
responses so the external service is not hit on every page load.

> **Storing the API credentials with DDEV.** Save the secret as an environment
> variable — `ddev dotenv set .ddev/.env --collector-systems-api-key=<value>`
> (keep `.ddev/.env` out of version control), then `ddev restart` so the container
> picks it up — and reference that variable rather than committing the raw key.
