<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Editoria11y adds "Fix with AI" buttons to Editoria11y.

---

AI Editoria11y adds **"Fix with AI" buttons to Editoria11y** accessibility checks — letting editors ask an
AI (via the AI module and its CKEditor integration) to suggest fixes for flagged accessibility issues (e.g.
rewrite alt text, fix headings). It depends on Editoria11y, core CKEditor 5, the AI module and AI CKEditor,
provides its own permissions, in the Editoria11y package.

Use it to AI-assist accessibility remediation. It is an AI/accessibility feature. Security/data handling: it
**sends content to the configured AI provider** (via the AI module — external egress; confirm acceptable and
that the provider **API key** is stored as a secret in the AI module's Key config), and AI suggestions should be
**reviewed** before applying (don't blindly trust generated fixes). It has no access-control role beyond its
permission. Configure the AI provider and enable the buttons.

---

- Add Fix-with-AI to Editoria11y.
- Suggest AI accessibility fixes.
- Rewrite alt text/headings.
- Depend on Editoria11y/AI/CKEditor.
- Provide its own permissions.
- Assist remediation.
- Send content to the AI provider (egress).
- Store the provider API key as a secret (AI/Key).
- REVIEW AI suggestions before applying.
- Have no access-control role beyond permission.
- Configure the AI provider.
- Handle AI a11y fixes.
- Fix accessibility.
- Configure the buttons.
- Suggest fixes.
- Handle the integration.
- Assist editors.
- Fix a11y.
- Review suggestions.
- Provide AI accessibility fixes.
