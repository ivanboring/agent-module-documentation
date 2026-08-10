<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Autocreate Access allows entity-creation access to be respected by autocomplete widgets.

---

Autocreate Access **makes entity-reference autocomplete widgets respect entity CREATE access** — so the
autocomplete "create new referenced entity" option is only offered to users who actually have permission to
**create** that target entity type, rather than being shown regardless. It is in the Field types package.

Use it to correctly gate inline-create on reference fields. This is a **security-positive** fix: without it, an
autocomplete field's create-on-the-fly can surface to users lacking create access (an authorization gap in the
edit UI); this module checks `create` access before offering the option. It layers on core entity access and has
no negative access impact. Enable it where reference autocompletes allow creating new entities.

---

- Respect create access in autocomplete.
- Gate the 'create new' option.
- Check entity CREATE access.
- Serve content editing/access.
- Fix an authorization gap.
- BE security-positive.
- Only offer create-on-the-fly to permitted users.
- Layer on core entity access.
- Have no negative access impact.
- Enable it on create-allowing reference fields.
- Handle autocomplete access.
- Gate inline-create.
- Configure nothing (behavior).
- Respect create access.
- Handle the widget.
- Check access.
- Fix the gap.
- Restrict creation.
- Enable it.
- Provide autocomplete create-access.
