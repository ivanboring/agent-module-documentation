<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Acquia Content Hub unsubscribe content (acquia_contenthub_unsubscribe_checkbox) — agent index

**Adds an editor checkbox that excludes a subscriber entity from Acquia Content Hub auto-updates.**

- **Version:** 3.1.x  •  **Core:** ^8.8 || ^9 || ^10 || ^11  •  **Package:** Acquia ContentHub
- **Depends on:** acquia_contenthub, acquia_contenthub_unsubscribe
- **No routes / permissions / config of its own.** Pure `hook_form_alter` + submit handler.
- **Key services used:** `acquia_contenthub.client.factory`, `acquia_contenthub.configuration`, `acquia_contenthub_subscriber.tracker`.

**Security:** no endpoints or permissions; behaviour rides on the host entity form's existing access. No security-relevant surface of its own.
