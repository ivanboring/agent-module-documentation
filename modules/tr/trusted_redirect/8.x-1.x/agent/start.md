<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Trusted Redirect (trusted_redirect) — agent index

Re-enables **external redirects**, restricted to an allowlist of trusted hosts. Submodule
`trusted_redirect_entity_edit`. Version **8.x-1.13**. Core requirement `^9 || ^10 || ^11`.

**Understand what core is doing before removing it.** Drupal refuses external redirect
destinations *as a security control*. An **open redirect** — an endpoint that sends visitors
anywhere a parameter names — turns a link genuinely starting on your domain into a phishing
vector, and is a recurring advisory class across every web framework. This module is the
deliberate opt-in, not a bug fix.

`TrustedRedirectHelpersTrait::isTrustedUrl()` checks the destination against
`getTrustedHosts()` before the redirect is served.

**The allowlist is the entire security control.** Treat it like a firewall rule:
- name **specific hosts**, never a wildcard;
- review when partners change;
- remember trusting a host means trusting **every page on it**, including one an attacker can post
  content to.

**Permission machine name is misspelled: `admininister trusted redirect configuration`** — three
`in`s. Matters when writing role config by hand or in a deployment script.

Legitimate cases: payment-provider handover, SSO round trip, partner handover, documented deep
links into a sister site.
