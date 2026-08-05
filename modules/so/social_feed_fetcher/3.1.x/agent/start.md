<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Social Feed Fetcher (social_feed_fetcher) — agent index

Pulls social platform posts into **Drupal nodes**. Depends on core `node`. Settings behind
`administer socialpost entity`. Version **3.1.1**. Core requirement `^10 || ^11`.

**Two implementations of "show our Instagram", differing in almost every respect:**
- **embedded widget** — third-party script on page view, tracks the visitor, needs consent,
  disappears when the platform changes its embed;
- **fetch into nodes (this)** — cached, themed like site content, indexed by site search, available
  when the API is not, and no consent requirement.

**The ongoing cost is credentials, not the module. Social APIs are hostile to this use case and
getting more so:** Twitter/X closed free API access; Instagram requires a Facebook app review and a
business account; Facebook page tokens expire and must be refreshed.
- Store tokens in a **Key** entity from an environment variable, never in exported configuration.
- **Someone must notice when a token expires** — the failure is a feed that quietly stops updating,
  not an error anyone sees.

**Two further points:**
- **Imported posts are other people's content** — check the platform's terms before republishing at
  length.
- **Fetched HTML is untrusted input.** It must pass through a text format, not go straight into a
  template.
