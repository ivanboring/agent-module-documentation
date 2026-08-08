<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Preprocess Services lets entity preprocessing (the logic in hook_preprocess) be implemented as services rather than procedural functions.

---

Procedural preprocess hooks accumulate in .theme/.module files and cannot use dependency injection. Entity Preprocess Services lets that logic live in services, cleaner and testable, with an example submodule. It is developer infrastructure with no security surface — it restructures where preprocess logic lives, not what it can do.

---

- Move preprocess logic to services.
- Inject dependencies into preprocessing.
- Test preprocess logic.
- Refactor procedural preprocess.
- Organise entity preprocessing.
- Use services for templates.
- Structure preprocess code.
- Provide clean preprocessing.
- See the example service.
- Improve theme-layer code.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.
- Match your use case.
- Confirm compatibility.