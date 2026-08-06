<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Custom Add Content replaces `/node/add` with a menu, so the list of content types can be ordered, grouped and described.

---

`/node/add` lists content types alphabetically with their descriptions, and on a site with twenty-five of them that is a wall. Editors create three of those regularly and the other twenty-two are for a migration, a legacy feature or a specific team — but the page gives them equal weight, so the ones people need are mixed with the ones they should not touch.

Turning the list into a menu makes it editable: order by what people actually create, group by team or purpose, hide what is not for general use, write descriptions that say when to use each type rather than what it is called.

**Ordering a menu is presentation, not permission**, and that distinction is worth making explicitly. Removing a content type from the menu does not stop anyone creating it — `/node/add/type` still works for whoever has the permission. If a type genuinely should not be created by a role, that is a permission change, and this module's tidier list is a usability improvement layered on top rather than a substitute for it.

Used well it is a small change with a real effect on editorial quality: content ends up in the right type more often when the right type is obvious.

---

- Reorder the add-content list.
- Group content types by team.
- Hide rarely used types from the list.
- Put the common types first.
- Write useful type descriptions.
- Reduce a wall of twenty-five types.
- Improve which type editors choose.
- Recognise that hiding is not restricting.
- Use permissions for real restrictions.
- Keep /node/add/type working for those with rights.
- Describe when to use a type.
- Onboard new editors faster.
- Audit which types are actually used.
- Retire a legacy content type.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
