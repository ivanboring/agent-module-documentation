<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Address Autocomplete (with Photon API) provides an autocomplete field for the Address module, backed by the open-source Photon geocoding API.

---

Address Autocomplete (with Photon API) adds type-ahead autocomplete to Address-module fields, backed
by Photon — an open-source geocoder built on OpenStreetMap data. As users type an address, Photon
suggests matches that populate the address fields. It depends on the Address module, is configured at
`address_autocomplete_photon.configure`, provides its own permissions, and ships a geofield submodule.

Use it to speed up and standardize address entry with a self-hostable, open geocoder (an alternative to
Google Places). The security/privacy-relevant point is the Photon endpoint: if you point it at a public
Photon instance, the partial addresses users type are sent to that third party — for privacy or reliability
prefer self-hosting Photon, and if the endpoint requires a key, store it as a secret. It is a
fields/integration feature; address data is user input rendered normally.

---

- Autocomplete addresses via Photon.
- Suggest addresses as users type.
- Use an open-source geocoder.
- Back autocomplete with OpenStreetMap.
- Depend on the Address module.
- Configure the Photon endpoint.
- Provide its own permissions.
- Populate address fields from suggestions.
- Self-host Photon for privacy.
- Know typed addresses go to the endpoint.
- Prefer self-hosting over a public instance.
- Ship a geofield submodule.
- Alternative to Google Places.
- Standardize address entry.
- Speed up address forms.
- Store any endpoint key as a secret.
- Handle address input normally.
- Configure at the settings form.
- Improve address UX.
- Geocode via Photon.
