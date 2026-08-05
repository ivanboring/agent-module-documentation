<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External Script SRI attaches `integrity` and `crossorigin` attributes to externally hosted scripts, so the browser refuses to execute a file whose contents have changed.

---

Every externally loaded script is a standing grant of execution rights to whoever controls that URL. A CDN compromise, a hijacked npm-backed host, a DNS takeover or simply a maintainer publishing a new build under the same path all result in the browser running code the site never reviewed — and the site has no way to notice. **Subresource Integrity** is the answer the web platform provides: attach the expected hash, and the browser compares before executing, refusing on mismatch. It is a small attribute with large consequences, and it is routinely omitted, including by modules that declare CDN-hosted libraries in their own `libraries.yml` (`redoc_field_formatter` in wave 70 is an example — jsDelivr, no hash). This module lets an administrator supply hashes and the `crossorigin` value per external script path through a form at `/admin/config/system/sri-configuration`, behind a `restrict access: true` permission, and its help text points at `srihash.org` for generating them. Version **1.0.1** on `^9.5 || ^10 || ^11`. Two operational points that decide whether it helps or breaks the site. **`crossorigin` is required for SRI to work at all** — the browser needs a CORS-mode fetch to inspect the response, and the host must send permissive CORS headers, or the script fails to load rather than merely failing to be verified. And **a hash pins a specific file**: when the upstream publishes an update, the script stops loading until the hash is updated, so pin versioned URLs and treat hash updates as a review step, which is the point.

---

- Add integrity hashes to CDN scripts.
- Protect against a CDN compromise.
- Meet a security audit requirement.
- Verify a third-party script has not changed.
- Add crossorigin attributes to external JS.
- Harden a site loading external libraries.
- Detect an unexpected library update.
- Support a content security policy programme.
- Pin a specific library version.
- Reduce supply-chain risk.
- Satisfy a penetration test finding.
- Protect a payment page's scripts.
- Add SRI without a theme change.
- Manage hashes for several scripts.
- Document which external scripts are loaded.
- Block execution of a tampered file.
- Support a regulated site's controls.
- Review third-party script changes deliberately.
