<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Address Decoupled adds decoupled functionality for the Address module, exposing address data/behaviour over REST for headless front ends.

---

Address Decoupled adds decoupled/headless support for the Address module — exposing address data and
supporting behaviour (country/subdivision metadata, formatting) over REST so a decoupled front end (React,
Next.js, etc.) can render and validate addresses correctly without the Drupal-rendered forms. It depends
on core Address and REST and ships an `address_decoupled_commerce` submodule for Commerce.

Use it on decoupled sites that collect or display addresses and need the Address module's country/format
data client-side. It is a decoupled/web-services feature exposing address metadata; ensure the exposed
REST resources are appropriately access-controlled as with any API surface. Configure the REST endpoints
and consume them from the front end.

---

- Expose Address data over REST.
- Support decoupled address entry.
- Provide country/subdivision metadata to the front end.
- Render addresses in a headless UI.
- Validate addresses client-side.
- Depend on Address and REST.
- Use the address_decoupled_commerce submodule.
- Access-control the REST resources.
- Support React/Next.js front ends.
- Format addresses in a decoupled UI.
- Expose address metadata.
- Consume endpoints from the front end.
- Provide address behaviour headlessly.
- Configure REST endpoints.
- Handle addresses in decoupled sites.
- Serve address formats via API.
- Support Commerce decoupled addresses.
- Enable headless address forms.
- Deliver address data to JS.
- Decouple the Address module.
