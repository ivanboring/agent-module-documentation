<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CRM Core Commerce handles contact creation in CRM Core after a Commerce order is placed.

---

CRM Core Commerce bridges Drupal Commerce and CRM Core: after an order is placed, it creates or updates the corresponding CRM Core contact, so customer records in the CRM stay in sync with commerce activity. It ties purchases to CRM contact profiles.

It's an integration module with no access role of its own. Depends on `crm_core`, `crm_core_contact`, `crm_core_user_sync`, and Commerce `commerce_order`; supports Drupal 9, 10, and 11.

---

- Create CRM contacts from orders.
- Sync commerce activity to CRM Core.
- Update contacts after checkout.
- Tie purchases to CRM profiles.
- Keep customer records in sync.
- Depend on `crm_core` and `crm_core_contact`.
- Depend on `crm_core_user_sync`.
- Depend on Commerce `commerce_order`.
- Support Drupal 9, 10, and 11.
- Carry no access role.
- Bridge Commerce and CRM Core.
- Handle contact creation.
- Support CRM workflows.
- Map orders to contacts.
- Integrate commerce and CRM.
- Maintain contact data.
- Track customers in CRM.
- Sync on order placement.
