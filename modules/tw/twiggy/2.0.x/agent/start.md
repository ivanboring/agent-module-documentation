<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Twiggy (twiggy) — agent index

A text filter that runs field content through Twig. No dependencies, no config, no permissions.
Core requirement `^10.6 || ^11 || ^12`.

The entire module:

```php
public function process($text, $langcode) {
  $twig_service = \Drupal::service('twig');
  return new FilterProcessResult((string) $twig_service->renderInline($text, ['langcode' => $langcode]));
}
```

**Treat the filter as a trust boundary.** Attaching "Twiggy Filter" to a text format means every
author who can use that format supplies template source the server compiles and executes.

What was actually reachable when probed on Drupal 11.4.4 (see local `security.md` for the full
transcript):

| Vector | Result |
|---|---|
| `{{ 7*7 }}`, loops, `{% set %}` | **executes** — arbitrary Twig runs |
| `{{ [1,2]\|sort('exec') }}` | blocked — *"callable passed to the sort filter must be a Closure in sandbox mode"* |
| `{{ source(...) }}` / `{{ include(...) }}` of a path | blocked by the Twig loader |
| `{{ obj.method() }}` on objects from Drupal Twig functions | blocked (sandbox) |
| `render_var({'#pre_render': [...]})` / `#lazy_builder` | blocked — `TrustedCallbackInterface` |
| `render_var({'#type':'inline_template', …})` | executes (still sandboxed) |
| `active_theme_path()`, `file_url()`, `path()`, `url()` | execute — thin information surface |

So on current core it is **not** a straightforward RCE, but the protections belong to core, not to
this module — on an older core, or with a contrib Twig extension that widens the sandbox policy,
the surface grows. Unbounded loops execute server-side on every render, which is a denial-of-service
lever an ordinary author would not otherwise have.

Guidance: attach only to a format whose users you would trust with template code (typically an
admin-only format). Never attach it to a format available to a general authenticated role, and
never to one reachable by anonymous submissions.
