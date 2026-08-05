<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Let's Encrypt Challenge serves the ACME HTTP-01 validation response from Drupal, so a certificate can be issued or renewed on a host where you cannot drop a file into the docroot.

---

The HTTP-01 challenge works by Let's Encrypt fetching a token from `/.well-known/acme-challenge/…` and checking the value. Normally the ACME client writes that file itself, which requires filesystem access to the web root — not available on a platform host, a read-only container image, or a site where the docroot is rebuilt by deployment. This module serves the response from Drupal instead: an administrator pastes the challenge value into a form at `/admin/config/letsencrypt_challenge/challenge` (behind `administer letsencrypt challenge`), and two routes at `/.well-known/acme-challenge` and `/.well-known/acme-challenge/{key}` return it. Both are `_access: 'TRUE'` and `_disable_route_normalizer: 'TRUE'`, which is correct on both counts — the ACME validation server is unauthenticated by design, and the path must be served exactly as requested. The value lives in **state**, not configuration, which is the right choice for a short-lived token that should not be exported. Note that `ChallengeController::content()` returns the same stored value regardless of the `{key}` segment, so it handles the single-challenge manual flow rather than several concurrent challenges. The release is 1.2.0-beta1, and the module is for the **manual** ACME mode — an automated client that can write files needs none of this.

---

- Renew a certificate on a host without docroot access.
- Serve an ACME challenge from Drupal.
- Complete HTTP-01 validation manually.
- Issue a certificate on a read-only container.
- Renew TLS on a platform-as-a-service host.
- Paste a challenge value from a manual certbot run.
- Avoid writing files into a built docroot.
- Handle validation where the web root is ephemeral.
- Renew a certificate without shell access.
- Support a manual certificate workflow.
- Restrict challenge configuration to administrators.
- Serve the challenge at the exact required path.
- Keep the challenge token out of config exports.
- Renew a wildcard alternative via HTTP-01.
- Complete validation during a maintenance window.
- Support a site behind a deployment pipeline.
- Re-issue after a certificate expiry incident.
- Validate a domain newly pointed at the site.
