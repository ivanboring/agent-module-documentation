<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
DropWatch is a client module to send data to DropWatch.

---

DropWatch is a client module that sends data to the DropWatch service — reporting site information/
telemetry (monitoring, health, or similar) to DropWatch's platform for centralized oversight. It provides its
own permissions, in the DropWatch package.

Use it to report site data to DropWatch. Security note: it connects to the DropWatch service with a
credential/token — **store that as a secret** and operate over HTTPS; be mindful of what site data is sent
(avoid sending sensitive data). It has no access-control role beyond its permission. Configure the DropWatch
connection.

---

- Send site data to DropWatch.
- Report telemetry/monitoring data.
- Connect to the DropWatch service.
- Provide its own permissions.
- Store the DropWatch token as a secret.
- Operate over HTTPS.
- Mind what data is sent.
- Avoid sending sensitive data.
- Have no access-control role beyond permission.
- Configure the DropWatch connection.
- Report site info.
- Handle telemetry.
- Send monitoring data.
- Configure the client.
- Handle credentials securely.
- Connect to DropWatch.
- Send data.
- Report data.
- Configure DropWatch.
- Handle reporting.
