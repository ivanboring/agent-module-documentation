<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Configuration Read-only Menu UI carves an exception into `config_readonly` so content menu links can still be reordered on a locked-down production site.

---

`config_readonly` is the module that makes production configuration immutable: with it enabled, configuration forms refuse to save, so the only way configuration changes is through a deployment. That is the right posture for a site with a real deployment pipeline, because it removes the entire class of problem where someone changes a setting on production and the next config import silently reverts it. The friction it creates is specific and comes up immediately: menus are a mix of two things Drupal stores differently — the menu itself and its **content menu links** are content entities, while the parent menu configuration is configuration — and the menu administration form saves both, so `config_readonly` blocks a purely editorial reordering of links because the form touches configuration. Editors experience that as "I can't move a menu item on the live site", which is a legitimate complaint. This module allows that specific operation through, requiring `config_readonly`, `menu_ui` and `menu_link_content`, version **8.x-1.3** on `^8` through `^11`. Two things to note. **Every exception to a lock is a hole in the lock**, so the value of the whole arrangement depends on this one being narrow — confirm what it actually permits, since "reorder links" and "edit the menu form" are different sizes of exception. And **menu weights are content here, so they do not travel with a configuration export** — a reorder made on production stays on production, which is the intended consequence and needs to be understood by whoever expects environments to match.

---

- Reorder menu links on a locked-down site.
- Keep config_readonly enabled in production.
- Let editors move a menu item live.
- Avoid deploying for a menu reorder.
- Resolve a config_readonly complaint.
- Support an editorial menu workflow.
- Keep configuration immutable otherwise.
- Allow content menu link changes.
- Support a strict deployment pipeline.
- Reduce deployments for trivial changes.
- Let a section owner reorder their menu.
- Keep production configuration protected.
- Allow menu edits without unlocking config.
- Support a GitOps configuration model.
- Fix a blocked menu save.
- Enable editorial navigation changes.
- Keep the config lock narrow.
- Support a compliance-driven config policy.
