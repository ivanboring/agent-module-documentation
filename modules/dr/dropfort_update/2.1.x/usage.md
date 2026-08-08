<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Dropfort Update sends update information (installed modules/versions and available updates) to a Dropfort dashboard for centralized monitoring.

---

Dropfort Update reports the site's update information — installed modules/themes, their versions, and
available updates — to a Dropfort dashboard, so an organization managing many Drupal sites can monitor
update status centrally. It depends on core Update, is configured at `dropfort_update.settings`, and
provides its own permissions.

Use it where Dropfort is used to track Drupal update status across sites. The data-relevant point is that
it transmits the site's module/version inventory to the Dropfort service — store any Dropfort API
credentials as secrets, and be aware that a detailed inventory of installed modules and versions is itself
sensitive (it reveals the site's exact attack surface), so the connection should be authenticated and the
recipient trusted. It is a monitoring/integration feature; configure the Dropfort connection.

---

- Report update info to Dropfort.
- Send installed modules/versions.
- Monitor updates centrally.
- Depend on core Update.
- Configure at dropfort_update.settings.
- Provide its own permissions.
- Track update status across sites.
- Store Dropfort credentials as secrets.
- Know the inventory reveals attack surface.
- Authenticate the connection.
- Transmit version data.
- Trust the Dropfort recipient.
- Support fleet update monitoring.
- Send available-updates data.
- Configure the Dropfort connection.
- Monitor many sites.
- Report module versions.
- Handle credentials securely.
- Centralize update tracking.
- Send update inventory.
