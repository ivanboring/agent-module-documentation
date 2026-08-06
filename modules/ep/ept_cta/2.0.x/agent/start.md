<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# EPT: Call to Action (ept_cta) — agent index

Call-to-action paragraph type for the **Extra Paragraph Types** family: button, media, and
per-instance CSS from `Services/GenerateCtaCSS`.
Version **2.0.1**. Core `^10.1 || ^11 || ^12`.
Depends on `link`, `media`, `ept_basic_button`, `paragraphs`. No routes or permissions.

**Broken against `ept_core` 2.0.0 — verified on a clean install.**
`EptSettingsCtaWidget::__construct()` takes 6 args and calls `parent::__construct()` with **5**;
`ept_core` 2.0.0's `EptSettingsDefaultWidget::__construct()` requires **7**. Instantiating the
widget through `plugin.manager.field.widget` with a real `ept_settings` field definition:

```
ept_settings_cta:       ArgumentCountError: Too few arguments to …EptSettingsDefaultWidget::__construct(),
                        5 passed in ept_cta/src/Plugin/Field/FieldWidget/EptSettingsCtaWidget.php,
                        exactly 7 expected
ept_settings_timeline:  OK
ept_settings_default:   OK
```

Effect: the module enables and the `ept_cta` paragraph type is created, but
`paragraph.ept_cta.default` form display is **never written** — the type exists with no edit form.

**Root cause is a missing constraint.** `ept_cta`'s composer `require` is
`drupal/ept_basic_button ^2.0` + `drupal/paragraphs ^1.0` — **`ept_core` is never named**, so
composer resolves an `ept_core` whose widget signature the code does not match. This is
contrib-vs-contrib skew inside one family, not a core/Symfony signature change. Pin the EPT family
together and check the resolved `ept_core` before adopting.