<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Form Decorator (form_decorator) — agent index

Lets forms be modified by **decorator services** instead of `hook_form_alter()`. Submodule
`form_decorator_example` shows the shape. No dependencies, permissions or configuration —
infrastructure for other modules. Version **1.1.0**. Core requirement `^10 || ^11`.

**What is wrong with `hook_form_alter()`, concretely:** every module's alterations to every form
land in one procedural function dispatched by `if ($form_id == …)`; ordering between modules is
governed by **module weight**; the code cannot be unit tested without a bootstrapped Drupal; and
dependencies are fetched with `\Drupal::service()` because there is nowhere to inject them.

A decorator gives one class per concern, **constructor injection**, an explicit service definition,
and a stack whose order is **declared** rather than inferred.

**Two things to weigh:**
1. **It is another indirection layer.** A developer who does not know the pattern will look for a
   `hook_form_alter` that is not there — the same trade `autoservices` (wave 72) makes. Agree on it
   as a team rather than adopting it silently.
2. **Decorating a form does not decorate its security.** Validation and submit handlers added this
   way are ordinary handlers; `#access` and route access still govern who reaches the form; and a
   decorator adding a field must still ensure that field's value is validated on submit.
