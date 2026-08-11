<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AT-LS connects Drupal to the AT-LS translation service with queued translation requests.

---

AT-LS provides integration with the AT-LS translation platform — managing translation requests (with a translation-request entity and string entities) processed via Advanced Queue, so content/interface strings can be sent to AT-LS for translation and results imported back, supporting multilingual workflows.

AT-LS credentials are stored via the Key module (env-backed), and it uses basic_auth for API calls. Permissions cover the request form, configuration, and administering strings/requests. Depends on `advancedqueue`, core `basic_auth`/`content_translation`/`views`, `entity`, `json_field`, `key`, `state_machine`, and more; supports Drupal 9, 10, and 11.

---

- Integrate the AT-LS translation service.
- Manage translation requests.
- Process via Advanced Queue.
- Send strings/content for translation.
- Import results back.
- Store credentials via Key (env-backed).
- Use basic_auth for API calls.
- Gate the request form + configuration.
- Administer strings/requests.
- Depend on `advancedqueue`, core `basic_auth`/`content_translation`.
- Depend on `entity`/`json_field`/`key`/`state_machine`.
- Support Drupal 9, 10, and 11.
- Support multilingual workflows.
- Queue translations.
- Handle translation state
- Configure the connection
- Keep credentials secure
- Translate strings
