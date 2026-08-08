<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Webform Ban integrates webforms with core's Ban module, blocking submissions from banned IP addresses.

---

Spam and abuse often come from repeat-offender IPs. Webform Ban ties webform submissions to core's Ban module, so a banned IP cannot submit. It is an abuse-control integration that reuses core's ban list (a good approach — one ban list, applied to forms). The standard IP-ban cautions apply: an IP ban blocks everyone behind that IP (shared/CGNAT), and behind a reverse proxy the real client IP must be used or the module bans the proxy — see trusted-proxy configuration. Reusing the core ban list means bans set elsewhere apply here too, which is the intended, consistent behaviour.

---

- Block banned IPs from webforms.
- Reuse the core Ban list.
- Stop spam form submissions.
- Ban abusive submitters.
- Apply IP bans to forms.
- Consider shared-IP users.
- Use the real client IP behind a proxy.
- Integrate with core Ban.
- Block repeat offenders.
- Apply one ban list everywhere.
- Reduce form spam.
- Confirm proxy IP handling.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.