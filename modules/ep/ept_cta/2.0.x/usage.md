<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
EPT Call to Action adds a CTA paragraph — heading, text, button and media — to the Extra Paragraph Types family, with a settings widget that generates per-instance CSS.

---

The EPT family builds landing pages out of paragraph types that each carry their own design settings, so an editor can place a component and adjust its appearance without a developer. This one is the call-to-action block: a link field from `link`, media support from `media`, the button behaviour inherited from `ept_basic_button`, and a `GenerateCtaCSS` service that turns the chosen settings into styles for that specific paragraph.

**Release 2.0.1 has a defect that stops the paragraph being editable, verified on a clean install.** `EptSettingsCtaWidget::__construct()` takes six parameters and calls `parent::__construct()` with five, but `ept_core` 2.0.0's `EptSettingsDefaultWidget::__construct()` requires seven. Instantiating the widget through the field widget plugin manager with a real `ept_settings` field definition produces:

```
ArgumentCountError: Too few arguments to function
Drupal\ept_core\Plugin\Field\FieldWidget\EptSettingsDefaultWidget::__construct(),
5 passed in ept_cta/src/Plugin/Field/FieldWidget/EptSettingsCtaWidget.php … and exactly 7 expected
```

The same probe instantiates `ept_settings_timeline` and `ept_settings_default` without error, so this is specific to `ept_cta`, not to the family. The practical result on this install: the module enables and the `ept_cta` paragraph type is created, but its default form display config is never written — the paragraph type exists with no working edit form.

The cause is a missing version constraint. `ept_cta`'s composer requirements are `drupal/ept_basic_button ^2.0` and `drupal/paragraphs ^1.0`; it never names `ept_core`, so composer is free to resolve an `ept_core` whose widget signature the code does not match. Check the resolved `ept_core` version before relying on this, and pin it explicitly if you adopt the family.

---

- Add a call-to-action block to a landing page.
- Give editors a button component with design settings.
- Pair a CTA heading with supporting text.
- Attach an image or video to a call to action.
- Style a CTA per instance without writing CSS.
- Build a landing page from paragraph components.
- Reuse the EPT button behaviour in a larger block.
- Let marketing assemble campaign pages unaided.
- Keep CTA styling inside the content model.
- Standardise call-to-action markup across a site.
- Vary CTA appearance between pages.
- Extend the EPT family with a promotional component.
- Verify the resolved `ept_core` version before adopting.
- Diagnose a paragraph type that has no edit form.
- Pin EPT family versions together in composer.