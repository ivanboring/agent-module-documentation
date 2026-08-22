# Client Support — manual setup guide

**Client Support** (`client_support`) gives the people who use your site's admin
area a built-in way to ask for help. When enabled, it adds a **Support** link to the
admin menu and a support form; whatever an editor submits is emailed to an address
you configure — typically the developers or maintainers who look after the site.
It's a lightweight support channel, well suited to client portals, membership sites,
or any site where editors need a direct line to whoever maintains it.

The form is helpfully pre-loaded with context. It captures the submitter's user name
and email address and the URL of the page they were on when they clicked the Support
link, so you receive the request already knowing who asked and where they were.
Editors can add their own explanation, links, and attachments on top of that.

Two permissions control it: **`access client support`** (who can see and use the
support form) and **`administer client support`** (who can configure the module).
Because support requests can contain personal data — names, email addresses, and
whatever an editor writes or attaches — restrict the administration permission to
your actual support staff. It supports Drupal 10 and 11.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable it, and
   grant the permissions.
2. [Configuration](configuration/index.md) — setting the recipient email address.

## Where it lives in the admin menu

Once enabled, a **Support** link appears in the admin menu, opening the support form
for anyone with the `access client support` permission. The module's own settings
(the recipient email address) are configured separately — see
[Configuration](configuration/index.md).
