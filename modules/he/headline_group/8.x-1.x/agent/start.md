<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Headline Group (headline_group) — agent index

Composite headline **field type** — kicker / headline / subhead as one field with parts.
No dependencies. Version **8.x-1.9**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

**Why one field rather than three:** three separate fields lose the relationship — nothing says
they belong together, nothing stops one being filled alone, display settings are configured three
times, and a template that wants "the headline" must know about all three.

**The markup is the point, and it is a semantic question, not a styling one.** HTML has **no
element for a subheading**. `<h1>` followed by `<h2>` makes the subhead a **document section it is
not** — the misuse that breaks a screen reader's heading navigation. The accepted patterns are:
- a single heading containing a styled **`<span>`** for the secondary text, or
- **`<hgroup>`**, whose specification has changed more than once.

Getting that right once in a field type beats getting it wrong in every theme — that is the
argument for the module. **Confirm which pattern this release emits before adopting it**, since
that is the whole point of the field.
