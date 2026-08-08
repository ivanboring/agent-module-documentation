<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Big Blue Button provides BBB integration into Drupal as a field.

---

Big Blue Button integrates BigBlueButton — the open-source web-conferencing/virtual-classroom system —
into Drupal as a field, so content can host/join BBB meetings and manage recordings. It is configured at
`bigbluebutton.settings` and provides its own permissions, in the Other package.

Use it to add BBB meetings to content. Security handling is correct: BBB's API is authenticated by a
**shared secret** — the module builds signed API URLs with that secret (`BBB`/`UrlBuilder`, the standard BBB
SHA-checksum signing), so API calls to the BBB server are authenticated. Store the **BBB shared secret
securely** (it authenticates all API calls; treat it as a credential), operate over HTTPS to the BBB server,
and gate meeting creation/recording management with its permissions. It has no other access-control role.
Configure the BBB server URL and secret.

---

- Integrate BigBlueButton conferencing.
- Host/join BBB meetings from content.
- Manage BBB recordings.
- Provide a BBB field.
- Configure at bigbluebutton.settings.
- Provide its own permissions.
- Sign API calls with the BBB shared secret.
- Store the BBB secret securely (a credential).
- Operate over HTTPS to the BBB server.
- Gate meeting/recording management by permission.
- Have no other access-control role.
- Configure the BBB server URL.
- Authenticate BBB API calls.
- Handle the shared secret securely.
- Configure the connection.
- Add BBB meetings.
- Handle conferencing.
- Configure BBB.
- Manage recordings.
- Integrate BBB.
