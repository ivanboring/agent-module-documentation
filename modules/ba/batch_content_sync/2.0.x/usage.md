<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Batch Content Sync enables push and receive operations for full Drupal content entities between environments, supporting nested structures and base64-encoded media.

---

Batch Content Sync enables pushing and receiving full Drupal content entities — nodes, media,
paragraphs, including nested entity structures and base64-encoded media — between environments (e.g. staging
→ production), for content deployment/migration. It is in the Migration/content-staging space.

Use it to move content between environments. Security-relevant points: it transfers content entities between
sites, which involves an **endpoint/connection between environments** — that channel must be
**authenticated** (only trusted environments should be able to push/receive content, or an attacker could
inject content) and operate over **HTTPS**; store any connection credentials/tokens as secrets. Because it
imports full entities (including media as base64), treat received content as coming from the source
environment (trust the source). It has no access-control role of its own. Configure the sync endpoints and
credentials.

---

- Push/receive content entities between environments.
- Sync nodes/media/paragraphs.
- Support nested structures + base64 media.
- Deploy content across environments.
- Authenticate the sync endpoint/channel.
- Operate over HTTPS.
- Store connection credentials as secrets.
- Allow only trusted environments to push/receive.
- Treat received content per source trust.
- Have no access-control role of its own.
- Configure the sync endpoints.
- Move content across sites.
- Handle content deployment.
- Configure credentials.
- Sync content entities.
- Transfer content securely.
- Handle content sync.
- Deploy content.
- Configure the sync.
- Sync between environments.
