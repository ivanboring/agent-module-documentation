<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Address Autocomplete (Photon) — agent index

Address **autocomplete for the Address module** via the open-source **Photon** (OpenStreetMap) geocoder.
Depends on `address`. Config at `address_autocomplete_photon.configure`; provides permissions;
`address_autocomplete_photon_geofield` submodule. Version **1.4.0**. Core `^10.3||^11||^12`.

**Privacy:** a public Photon instance receives the addresses users type — prefer self-hosting; store any
endpoint key as a secret.
