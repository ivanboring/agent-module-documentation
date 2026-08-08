<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
External Links Filter (elf) is a text-format filter that tags external and mailto links — adding a CSS class so a theme can mark them with an icon or open them in a new tab — and can optionally route external clicks through a signed redirect page.

---

Marking external links is a common editorial nicety: a small outbound-arrow icon, a `rel="noopener"`, a "you are leaving this site" behaviour. Doing it reliably means detecting, at render time, which links point off-site, and adding a class the theme can style. This filter does that as part of the text format pipeline, so it applies to all filtered content without editors having to add anything.

The part worth understanding is the optional redirect, because redirect endpoints are where open-redirect vulnerabilities usually live — and this one is built correctly. The route `/elf/redirect` takes the target `url` and a `key`, and it refuses to redirect unless the key matches an **HMAC of that URL computed with the site's private key** (`Crypt::hmacBase64($url, $privateKey)`). An attacker cannot forge a working link for an arbitrary destination without the private key, so the endpoint only ever redirects to URLs the site itself signed — it is not an open redirect. (One minor note: the comparison uses `!=` rather than `hash_equals()`; against a full HMAC with no practical timing oracle this is not exploitable, but `hash_equals()` would be the textbook choice.)

The settings page is admin-gated, and the filter attaches to a text format like any other. As a filter it is display-only — it changes how links render, not the stored content.

---

- Add a CSS class to external links.
- Mark outbound links with an icon.
- Open external links in a new tab.
- Tag mailto links for styling.
- Apply link marking site-wide via a text format.
- Add rel attributes to external links.
- Route external clicks through a redirect.
- Sign redirect targets with an HMAC.
- Prevent an open redirect by design.
- Show a "leaving the site" interstitial.
- Keep link marking out of templates.
- Style outbound links consistently.
- Configure the filter per text format.
- Detect off-site links at render time.
- Apply to all filtered content.
- Restrict filter settings to admins.
- Avoid editors tagging links by hand.
- Add an outbound-arrow to external URLs.
- Keep the content unchanged, only the render.
- Verify the redirect key before following it.