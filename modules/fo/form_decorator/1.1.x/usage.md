<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Form Decorator lets a form be modified by a decorator service rather than by `hook_form_alter()`, giving form changes a class, a service definition and a testable boundary.

---

`hook_form_alter()` is Drupal's oldest extension point and its least pleasant. Every module's alterations to every form end up in one procedural function per module, dispatched by a chain of `if ($form_id == …)` branches; ordering between modules is governed by module weight, which nobody wants to reason about; the code cannot be unit tested without a bootstrapped Drupal; and dependencies have to be fetched with `\Drupal::service()` because there is nowhere to inject them. A decorator changes all of that: one class per concern, constructor injection, an explicit service definition, and a stack whose order is declared rather than inferred. This module supplies the mechanism with a `form_decorator_example` submodule showing the shape. Version **1.1.0** on core `^10 || ^11`, no dependencies, no permissions, no configuration — infrastructure for other modules. Two things to weigh. **It is an additional indirection layer**, so a developer opening the codebase who does not know the pattern will look for a `hook_form_alter` that is not there — the same trade `autoservices` makes, and worth agreeing on as a team rather than adopting silently. And **decorating a form does not decorate its security**: validation and submit handlers added this way are still ordinary handlers, `#access` and route access still govern who reaches the form at all, and a decorator that adds a field must still ensure that field's value is validated on submission.

---

- Replace a hook_form_alter with a class.
- Inject services into form modifications.
- Unit test a form alteration.
- Give form changes an explicit order.
- Organise many form alterations.
- Add a field to a form from a service.
- Reduce a module's procedural code.
- Make form changes reviewable per concern.
- Avoid \Drupal::service() calls in alters.
- Structure a large module's form logic.
- Decorate a specific form by id.
- Share form logic between modules.
- Test form changes in isolation.
- Modernise legacy alter code.
- Add validation from a decorator.
- Keep form concerns separated.
- Follow a decorator pattern in Drupal.
- Simplify a crowded .module file.
