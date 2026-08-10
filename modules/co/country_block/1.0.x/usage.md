<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Country Block blocks users from specific countries.

---

Country Block **blocks visitors from specific countries** — denying access based on the visitor's
GeoIP-resolved country (via Smart IP), e.g. to comply with regional restrictions. It depends on the Smart IP
module, provides its own permissions, in the Custom package.

Use it for coarse geographic blocking. Understand its limits: country blocking is a **coarse, best-effort gate,
not a strong security boundary** — GeoIP is **approximate** (databases are imperfect) and the client IP can be
**changed via VPN/proxy** (and spoofed via headers unless trusted proxies are configured), so a determined user
can bypass it; use it for compliance/UX geo-gating, not to protect sensitive content or as your only access
control. It has no per-content access-control role. Configure the blocked countries.

---

- Block visitors by country.
- Use GeoIP (Smart IP).
- Comply with regional restrictions.
- Depend on the Smart IP module.
- Provide its own permissions.
- Deny listed countries.
- BE a coarse, best-effort gate (not strong security).
- Know GeoIP is approximate + IP is changeable (VPN/proxy).
- Configure trusted proxies if relying on IP.
- Not use it as the only access control.
- Have no per-content access-control role.
- Configure the blocked countries.
- Handle country blocking.
- Block countries.
- Configure the blocks.
- Geo-block visitors.
- Handle the gate.
- Restrict countries.
- Treat it as best-effort.
- Provide country blocking.
