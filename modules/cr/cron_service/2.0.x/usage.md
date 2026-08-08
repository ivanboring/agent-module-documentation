<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Cron Service lets hook_cron() implementations be moved into services, giving cron tasks dependency injection, ordering and a management UI.

---

Procedural hook_cron() implementations are hard to test and cannot use dependency injection cleanly. Cron Service lets cron logic live in services instead, with a UI submodule for managing them. It is developer infrastructure for organising scheduled work — no security surface of its own, though (as with any cron mechanism) the tasks run with site privileges, so what a cron service does is as trusted as the code in it.

---

- Move hook_cron to a service.
- Inject dependencies into cron tasks.
- Manage cron services in a UI.
- Order cron tasks.
- Test cron logic cleanly.
- Organise scheduled work.
- Refactor procedural cron.
- Provide cron as services.
- Control cron execution.
- Structure background tasks.
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