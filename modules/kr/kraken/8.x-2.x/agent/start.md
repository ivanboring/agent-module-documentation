<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Kraken.io (kraken) — agent index

Image Optimize processor that compresses images via the **Kraken.io** web service.
Version **8.x-2.0**. Core `^10.3 || ^11`. Depends on contrib `imageapi_optimize`.
Configured on the processor inside an Image Optimize **pipeline** (no standalone settings route).

Options: API key, API secret, lossy, WebP, logging.

**Credential caveat:** `api_key` and `api_secret` are `'#type' => 'textfield'` with `#default_value`
set, stored in the **pipeline config entity** → exported to config/git and echoed into the form in
clear. Lower-stakes than infra keys (worst case: someone spends your Kraken quota) but still a
secret in git. Prefer a `password` field / Key entity.

Every optimized derivative is a third-party round trip — first-render latency depends on Kraken.io,
and images egress to be processed. Fine for public images; a data-egress decision otherwise.