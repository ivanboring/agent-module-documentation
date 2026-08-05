<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CKEditor 5 Custom Paste filters what arrives in the editor when content is pasted, rather than accepting whatever markup the source produced.

---

Pasting from Word, Google Docs or another web page is how most editorial markup problems begin. The clipboard carries a large amount of structure the source cares about and the site does not — inline font families, point sizes, colours, `mso-` attributes, span nesting several levels deep, hard-coded widths — and once it is in the body field it is in the content, surviving redesigns and defeating the theme's typography. CKEditor 5 filters paste against the enabled schema, which removes what the editor cannot represent and keeps a good deal that a site would rather not have. This module adds site-controlled filtering on top, so paste behaviour is a configuration decision per text format. Version **1.0.3** (2024) on core `^9.3 || ^10 || ^11`, depending on core `ckeditor5`. Two things to keep straight, because they are easy to conflate. **This is editorial hygiene, not a security control**: the security boundary is the **text format's filter chain**, applied on render regardless of how the markup got into the field, and a paste filter runs in the browser where a determined user can bypass it entirely by using the source-editing button or an API. Never let a paste rule substitute for a correctly configured `filter_html`. And **filtering is lossy by design** — an editor who pastes a carefully formatted table and gets plain rows will paste again, so the rules need to keep what the site's own styles can express and discard the rest, which takes a pass with real content rather than a guess.

---

- Strip Word formatting on paste.
- Remove inline styles from pasted content.
- Clean up Google Docs markup.
- Prevent font tags entering content.
- Keep pasted content on-brand.
- Remove hard-coded colours.
- Reduce markup cleanup work.
- Stop nested spans entering the body.
- Keep tables clean when pasted.
- Enforce a markup policy in the editor.
- Improve consistency of editorial markup.
- Prevent pasted widths breaking layout.
- Configure paste behaviour per text format.
- Reduce theme overrides fighting content.
- Keep headings semantic on paste.
- Stop copied styles surviving a redesign.
- Improve content portability.
- Standardise pasted list markup.
