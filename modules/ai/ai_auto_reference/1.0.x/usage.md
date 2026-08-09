<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Auto-reference automatically sets or suggests references to other content entities.

---

AI Auto-reference uses **AI to automatically set or suggest entity references** — analysing content and
proposing/filling reference fields that point to related content entities (e.g. related articles, topics),
reducing manual cross-linking. It depends on the AI module and core Node, provides its own permissions, in the
AI Auto-reference package.

Use it to auto-link related content with AI. It is an AI/content feature. Security/data handling: it **sends
content to the configured AI provider** to compute references (external data egress if the provider is
cloud-based — confirm acceptable), and any AI **credentials** are handled via the AI module (store as secrets).
It suggests references (still governed by the reference field's normal handling); its permission gates who can
use it. Configure the AI reference behaviour.

---

- Suggest/set entity references with AI.
- Auto-link related content.
- Reduce manual cross-linking.
- Depend on the AI module and Node.
- Send content to the AI provider (egress).
- Confirm the egress is acceptable.
- Handle AI credentials as secrets.
- Provide its own permissions.
- Gate who can use it.
- Configure the AI reference behaviour.
- Handle AI references.
- Suggest references.
- Configure the AI.
- Handle the integration.
- Link content.
- Configure references.
- Handle auto-reference.
- Suggest links.
- Set references.
- Provide AI auto-reference.
