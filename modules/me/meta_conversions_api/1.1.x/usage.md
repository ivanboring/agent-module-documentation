<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Meta Conversions API sends conversion events to Meta from the server rather than from the visitor's browser, as a replacement for or supplement to the Facebook pixel.

---

The browser pixel has been degraded from several directions at once: ad blockers remove it, Safari's tracking prevention truncates the cookies it depends on, and iOS app tracking transparency cut the identifiers it relied on. Advertisers responded by moving the reporting server-side — the site tells Meta directly that a purchase happened, matched to a person by hashed email address or phone number. That is what this module supplies, version **1.1.0**, and note the malformed core requirement `^9 | ^10 || ^11` with a single pipe, which is not valid Composer syntax for an OR and is worth checking behaves as intended. The privacy position needs stating plainly because server-side tracking changes it substantially rather than incidentally. **The visitor cannot see it and cannot block it** — there is no request from their browser to intercept, so ad blockers, tracking protection and browser settings have no effect, which is precisely why advertisers want it. **Consent therefore has to be enforced by the site**, since nothing else will: if the visitor declined tracking, the server must not send the event, and that is a decision in code rather than a script the consent manager withholds. And **the data being sent is personal data** — a hashed email is still personal data under GDPR, since hashing is pseudonymisation rather than anonymisation — so it needs a lawful basis, a record in the processing register and a mention in the privacy notice. A site deploying this without those has moved its tracking somewhere its consent tooling cannot reach.

---

- Report purchases to Meta server-side.
- Recover conversion data lost to ad blockers.
- Improve campaign attribution.
- Supplement the Facebook pixel.
- Track conversions after iOS changes.
- Send order events from the server.
- Match conversions by hashed email.
- Improve ad spend measurement.
- Report a lead form submission.
- Track subscriptions server-side.
- Improve return on ad spend reporting.
- Send events the browser cannot.
- Support a performance marketing team.
- Report checkout completion reliably.
- Deduplicate pixel and server events.
- Support an advertising measurement plan.
- Track conversions on a decoupled site.
- Report add-to-cart events.
