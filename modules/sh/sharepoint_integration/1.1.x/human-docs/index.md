# SharePoint Integration — manual setup guide

**SharePoint Integration** (`sharepoint_integration`), by miniOrange, establishes a
connection between Microsoft SharePoint and your Drupal site — enabling
SharePoint-based integration, SSO, and content access from Drupal. You point it at
your SharePoint / Azure app registration, and it manages the connection so the two
systems can talk.

The module is configured on its own connection form (route
`sharepoint_integration.connection`) and provides its own permissions to control who
can manage it. It sits in the miniOrange package and supports Drupal 10 and 11. It
has no submodules and no additional module dependencies.

As with any SharePoint integration, treat the app credentials (client ID and
secret) as secrets — store them securely and operate the connection over HTTPS.

**One caveat worth knowing** (found in this version): the module's miniOrange
support / trial-query helper (`MOSupport::callService()`) makes its request with TLS
verification disabled. This affects *only* the in-module support/feedback ping to
miniOrange — which carries the admin's email address, your site and PHP version, and
a hardcoded shared miniOrange key. It does **not** touch your SharePoint credentials
or session, and the actual SharePoint connection path uses Drupal's standard HTTP
client normally. The practical risk is low, but because that one support request is
not TLS-verified, a network attacker could read the admin email / site fingerprint
it contains or tamper with the response. The simple mitigation: avoid submitting the
in-module support form while on an untrusted network.

This guide is written for a **human** setting the module up. If you want terse,
token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.
2. [Configuration](configuration/index.md) — set up the SharePoint connection.

## Where it lives in the admin menu

The module adds a **SharePoint Integration** connection configuration form (route
`sharepoint_integration.connection`), reached from its link in the site's
Configuration area. See [Configuration](configuration/index.md) for what to fill in.
