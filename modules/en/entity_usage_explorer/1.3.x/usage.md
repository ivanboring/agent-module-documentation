<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Entity Usage Explorer shows where each entity is referenced across the site.

---

"Can I delete this?" is the question every content audit stalls on. A media item might be embedded in twelve articles, referenced by a paragraph inside a landing page, and used as a social share image; a taxonomy term might organise half the site or nothing. Drupal knows the references exist but does not present them, so the honest answer is usually "nobody is sure", and the result is a site where nothing is ever deleted.

An explorer answers it directly: here is what points at this thing.

The uses follow immediately — safe deletion, impact assessment before changing a shared asset, finding orphaned content nothing references, and understanding why a term cannot be removed.

**Two caveats worth knowing.** Usage tracking sees the references it knows how to see: entity reference fields and embeds are straightforward, but a link typed into body text, a path hard-coded in a template or an id passed through a custom module are references the explorer cannot know about. "No usages" therefore means "no tracked usages", which is a weaker statement than it looks and is exactly the case where a deletion surprises someone.

And the report aggregates across the site, so it can show that a restricted entity is referenced from places the viewer cannot otherwise see. On a site with access-controlled content, who can read the usage report is a real question rather than a formality.

---

- Find out where an entity is used.
- Decide whether something is safe to delete.
- Assess impact before changing a shared asset.
- Find orphaned content nothing references.
- Understand why a term cannot be removed.
- Audit media usage across a site.
- Plan a content retirement programme.
- Recognise that untracked references exist.
- Treat 'no usages' as 'no tracked usages'.
- Check for links typed into body text.
- Check for hard-coded paths in templates.
- Restrict who reads the usage report.
- Consider restricted entities in aggregates.
- Support a site migration.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
