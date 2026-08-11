<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
COOKiES Media Entity Facebook brings media_entity_facebook embeds under COOKiES consent management.

---

COOKiES Media Entity Facebook is a submodule of the COOKiES consent framework that manages Facebook media items (provided by the media_entity_facebook module) so that embedded Facebook content is only loaded after the visitor grants the relevant cookie consent — keeping third-party Facebook embeds GDPR-compliant.

It's a consent-integration glue module with no access role of its own. Depends on `cookies` and `media_entity_facebook`; supports Drupal 9.3+, 10, and 11.

---

- Gate Facebook embeds behind consent.
- Integrate media_entity_facebook with COOKiES.
- Load embeds after consent.
- Support GDPR compliance.
- Manage third-party Facebook content.
- Depend on `cookies`.
- Depend on `media_entity_facebook`.
- Support Drupal 9.3+, 10, and 11.
- Carry no access role.
- Act as consent glue.
- Block embeds until allowed.
- Respect visitor privacy.
- Integrate with consent management.
- Configure per media type.
- Handle Facebook media items.
- Comply with privacy law.
- Defer third-party loading.
- Support consent-gated media.
