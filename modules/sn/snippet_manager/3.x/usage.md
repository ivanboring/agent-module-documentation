<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Snippet Manager manages reusable code snippets (Twig templates, with variables) as entities that can be rendered as blocks or embedded, edited in the admin UI.

---

Reusable bits of markup or logic — a formatted address, a call-to-action, a computed widget — often end up scattered across templates and blocks. Snippet Manager centralises them: snippets are entities (Twig-based, with variables and a `snippet()` Twig function to embed one in another) editable in the admin UI and renderable as blocks. Snippets render through Drupal's **sandboxed** Twig (`inline_template`), so the standard template-injection route to code execution is blocked. The trust boundary is the permission: creating and editing snippets requires **`administer snippets`**, and that is a high-trust capability — a snippet author writes Twig that renders on the site, can embed other snippets, and can pull in views and blocks, so the permission belongs only to developers/trusted site builders, exactly like the ability to edit theme templates. It is not a permission to grant to content editors. Used as intended — trusted authors, sandboxed rendering — it is a clean way to manage reusable snippets; the one rule is to keep `administer snippets` narrow.

---

- Manage reusable code snippets.
- Create a Twig snippet.
- Embed one snippet in another.
- Render a snippet as a block.
- Centralise reusable markup.
- Use snippet variables.
- Restrict administer snippets.
- Grant only to trusted builders.
- Keep snippets for developers.
- Rely on the Twig sandbox.
- Reuse a call-to-action.
- Build a computed widget.
- Avoid granting to editors.
- Embed a view in a snippet.
- Manage snippets in the UI.
- Treat snippet-author as high trust.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.