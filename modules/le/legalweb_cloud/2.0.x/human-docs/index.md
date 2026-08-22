# LegalWeb Cloud — manual setup guide

**LegalWeb Cloud** (`legalweb_cloud`) connects your Drupal site to the
**legalweb.io** cloud service, which supplies the legal machinery a modern site
needs to be compliant: a consent (cookie) popup, a services/cookie notice, data
protection information, and an imprint — all sourced from your legalweb.io
subscription and inserted into your pages. The selling point is that lawyers, not
developers, author the texts: legalweb.io positions itself as GDPR‑oriented,
optimised for Germany and Austria (and usable elsewhere in the EU), TCF certified,
and Tag Manager compatible.

In day‑to‑day use your job is small — select which services you use and fill in a
few fields — and legalweb.io does the rest: building the consent popup, the cookie
notice, controlling services and embeddings, and generating the privacy
information and imprint. An optional submodule,
**`legalweb_cloud_enhancements`**, adjusts the widget's behaviour (for example
preventing an outside click from closing the dialog, removing the close button,
relabelling the buttons, or placing the LegalWeb script in the HTML head if the
content blocker needs it).

> **Important security caveat — read before enabling.** This module works by
> executing JavaScript that the remote service returns, as **first‑party code on
> every non‑admin page**. It writes the script legalweb.io sends back verbatim to
> a file in your public files directory and loads it as a library site‑wide (and
> refreshes it via cron). In practice that means whoever controls legalweb.io's
> response has **arbitrary script execution in every visitor's browser** — an
> unbounded provider‑trust / supply‑chain dependency. The connection *is* made
> over TLS (so this is not a man‑in‑the‑middle problem) and no visitor PII is sent
> outbound — the exposure is that you are trusting the provider's returned code
> completely. Treat legalweb.io as a **fully trusted party** before enabling, and
> ideally prefer serving vendor JavaScript from the vendor's own origin over
> loading it as first‑party code. Note too that a compliance popup being present
> is not the same as being compliant — correct configuration is still your
> responsibility.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module, and optionally the enhancements submodule.
2. [Configuration](configuration/index.md) — enter your legalweb.io license key,
   select services, and store the key safely.

## Where it lives in the admin menu

After enabling, you configure the module's connection to legalweb.io (its license
key / API `guid`) and choose which services and legal components to display, then
legalweb.io generates and inserts the consent popup, notices, privacy
information, and imprint into your site.
