# Configuration

Setting System Status up is a short, two-part job: register the site with your
monitoring dashboard using its UUID, and — just as important — lock the reporting
endpoint down at the web-server layer.

## Register the site

1. Log in as a user with the **Administer site configuration** permission (an
   administrator by default).
2. Go to **Configuration → System → System Status**
   (`/admin/config/system/system_status`).
3. Copy your **site UUID** from that page.
4. In your monitoring dashboard (for example Lumturio), add a new Drupal site and
   paste in the site UUID. From then on the dashboard contacts your site, asks for its
   installed modules and versions, and calculates any needed upgrade path.

If your site is still in development and protected by HTTP Basic authentication, your
dashboard may let you enter an HTTP username and password (in its per-site *edit*
screen) so it can still reach the endpoint.

## Lock down the reporting endpoint — important

The monitoring service reaches your inventory through a reporting endpoint at
`/admin/reports/system_status/{token}`. Everything about that endpoint's safety rests
on the URL token, and in this version that guard is weak:

- The token is generated with PHP's `shuffle()`, which is **not** a cryptographically
  secure random source, so it is more predictable than a proper secret token.
- It is compared with a loose `==`, which is not constant-time and is vulnerable to
  PHP type-juggling. If a generated token happens to take a `0e[digits]` form, the
  check can be bypassed by simply supplying `0` — no knowledge of the real token
  needed.
- The endpoint **always** returns the Drupal and PHP versions in cleartext, even when
  the rest of the payload is encrypted, and if openssl is not available it returns the
  **entire module-and-version inventory in clear**. That is precisely the fingerprint
  an attacker uses to choose version-specific exploits.

Because of this, treat the endpoint as **effectively unauthenticated reconnaissance**
and do not rely on the token to protect it. Restrict it at the web-server or firewall
layer — the most practical step is to **IP-allowlist your monitoring source** so only
your dashboard's address can reach `/admin/reports/system_status/…`. The endpoint is
read-only (it discloses information but does not change your site), so the risk is
confidentiality, not integrity — but a complete module-and-version inventory is
sensitive on its own.

## What is safe here

The admin settings page at `/admin/config/system/system_status` is correctly gated by
the **Administer site configuration** permission — only the *reporting* route uses the
token. And where openssl is present, the payload inventory itself is encrypted for the
monitoring client with a per-site shared secret. The weakness is the token in front of
the reporting endpoint and the cleartext version fields, not the settings page or the
cipher.
