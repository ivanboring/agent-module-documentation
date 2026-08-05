<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Zoom API (zoomapi) — agent index

Developer module: a Zoom.us API client via **API Tools** plus a verified webhook endpoint that
dispatches Drupal events. Requires contrib `apitools`. Config is API Tools' client form
(`configure: apitools.client_config_form.zoomapi`). No permissions of its own, no Drush.

Key facts:
- Route **`zoomapi.webhooks`** — `/zoomapi-webhooks`, **`methods: [POST]`**,
  controller `ZoomApiWebhooksController::capture()`, `options: no_cache: 'TRUE'`.
- Access is `_custom_access: ZoomApiWebhooksController::authorize`:

  ```php
  if ($this->hasHeader($request, 'x-zm-signature') && !empty($this->webhookSecretToken)) {
    if ($this->getHeader($request, 'x-zm-signature') === $this->createSignature($request)) {
      return AccessResult::allowed();
    }
  }
  $this->logger->notice('The Zoom API webhook post could not be verified with the Event Secret Token…');
  return AccessResult::forbidden();
  ```

  So: **no secret token configured → every webhook is rejected** (fail closed, good), and a
  mismatch is logged. Note the comparison is `===` rather than `hash_equals()` — not
  constant-time; low practical risk for an HMAC over a request body, but worth knowing.
- Events: `Event\ZoomApiWebhookEvent` (extends Symfony `Event`) with `getPayload()`,
  `getEvent()` (the Zoom event name) and `getRequest()`. Subscribe to it from your own module:

  ```php
  public static function getSubscribedEvents(): array {
    return ['zoomapi.webhook' => 'onZoomWebhook'];   // check ZoomApiWebhookEvent for the exact name
  }
  ```

- `ZoomapiServiceProvider` registers/alters the API Tools client service;
  `zoomapi.services.yml` holds the rest.

Setup:

```bash
drush en apitools zoomapi -y
# Configure credentials + Event Secret Token at the API Tools client form:
drush php:eval 'print \Drupal\Core\Url::fromRoute("apitools.client_config_form.zoomapi")->toString();'
# Point Zoom's webhook at:  https://example.com/zoomapi-webhooks
```

Caution: `apitools` has been skip-listed elsewhere in this campaign for fatals on some
Symfony 7/Drupal 11 combinations — verify the client loads before relying on this module.
