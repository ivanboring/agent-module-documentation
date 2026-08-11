<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
BrAPI exposes plant-breeding data through the standard Breeding API (BrAPI) with token authentication.

---

Plant Breeding API (brapi) is a BrAPI server implementation for Drupal — exposing plant-breeding data (germplasm, studies, observations) through the standardized BrAPI REST specification, so breeding databases and tools can interoperate with a Drupal-backed data source.

The landing/documentation/token pages (`/brapi`, `/brapi/doc`, `/brapi/token`) are public by design, but data access uses BrAPI token authentication and permissions (`use brapi`, `edit brapi content`, `administer brapi`) — configure data-type access appropriately. Depends on core `datetime`; supports Drupal 9, 10, and 11.

---

- Implement a BrAPI server.
- Expose plant-breeding data.
- Follow the BrAPI REST spec.
- Serve germplasm/studies/observations.
- Support breeding-tool interoperability.
- Make landing/doc/token pages public.
- Use token auth for data access.
- Gate with `use brapi`/`edit brapi content`/`administer brapi`.
- Configure data-type access.
- Depend on core `datetime`.
- Support Drupal 9, 10, and 11.
- Serve a standard API.
- Support agricultural research
- Manage BrAPI content
- Provide token management.
- Interoperate with breeding DBs.
- Expose data via REST.
- Support breeding data
