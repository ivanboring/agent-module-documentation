<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Canvas LMS provides shared settings for the CanvasApi LMS integration modules.

---

Canvas LMS **provides shared settings for the Canvas API modules** — a small base module holding configuration
(base URL, shared options) used by the CanvasApi LMS integration modules (e.g. Canvas API), so they share one
Canvas connection configuration. It works across core 8–11.

Use it as the base for Canvas LMS integrations. It is an integration-foundation/settings module. Security/data
handling: it centralizes Canvas connection settings that other modules use to call the **Canvas LMS API** — keep
the Canvas base URL correct and store any credentials (via the consuming modules' Key integration) as secrets. It
has no access-control role. Configure the shared Canvas settings.

---

- Provide shared Canvas settings.
- Hold Canvas base URL/options.
- Underpin the Canvas API modules.
- Serve integration foundation/settings.
- Centralize Canvas config.
- Share one Canvas connection.
- Be used by other modules to call the Canvas LMS API.
- Keep the Canvas base URL correct.
- Store credentials (via consuming modules' Key) as secrets.
- Have no access-control role.
- Configure the shared Canvas settings.
- Handle Canvas settings.
- Set the base URL.
- Configure the settings.
- Share config.
- Handle the integration.
- Center Canvas config.
- Provide settings.
- Secure the credentials.
- Provide Canvas shared settings.
