<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Paragraph Block makes existing paragraph types available as block types, so the same components can be placed through block layout or Layout Builder.

---

Sites that built their components on Paragraphs before Layout Builder was viable have a real problem when they adopt it: everything an editor knows how to build is a paragraph, and Layout Builder places blocks. The choices are to rebuild every component as a block type, to keep two parallel component sets, or to bridge.

This bridges. A paragraph type becomes a block type, so a component built years ago is placeable in a layout without being rewritten and without editors learning a second vocabulary.

**It is most valuable as a migration path and least valuable as a permanent architecture.** Running both systems indefinitely means every new component needs a decision about which it is, and the answer drifts by whoever built it — which is how a site ends up with three ways to place a call to action. The useful pattern is: bridge now, agree a direction, and let new work follow it.

Worth checking two things on a real content model. Whether a bridged paragraph keeps its **translation** behaviour, since paragraphs and block content translate differently and a component that was translatable as one may not be as the other. And whether **nested paragraphs** survive the bridge, because a component containing other paragraphs is where these translations between models usually break.

---

- Place an existing paragraph type in Layout Builder.
- Adopt Layout Builder without rewriting components.
- Avoid teaching editors a second vocabulary.
- Bridge a Paragraphs site to block layout.
- Plan a migration off Paragraphs.
- Agree a direction for new components.
- Avoid three ways to place a CTA.
- Check translation behaviour after bridging.
- Check nested paragraphs survive.
- Reuse a component across placement methods.
- Audit which components exist in both models.
- Retire duplicated component types.
- Keep editors on one component set.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
