<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Geolocation Provider (geolocation_provider) — agent index

**Plugin type for geolocation services**, so code asks for a location without naming which service
answers. Depends on core `serialization`. Does nothing alone — infrastructure for modules that
implement or consume providers. Version **2.0.0**.
Core requirement `^8 || ^9 || ^10 || ^11`.

**Why the abstraction earns its place:** a specific provider's response shape, identifiers and
failure modes otherwise spread into controllers, blocks and preprocess functions — and then the
contract changes, the free tier disappears, the data-protection assessment objects to a US provider,
or the site moves behind a CDN that already supplies the answer for free.

**Three things belong in any geolocation conversation:**
1. **An IP address is personal data** under GDPR, and looking one up **sends it to a third party** —
   a processing activity needing a basis and a privacy-notice entry, however routine it feels.
2. **IP geolocation is approximate and confidently wrong.** Country reliably, city sometimes, finer
   rarely — and **wrong for VPN users, mobile networks and corporate proxies**. Gating access or
   content on it produces a support queue.
3. **A lookup on the request path is a network call on the request path.** Cache per session or per
   IP prefix, or the site's response time becomes the provider's.
