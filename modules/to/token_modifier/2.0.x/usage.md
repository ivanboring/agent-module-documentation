<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Token Modifier adds a meta token type that transforms the output of any other token: `[token-modifier:uppercase:node:title]` runs the node title through an uppercase plugin, with a small plugin type so sites can add their own transformations.

---

Tokens are values, not expressions, so getting an uppercase title or a URL-encoded field has traditionally meant custom code. This module introduces the token type **`token-modifier`** whose token names are read as `modifier:the-rest-of-the-token`. `hook_tokens()` splits the name on `:`, takes the first part as the modifier plugin id, reassembles the remainder into a normal token string, and hands it to the plugin's `transform("[$token]", $data, $options)` — so any token available in the current context can be wrapped. Ten modifiers ship: `Length`, `Lowercase`, `Ltrim`, `Rtrim`, `Trim`, `StripTags`, `TitleCase`, `UpperCase`, `UpperCaseFirst` and `Urlencode`. They are plugins discovered by `TokenModifierPluginManager` from an `@TokenModifier` annotation, extending `TokenModifierPluginBase`, so adding a modifier is a small class in `src/Plugin/token_modifier/`. `hook_token_info()` advertises the type and every discovered modifier (each marked `dynamic`), so they appear in the Token browser. The module requires the contrib Token module and has no configuration, permissions or Drush commands.

---

- Uppercase a node title inside a pathauto pattern.
- URL-encode a field value used in a link token.
- Trim whitespace from an imported field before display.
- Strip HTML tags from a body summary token.
- Title-case a taxonomy term name in a page title.
- Get the character length of a field value as a token.
- Lowercase an email address token for consistency.
- Normalise values used in generated file names.
- Build cleaner metatag values from messy content.
- Compose a URL query string safely from token values.
- Apply transformations without writing a custom token.
- Use modifiers in email templates.
- Standardise casing in generated aliases.
- Right-trim trailing separators from concatenated tokens.
- Add a project-specific modifier as a small plugin.
- Chain a modifier onto any contrib module's token.
- Keep transformation logic out of Twig templates.
- Improve consistency of imported data at render time.
- Discover available modifiers in the Token browser.
- Reuse one modifier across many token contexts.
