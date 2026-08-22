# Pylot Bridge — manual setup guide

**Pylot Bridge** (`pylot_bridge`) connects Drupal to the **Pylot / Bridge CMS**
tourism backend. It imports tourism content — products, listings, GPS traces, and
points of interest — into Drupal, and it exposes a set of front-end endpoints
(product JSON feeds, an image-resizing endpoint, and a contact-email endpoint) that
a site theme uses to render that content. It depends on core **Node** and the
**Components** module, and supports Drupal 9, 10, and 11.

> ## Important security warning — read before enabling
>
> As shipped (version 11.0.7), several of this module's front-end routes are open
> to **anonymous** callers (`_access: TRUE`), and two of them are dangerous:
>
> - **`/pylot_bridge/resize_image` is a server-side request forgery (SSRF)
>   endpoint.** It takes a `file` URL from the request, **fetches that URL from
>   your server**, and returns the processed image. An attacker can point it at
>   your internal network or a cloud metadata endpoint. Worse, that fetch
>   **disables TLS certificate verification**.
> - **`/pylot_bridge/send_email_recaptcha` is effectively an open mail relay.** It
>   sends site email to an attacker-supplied `dest` recipient (behind a
>   reCAPTCHA that can be bypassed).
> - **`/pylot_bridge/start_import`** lets anonymous callers trigger re-imports.
>
> Before using this module on any reachable site you should **restrict these
> routes** (require authentication/permission), **allowlist the host** that the
> image endpoint is permitted to fetch from, and **re-enable TLS verification** on
> that fetch. Treat this as a prerequisite, not an optional hardening step.

Pylot Bridge is primarily a developer/integration module — there is no settings
form in the admin UI. The Pylot backend credentials are supplied by an
administrator and should be stored securely through the environment rather than
committed.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token‑cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install with Composer, enable the
   module and its dependencies, store credentials safely, and lock down the
   anonymous routes.

There is **no configuration page** in the admin UI for this module. Setup is
covered in the installation guide.

## How to use it

Once installed and (critically) hardened, Pylot Bridge imports tourism data from
the Pylot/Bridge CMS into Drupal nodes and exposes JSON feeds and helper endpoints
that your theme's front-end code consumes to render products, listings, GPS traces,
and points of interest.
