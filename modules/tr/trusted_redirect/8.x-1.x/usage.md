<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Trusted Redirect re-enables redirects to external destinations, restricted to an administrator-maintained allowlist of hosts.

---

Drupal refuses to redirect to an external URL, and that refusal is a security control rather than a limitation. An **open redirect** — an endpoint that will send a visitor anywhere a parameter names — is what turns a link that genuinely starts on your domain into a phishing vector, and it is a recurring class of advisory across every web framework. Core's position is that internal destinations are safe and external ones must be opted into deliberately. Sometimes the requirement is real: a checkout that hands off to a payment provider, a single sign-on round trip, a partner handover, a documented deep link into a sister site. This module supplies the deliberate opt-in — a configured list of trusted hosts, checked by `isTrustedUrl()` before a redirect response is served — plus a `trusted_redirect_entity_edit` submodule. Version **8.x-1.13** on `^9 || ^10 || ^11`. **The allowlist is the entire security control**, so it deserves the care of a firewall rule: name specific hosts, never a wildcard, review it when partners change, and remember that trusting a host means trusting every page on it, including one an attacker can post content to. One practical wrinkle: the permission's machine name is misspelled — **`admininister trusted redirect configuration`**, with three `in`s — which matters when writing a role's configuration by hand or in a deployment script.

---

- Redirect to a payment provider.
- Hand off to an SSO endpoint.
- Link into a partner's site.
- Allow a documented external destination.
- Re-enable external redirects safely.
- Configure an allowlist of hosts.
- Support a checkout handover.
- Redirect after an external form.
- Support a federated login flow.
- Allow a sister-site deep link.
- Redirect to a documentation host.
- Support an external booking system.
- Avoid an open redirect.
- Restrict redirects to known hosts.
- Support a migration to a new domain.
- Redirect to a campaign microsite.
- Allow an API callback destination.
- Audit which external hosts are trusted.
