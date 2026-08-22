# Document Loader Plugin - Webpage — manual setup guide

**Document Loader Plugin - Webpage** (`document_loader_webpage`) is a **loader plugin
for [Document Loader](../../../document_loader/2.0.x/human-docs/index.md)** that fetches
a **web page** and converts it for ingestion. Given a URL, it makes a server-side
`GET` request (via Guzzle), cleans the returned HTML, and returns the content in a
normalized form so a remote page can flow into your content or AI pipelines the same
way a file would.

Once enabled it becomes one of the loaders Document Loader can dispatch to. It is a
web-services / developer feature with **no admin form and no permissions of its
own** — it is configured through Document Loader and driven in code, and it depends
on the **Document Loader** module (supports Drupal 10.3+ and 11).

**Read this before pointing it at anything: this plugin has an SSRF
consideration.** Because it fetches the given URL **from your server**, a
user-controllable URL can make the server reach **internal or private endpoints** —
localhost services, cloud metadata addresses such as `169.254.169.254`, or internal
APIs — which is a classic Server-Side Request Forgery (SSRF) vector. If the URL is
always set by an administrator or a fixed pipeline, the risk is limited. If any
untrusted user can supply the URL, you must mitigate it: restrict who can configure
the URL, and validate or allowlist the targets (block private and link-local IP
ranges), ideally reinforced with an egress firewall or forward proxy.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer and enable the
   module.

There is **no configuration page** for this module. After enabling it, the Webpage
plugin appears at **Configuration → Media → Document Loader**
(`/admin/config/media/document-loader`); the URL and options are supplied when the
loader is invoked, not through a per-plugin form.

## Where it lives in the admin menu

The plugin is listed in the Document Loader configuration at **Configuration → Media
→ Document Loader** as an available loader. It adds no settings page of its own —
crucially, keep control of *who can set the URL it fetches* (see the SSRF note
above).
