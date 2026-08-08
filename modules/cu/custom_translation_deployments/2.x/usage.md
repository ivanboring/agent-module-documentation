<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Translation Deployments lets a site ship custom interface-translation (.po) files in a module/profile, so translation overrides deploy with code.

---

Interface-translation overrides (a reworded label, a custom string) normally live in the database and do not travel with a deployment. Custom Translation Deployments lets those custom .po files ship in a module or profile, so translation overrides deploy with code like any other artifact. It is a developer/deployment tool with no security surface; confirm the shipped translations are the intended overrides and do not unexpectedly change strings elsewhere.

---

- Deploy custom translations with code.
- Ship .po overrides in a module.
- Version translation overrides.
- Keep translations in git.
- Override interface strings reliably.
- Deploy string changes.
- Avoid DB-only translations.
- Ship reworded labels.
- Confirm the overrides.
- Manage translation deployment.
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