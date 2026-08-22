# Environment Indicator Header — manual setup guide

**Environment Indicator Header** (`environment_indicator_header`) is a small
add‑on to the [Environment Indicator](https://www.drupal.org/project/environment_indicator)
module. Where Environment Indicator colours the admin toolbar so you can tell at a
glance whether you are on development, staging, or production, this module adds one
more signal: it exposes the current environment's release/version in an **HTTP
header**, so the active environment is visible to tools and requests that never see
the toolbar.

That makes it handy for developers and for automated checks — you can confirm which
environment (and which deployed release) answered a request by looking at the
response headers, without loading a page as an administrator.

Because it depends entirely on Environment Indicator, you configure the
environments themselves — their names and colours — over in that module. This
add‑on simply piggybacks on those settings to emit the header. Keep in mind that a
header advertises environment information to anyone who inspects the response, which
is a mild fingerprinting detail; keep environment names non‑sensitive.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the module with Composer, pull
   in its Environment Indicator dependency, and enable it.

This add‑on has **no configuration page of its own**. The environment names and
colours it reports are managed in the Environment Indicator module — see "Where it
lives in the admin menu" below.

## Where it lives in the admin menu

Environment Indicator Header adds no admin page. The underlying environments are
configured in **Environment Indicator** at **Configuration → Development →
Environment indicator** (`/admin/config/development/environment-indicator`). Once
this module is enabled, the current environment is additionally surfaced in the
response HTTP headers with no further setup.

## How to use it

1. Install and configure **Environment Indicator** first so each environment has a
   correct, distinct name (ideally detected per environment rather than exported as
   shared configuration).
2. Enable this module.
3. Request any page on the site and inspect the **response headers** (for example
   with your browser's developer tools or `curl -I`). The current environment's
   information appears there, confirming which environment served the request.
