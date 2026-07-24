<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# og_prepopulate — URL syntax, widget alter and service

## Install

```bash
composer require drupal/og            # hard dependency, not shipped with prepopulate
drush en og_prepopulate -y            # pulls in prepopulate + og
```

`og_prepopulate.info.yml` declares `dependencies: [prepopulate:prepopulate, og:og]`, so without
Organic Groups the module cannot be installed at all.

## URL syntax

```
/node/add/article?og_audience=12
```

The parameter name is the **audience field's machine name**, the value is the group entity id.
This is deliberately shorter than the parent module's
`?edit[og_audience][widget][0][target_id]=12`, which also works when `prepopulate` is enabled.

## What the module does

```php
// og_prepopulate.module
function og_prepopulate_field_widget_og_complex_form_alter(&$element, FormStateInterface $form_state, $context) {
  if ($form_state->isRebuilding()) { return; }              // step 2+ of a multi-step form
  $field = $context['items'];                                // FieldItemList
  if (\Drupal::request()->query->has($field->getName())) {
    $element['#after_build'][] = 'og_prepopulate_after_build';
  }
  elseif (!$field->isEmpty()) {
    $element['#access'] = FALSE;                             // already set -> hide the widget
  }
}

function og_prepopulate_after_build($element) {
  $field_name = reset($element['#parents']);
  $entity_id = \Drupal::request()->query->get($field_name);
  \Drupal::service('og_prepopulate.populator')
    ->populateForm($element, ['target_id' => $entity_id]);
  return $element;
}
```

Only the `og_complex` widget is targeted (`hook_field_widget_WIDGET_TYPE_form_alter`), so an OG
audience field configured with a plain `entity_reference_autocomplete` widget falls back to the
parent module's behaviour.

## Service

```yaml
# og_prepopulate.services.yml
og_prepopulate.populator:
  class: Drupal\og_prepopulate\Populate
  arguments: ['@request_stack', '@entity_type.manager', '@module_handler', '@current_user']
```

`Drupal\og_prepopulate\Populate extends Drupal\prepopulate\Populate` and overrides exactly one
method:

```php
protected function formatEntityAutocomplete($value, array &$element): string {
  $entity = $this->entityTypeManager->getStorage($element['#target_type'])->load($value);
  if ($entity && Og::isMember($entity, $this->currentUser->getAccount())) {
    $element['#value']  = "{$entity->label()} ($value)";
    $element['#access'] = FALSE;          // fill AND hide
    return "{$entity->label()} ($value)";
  }
  return $value;                          // not a member -> raw id, widget stays visible
}
```

So the behavioural differences from the parent are:

| | `prepopulate` | `og_prepopulate` |
|---|---|---|
| Access check | `$entity->access('view label')` | `Og::isMember($entity, $account)` |
| On success | sets `#value` | sets `#value` **and** `#access = FALSE` |
| Trigger | any `edit[...]` query param | `?<field_name>=<id>` on an `og_complex` widget |

Everything else (the 18-type whitelist, `Html::escape()`, never overwriting an existing scalar
`#value`, skipping `#access: FALSE` elements) is inherited unchanged — see the parent's
[api/populate-service.md](../../../../2.5.x/agent/api/populate-service.md).

## Extending it

Subclass `Drupal\og_prepopulate\Populate` and override `formatEntityAutocomplete()` to use a
different membership/permission rule, then point your own service at the class and call it from
your own `#after_build`.
