<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Token Modifier (token_modifier) — agent index

A meta token type that transforms other tokens, plus a small plugin type for the transformations.
No config, no permissions, no schema, no Drush. Requires contrib `token`.

Key facts:
- Token type **`token-modifier`**. Syntax:

  ```
  [token-modifier:MODIFIER:REST:OF:THE:TOKEN]
  e.g. [token-modifier:uppercase:node:title]
       [token-modifier:urlencode:node:field_slug]
  ```

  `hook_tokens()` explodes the token name on `:`, shifts off the first part as the **modifier
  plugin id**, re-joins the rest, and calls
  `$plugin->transform("[$token]", $data, $options)`.
- **Plugin type `token_modifier`**: manager `TokenModifierPluginManager`, annotation
  `@TokenModifier` (`src/Annotation/TokenModifier.php`), base class `TokenModifierPluginBase`,
  interface `TokenModifierInterface`, namespace `Plugin/token_modifier/`.
- Shipped modifiers: `Length`, `Lowercase`, `Ltrim`, `Rtrim`, `Trim`, `StripTags`, `TitleCase`,
  `UpperCase`, `UpperCaseFirst`, `Urlencode`.
- `hook_token_info()` registers the type and every discovered modifier with `dynamic => TRUE`, so
  they show up in the Token browser.

Writing a modifier:

```php
// mymodule/src/Plugin/token_modifier/Slugify.php
namespace Drupal\mymodule\Plugin\token_modifier;

use Drupal\token_modifier\Plugin\TokenModifierPluginBase;

/**
 * @TokenModifier(
 *   id = "slugify",
 *   name = @Translation("Slugify"),
 *   description = @Translation("Lowercases and replaces non-alphanumerics with dashes.")
 * )
 */
class Slugify extends TokenModifierPluginBase {
  // implement transform($token, array $data, array $options)
}
```

Then `[token-modifier:slugify:node:title]`.

Gotchas:
- The modifier resolves the inner token by **re-running token replacement**, so the inner token
  must be valid in the same `$data` context; a token needing data you did not pass yields an empty
  string.
- `createInstance()` is called with the modifier id straight from the token text — an unknown id
  raises a plugin exception rather than leaving the token untouched, so validate patterns you let
  editors write.
- `core_version_requirement` is the loose `>=8`; the installed release is 2.0.6.
