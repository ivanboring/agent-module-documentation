<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
XHProf provides code profiling via XHProf integration, capturing function-level performance data for a request.

---

Diagnosing where a slow request spends its time needs function-level profiling. XHProf integrates the XHProf profiler, capturing per-function timing and call data. It is a development/diagnostic tool, and an important operational caution applies: profiling adds overhead and the captured profiles can reveal internal code paths and data, so XHProf is for development/staging or targeted production investigation, not left running in production. The profiling UI and data should be restricted to developers, and the XHProf PHP extension must be installed. Use it to investigate, then turn it off.

---

- Profile a slow request.
- Capture function-level timing.
- Diagnose performance bottlenecks.
- Integrate XHProf.
- See per-function call data.
- Use in development/staging.
- Restrict profiling data.
- Avoid leaving it on in production.
- Install the XHProf extension.
- Investigate then disable.
- Find slow code paths.
- Analyse a request profile.
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