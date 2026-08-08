<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Content Suggestions passes content to a configured AI provider to suggest alternatives — titles, summaries, tone, translations — inside the editing experience.

---

Editors often want a second opinion: a punchier title, a summary, a tone adjustment. AI Content Suggestions sends the content to a configured AI provider and surfaces suggestions in the editor. It builds on the AI module ecosystem. The considerations are the standard AI ones: the provider API key is a credential (keep it out of plain config), and content sent for suggestions leaves your infrastructure to the AI provider — a governance decision for anything confidential. Suggestions are drafts an editor accepts, so the output passes through normal content handling.

---

- Suggest a better title with AI.
- Generate a summary.
- Adjust content tone.
- Get AI editing suggestions.
- Suggest alternatives in the editor.
- Keep the AI key out of git.
- Send only non-sensitive content to AI.
- Use the AI module providers.
- Accept or reject suggestions.
- Improve editorial quality.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Keep setup minimal.
- Verify theme fit.
- Audit access.
- Match your use case.
- Confirm compatibility.