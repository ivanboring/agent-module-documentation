<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Backward Compatibility restores functions and APIs that newer Drupal removed, so older custom or contrib code keeps running.

---

Every Drupal major removes deprecated APIs, and the removals are announced years ahead, which does not help the site with a five-year-old custom module whose author left and whose tests do not exist. A compatibility shim is how such a site gets onto a supported core at all: restore the removed functions, upgrade core now, and fix the calls afterwards on a site that is at least receiving security updates. That is a legitimate and sometimes the only viable sequence, and it is worth saying so plainly, because the advice to "just update the code" assumes a budget and an author that the site does not have. Version **1.0.2** from **2023**, declaring `^9 || ^10 || ^11` in the Custom package. Three things to be clear about. **This is a bridge, not a destination**: shimmed code is code nobody is maintaining, running against a core that no longer expects it, and the removals happened because the old APIs had problems — often correctness or security ones — that the shim reintroduces. **Its own maintenance is the risk**: a compatibility layer that lags behind core becomes the thing that breaks the next update, and a module from 2023 declaring compatibility with a core major released afterwards is a declaration rather than a test result. And **the removed APIs should be enumerated and tracked** — each one is a known piece of technical debt with a name, so the honest use is to install it, list what it is providing, and close that list down deliberately rather than forgetting it is there.

---

- Keep legacy code running after an upgrade.
- Upgrade core before fixing custom code.
- Bridge a removed API temporarily.
- Get a stalled site onto a supported core.
- Run an unmaintained contrib module.
- Buy time for a refactor.
- Upgrade to receive security updates sooner.
- Support an inherited codebase.
- Keep a site running during a rewrite.
- Handle a removed function call.
- Support an incremental upgrade plan.
- Reduce upgrade blocking issues.
- Keep an old custom module working.
- Enumerate a site's technical debt.
- Support a phased modernisation.
- Handle an abandoned module's calls.
- Unblock a major version upgrade.
- Run legacy code while replacing it.
