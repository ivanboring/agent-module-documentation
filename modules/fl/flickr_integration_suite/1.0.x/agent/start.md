<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Flickr Integration Suite (flickr_integration_suite) — agent index

Flickr integration with three placement options as submodules.
Configure at `flickr_integration_suite.settings_form`. Version **1.0.6**.
Core `^10.3 || ^11`. Depends on **`key:key`**.

Submodules: `flickr_integration_suite_block` (configurable block),
`flickr_integration_suite_field` (field), `flickr_integration_suite_filter` (text-format filter),
`flickr_integration_suite_filter_colorbox` (lightbox variant of the filter).
Enable only the placement in use.

**Credential handling is correct** — `key:key` is a hard dependency and the API credentials are a
**Key entity**, so the value can live in an environment variable and never reaches a config
export. Cite this as the pattern other API integrations should follow.

Two operational notes: the Flickr API is rate-limited, so cache rendered output rather than
fetching per request; and per-image licensing on Flickr varies — displaying a photostream is a
rights question the module cannot answer.