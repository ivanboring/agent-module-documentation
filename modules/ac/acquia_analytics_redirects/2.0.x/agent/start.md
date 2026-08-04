# Acquia Analytics Redirects — agent index

Single response event subscriber. Re-appends the `X-Acquia-Stripped-Query` header (analytics
query params Acquia Varnish stripped) onto the target of a 301/302 redirect. **No config, no
permissions, no admin UI, no services API to call** — installing + enabling is the whole setup.
For Acquia Cloud (Varnish) sites.

Behavior (`src/EventSubscriber/AnalyticsRedirectsEventSubscriber.php`,
`getHeaderAcquiaStrippedQuery`, on `KernelEvents::RESPONSE` priority -1024):

- Acts only when the response status is `301` or `302`.
- Reads request header `X-Acquia-Stripped-Query`; if non-empty:
  - `UrlHelper::parse()` the current target URL, rebuild target as `path . '?' . <header value>`
    (existing target query/fragment are dropped; only the header's query is used).
  - Append `X-Acquia-Stripped-Query` to the response `Vary` header (per-query Varnish caching).
  - Replace the response with a `TrustedRedirectResponse($target, $status, $originalHeaders)`.
- No new plugin types, hooks, or config schema. `composer.json` declares no dependencies.

Deployment note: the module trusts `X-Acquia-Stripped-Query`, which on Acquia Cloud is set (and
sanitized) by Varnish. Off Acquia, or if the app is reachable bypassing Varnish, that header is
client-controlled — the resulting redirect keeps the original (trusted) *path* but with an
attacker-chosen *query string*. Deploy only behind the intended Acquia/Varnish tier.
