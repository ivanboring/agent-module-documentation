<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Markup Twig extends the markup field with Twig support, rendering the field's Twig through Drupal's sandboxed inline_template — gated by an administer-markup-fields permission.

---

A markup field holds static HTML; sometimes it needs logic — a token, a loop, conditional output. Markup Twig extends the markup field with Twig support. The security-relevant facts, both verified: it renders the field's content through `#type => 'inline_template'`, which uses Drupal's SANDBOXED Twig environment, so the standard template-injection route to code execution is blocked; and editing the Twig requires the `administer markup fields` permission — the field is disabled for users without it. So it is the correct pattern for admin-authored templating: sandboxed rendering plus an admin-only editing permission, the same shape as Snippet Manager. The trust boundary is that permission — a markup-field author writes Twig that renders on the site (can loop, call permitted functions, embed content), so `administer markup fields` belongs to developers/trusted site builders, not content editors. Granted narrowly, it is a safe way to add logic to markup fields.

---

- Add Twig to a markup field.
- Render logic in a markup field.
- Use tokens in markup.
- Loop in a markup field.
- Extend markup with Twig.
- Rely on the Twig sandbox.
- Restrict administer markup fields.
- Grant only to trusted builders.
- Keep it from content editors.
- Add conditional markup.
- Embed content in markup.
- Treat the permission as high trust.
- Render admin-authored Twig safely.
- Confirm the permission holders.
- Add dynamic markup.
- Use sandboxed templating.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.