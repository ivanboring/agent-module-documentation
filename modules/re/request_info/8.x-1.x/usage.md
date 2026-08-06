<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Request Info shows the details of the current request on Drupal's status report page.

---

Reverse proxies, CDNs and load balancers rewrite requests before Drupal sees them, and the difference between what a visitor sent and what Drupal received is where a whole class of problems lives: wrong client IP in logs, wrong scheme causing mixed-content or redirect loops, wrong host breaking absolute URLs, trusted-proxy settings that do not match the actual infrastructure.

Answering "what does Drupal actually see?" normally means adding a debug statement or reading a log. Putting it on the status report puts it where an administrator already looks when something is wrong with the environment.

**What it displays is request data, and that is the thing to be deliberate about.** Headers can include cookies, authorization values and forwarding chains that reveal internal network structure. The status report is behind `administer site configuration` — a strong permission — but it is worth knowing that this page now carries request detail, especially if a screenshot of the status report ends up in a support ticket or an issue queue, which is exactly what happens when someone is asking for help with an environment problem.

That last point is the practical one: sanitise before sharing.

---

- See what request Drupal actually received.
- Diagnose a wrong client IP in logs.
- Debug a redirect loop from a wrong scheme.
- Check the host Drupal sees behind a proxy.
- Verify trusted proxy settings.
- Investigate mixed-content problems.
- Inspect forwarding headers.
- Put request detail where admins look.
- Sanitise before sharing a status report.
- Avoid pasting headers into an issue queue.
- Check CDN header rewriting.
- Confirm load balancer configuration.
- Debug absolute URL generation.
- Audit who can read the status report.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
