<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# CRM — agent index

Native **Contact Relationship Management** — contact entities (configurable types via
`entity.crm_contact_type.collection`) storing names/addresses/phone/email/relationships. Built on
`address`, `name`, `telephone`, `inline_entity_form`, `primary_entity_reference`. Provides **Drush
commands** + permissions. Version **1.0.0-beta11**. Core `>=11.1`.

**Security:** CRM data is **PII** — permission-gate contact access tightly (only appropriate staff);
privacy/retention/consent (GDPR) apply. Verify the access model.
