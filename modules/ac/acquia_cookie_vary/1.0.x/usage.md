<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Acquia Cookie Vary varies responses by specific cookies on the Acquia platform.

---

Acquia Cookie Vary makes cached responses **vary by specific cookies** on the Acquia platform — so pages
that legitimately differ by a cookie (e.g. a language or A/B cookie) are cached per-cookie-value rather than
served identically. It is in the performance package, core 10.3+.

Use it on Acquia-hosted sites to cache correctly around cookies. It is a performance/caching feature. Security
note: cache varying is **security-sensitive** — vary only by cookies that safely partition public content;
never vary (and cache) by a **session/auth cookie**, which would risk caching one user's personalized/private
response and serving it to another. Configure the vary cookies **carefully**. It has no access-control role.

---

- Vary cached responses by cookies.
- Cache per-cookie-value.
- Serve Acquia-platform caching.
- Handle cookie-dependent pages.
- Improve cache correctness.
- Partition public content by cookie.
- NEVER vary/cache by a session/auth cookie.
- Avoid caching private responses across users.
- Configure vary cookies carefully.
- Have no access-control role.
- Configure the cookies.
- Handle cookie vary.
- Vary caching.
- Configure caching.
- Cache by cookie.
- Handle the vary.
- Configure performance.
- Set vary cookies.
- Vary responses.
- Provide cookie vary.
