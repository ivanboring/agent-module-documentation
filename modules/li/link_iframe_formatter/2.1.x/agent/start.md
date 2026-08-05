<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Link Iframe Formatter (link_iframe_formatter) — agent index

Field formatter rendering a **link field as an `<iframe>`**. Depends on core `link`.
Core requirement `^10 || ^11`.

> **Embedding is delegation — three things belong in any deployment:**
> 1. **Set `sandbox`** on the iframe, so the embedded page cannot script or navigate the parent.
> 2. **Constrain which hosts may be embedded** — through field validation and/or a CSP
>    **`frame-src`** directive. An unconstrained iframe formatter lets anyone who can edit the
>    field embed anything **inside the site's own chrome**, which is a phishing surface.
> 3. **Treat it as a consent question** where a consent manager is in use — the embedded origin
>    sees the visitor.

Key facts:
- Chosen in **Manage Display**, so the editor supplies only a URL. That is simpler than teaching
  embed markup and safer than allowing raw HTML in a text field — the trade is that the *host*
  allow-list becomes the control.
- Compare `soembed` (wave 68), which embeds via the oEmbed protocol from known providers — a
  narrower and better-governed surface where the target supports it.
