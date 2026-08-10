<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AB Age Gate provides an age-gate module.

---

AB Age Gate provides an **age-gate splash** — an interstitial that asks visitors to confirm their age (or
enter a birthdate) before viewing the site, as used for age-restricted products (originally built for AbInbev).
It depends on CSV Serialization, Views Data Export, REST and Serialization.

Use it for age-restriction compliance UX. Understand its security model clearly: an age gate is a
**cookie/client-side compliance measure, not access control** — it remembers a "confirmed" flag (typically a
cookie) and a determined user can bypass it (clear/set the cookie, request resources directly), so it must
**not** be relied on to protect restricted content or files; it satisfies a legal/UX "did you confirm your age"
requirement, nothing more. Any actually-restricted content still needs real access control. It has no
access-control role in the security sense. Configure the age-gate appearance and logging.

---

- Show an age-gate splash.
- Ask visitors to confirm their age.
- Serve age-restricted sites.
- Depend on CSV Serialization/Views Data Export/REST.
- Remember a confirmed flag (cookie).
- Provide a compliance interstitial.
- BE a cookie/client-side compliance measure.
- NOT be real access control (bypassable).
- Not rely on it to protect content/files.
- Use real access control for restricted content.
- Have no access-control role (security sense).
- Configure appearance and logging.
- Handle the age gate.
- Gate by age.
- Configure the gate.
- Confirm age.
- Handle the splash.
- Show the gate.
- Treat it as compliance UX.
- Provide an age gate.
