<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Subresource Integrity UI lets an administrator add `integrity` and `crossorigin` attributes to asset libraries from a configuration screen.

---

An externally hosted script is a standing grant of execution rights to whoever controls that URL — a CDN compromise, a hijacked host, a DNS takeover, or simply a maintainer republishing a different build under the same path all result in the browser running code nobody reviewed, with no signal that anything changed. Subresource Integrity is the platform's answer: attach the expected hash, and the browser compares before executing and refuses on mismatch. Modules that declare CDN-hosted libraries frequently omit it — `redoc_field_formatter` in wave 70 loads Redoc from jsDelivr with no hash at all — and the declaration is in the module's own `libraries.yml`, which a site cannot edit without patching. Making it configuration puts the decision with the site. Version **1.0.3** on `^8` through `^11`, behind `administer site configuration`. Two things decide whether SRI helps or breaks the page, and both catch people out. **`crossorigin` is required for SRI to function at all**: the browser needs a CORS-mode fetch to inspect the response, and the host must send permissive CORS headers — without both, the script **fails to load** rather than merely failing to be verified, which is the most common way an SRI rollout takes a site down. And **a hash pins one exact file**, so when upstream publishes an update the script stops loading until the hash is updated — which is the point rather than a nuisance, provided versioned URLs are pinned and a hash update is treated as a review step. Compare `external_script_sri`, documented in wave 72, which addresses the same problem from a per-script list.

---

- Add integrity hashes to CDN libraries.
- Protect against a CDN compromise.
- Add crossorigin to an external script.
- Meet a security audit requirement.
- Verify a third-party library.
- Harden a site loading external assets.
- Detect an unexpected library change.
- Support a content security programme.
- Pin a library to a known build.
- Reduce supply-chain risk.
- Add SRI without patching a module.
- Satisfy a penetration test finding.
- Protect a payment page's scripts.
- Configure library attributes centrally.
- Document external script dependencies.
- Block execution of a tampered file.
- Support a regulated site's controls.
- Review third-party library updates deliberately.
