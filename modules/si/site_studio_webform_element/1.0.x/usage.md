<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Site Studio Webform Element adds a Webform picker to the Site Studio builder, so a designer can place a form inside a component.

---

Site Studio builds pages from its own element vocabulary, and a Webform is not in that vocabulary unless something bridges the two. Without it, a page built in Site Studio either cannot contain a form or contains one placed by a developer in a template — which puts the form outside the builder the rest of the page lives in.

This is that bridge, and it is the same shape as `site_studio_views_element` (wave 84): each capability the site already has needs re-exposing in the builder's terms, which is a recurring cost of a proprietary page builder.

Because it places an existing Webform, the form's configuration stays where it belongs — fields, validation, handlers, confirmation and access are Webform's, and the placement is Site Studio's. Changing the form does not touch the page.

**Two checks on any placed webform.** The form's **own access settings still apply**, so a form restricted to authenticated users placed on a public page renders as nothing at all — an empty region rather than an error, which is why it gets reported as "the form disappeared". And a form on a public page **will be found by bots**, so the site's CAPTCHA or honeypot has to apply to it.

Requires the Site Studio stack, which is Acquia's commercial product — on any other site this has nothing to do.

---

- Place a webform in a Site Studio component.
- Let a designer add a form without a developer.
- Keep form configuration in Webform.
- Change a form without touching the page.
- Move a form on the page without editing it.
- Check the webform's access settings.
- Diagnose a form that renders as nothing.
- Apply spam protection to a public form.
- Reuse an existing webform in a design.
- Recognise the recurring cost of a proprietary builder.
- Confirm the Site Studio licence covers the site.
- Compare with the Views element bridge.
- Audit which pages carry forms.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
