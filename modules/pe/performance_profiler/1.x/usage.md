<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Performance Profiler logs each page's build time and peak memory usage, for spotting slow or memory-heavy pages.

---

Finding which pages are slow or memory-hungry needs per-page metrics. Performance Profiler logs page build time and peak memory usage. It is a diagnostic/development tool. The consideration is that performance logs accumulate and, if verbose, add overhead — it is best used to investigate rather than left running verbosely in production, and the logs should be restricted like any diagnostic output. It reveals nothing sensitive beyond timing/memory, but timing can be a mild side-channel, so keep the data to operators.

---

- Log page build time.
- Log peak memory per page.
- Find slow pages.
- Spot memory-heavy pages.
- Diagnose performance.
- Profile page rendering.
- Use for investigation.
- Avoid verbose production logging.
- Restrict the logs.
- Investigate a slow page.
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
- Use deliberately.
- Review after upgrades.