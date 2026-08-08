<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Field Formatter Template lets a site builder select a Twig template for any field's formatter, choosing from templates placed in a configured directory and annotated with a `{# Template Name: … #}` header.

---

The usual way to change one field's markup is a theme template with a long suggestion name, which means a theme change, a cache rebuild, and knowledge of Drupal's suggestion rules. FFT moves that choice into the Manage display UI: write a template, give it a header comment, and it appears as an option on any field's formatter.

Templates are discovered by scanning a directory for files matching the theme extension, reading each one, and keeping those whose contents match `{# Template Name: … #}` and whose filename starts with the expected prefix. A `{# Settings: … #}` block can carry per-template settings. A submodule, `vff` (Views Formatter), extends the same idea to Views.

**The template directory needs care, and the module gives none.** The setting is a plain text field with no `validateForm()` at all — nothing checks that the path is inside the docroot, outside `public://`, or not writable by the web server. Worse, the shipped default is `sites/all/formatter`, a **Drupal 7 path** that does not exist on any Drupal 8+ install, so the module does nothing until an administrator changes it — with no guidance about where to point it. The obvious wrong answer, and the one an administrator knows is writable, is the public files directory. Verified: pointed there, a planted `.html.twig` was discovered and offered with no warning.

The good news, also verified, is that Drupal 11's Twig environment is sandboxed: the standard template-injection route to code execution (`{{ [...]|map('system') }}`) is refused. A planted template can still emit unescaped script, so the realistic worst case is stored XSS rather than a compromised server. Put the directory in the repository, outside `public://`, and treat templates as the code they are.

---

- Choose a Twig template for a field formatter.
- Change one field's markup without a theme template.
- Give editors a choice of field renderings.
- Add custom markup around a field's items.
- Render a taxonomy field as inline tags.
- Reuse a template across content types.
- Carry per-template settings in a header comment.
- Extend the same idea to Views with the vff submodule.
- Keep the template directory outside public files.
- Keep the template directory in version control.
- Change the default directory — sites/all is a Drupal 7 path.
- Treat FFT templates as code, not content.
- Restrict who can write to the template directory.
- Avoid pointing the directory at sites/default/files.
- Review planted templates for unescaped output.
- Confirm templates carry a Template Name header.