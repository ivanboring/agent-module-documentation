<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Canvas API integrates the Canvas LMS API with Drupal.

---

Canvas API **integrates the Canvas LMS API** — connecting Drupal to Canvas (the learning-management system) to
read/sync course and user data. It depends on the Canvas LMS module and stores credentials via the **Key** module.

Use it to integrate Canvas LMS. It is an education/integration feature. Security/data handling: it **calls the
Canvas API** (egress — course/student data can be **educational PII/FERPA-relevant**; disclose per policy) and
authenticates with **credentials/API tokens stored via the Key module** (secret handling, a positive) over HTTPS.
It has no access-control role. Configure the Canvas credentials (via Key).

---

- Integrate the Canvas LMS API.
- Read/sync course + user data.
- Connect Drupal to Canvas.
- Depend on Canvas LMS + store credentials via Key.
- Serve education/integration.
- Use the Canvas API.
- Call the Canvas API (egress; educational PII/FERPA - disclose).
- Store credentials/tokens via Key (positive), HTTPS.
- Have no access-control role.
- Configure the Canvas credentials via Key.
- Handle Canvas.
- Sync courses.
- Configure the client.
- Read Canvas.
- Handle the integration.
- Fetch data.
- Configure Canvas.
- Handle the API.
- Secure the credentials via Key.
- Provide Canvas integration.
