<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Admin Toolbar Tasks moves administrative local tasks — the View / Edit / Revisions style tabs — into the site toolbar.

---

Local tasks are Drupal's contextual actions: view, edit, revisions, translate, devel. They render as tabs near the top of the content area, which works on an admin theme and often badly on a front-end theme, where they either collide with the design or get suppressed and become unreachable.

Putting them in the toolbar solves both. The toolbar is already the administrative surface, it is consistent across themes, and it does not have to be designed around.

The practical gain is on a site where editors work in the front-end theme — which is most sites that took any care over the editing experience. Editors stop hunting for the edit tab, and a theme no longer has to style a set of tabs it never wanted.

**Two things to check on a real site.** The toolbar is not infinitely wide, and a content type with translation, moderation, revisions, devel and a few contrib tabs produces more local tasks than fit — check what happens at that point rather than on a stock install. And local tasks are **access-filtered per route**, so what appears in the toolbar varies by user; that is correct, and it means testing with an editor account rather than as user 1, which is the account that sees everything and therefore tests nothing.

---

- Move edit and revision tabs into the toolbar.
- Stop local tasks colliding with a front-end theme.
- Make tabs reachable in a suppressed theme.
- Give editors a consistent admin surface.
- Avoid styling tabs in every theme.
- Help editors working in the front-end theme.
- Check behaviour with many local tasks.
- Test toolbar width with translation and moderation.
- Test as an editor rather than user 1.
- Confirm access filtering of tasks.
- Reduce time spent hunting for edit.
- Combine with an admin toolbar module.
- Audit which local tasks a content type has.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
