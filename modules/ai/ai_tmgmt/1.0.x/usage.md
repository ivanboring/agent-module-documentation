<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Translator makes any provider configured in the **AI** module available to **TMGMT** as a translator, so machine translation can be driven by an LLM inside Drupal's established translation-management workflow.

---

TMGMT is the mature translation-management framework: jobs, job items, review, acceptance, and a translator plugin per service — historically the commercial translation vendors and the machine-translation APIs. This module adds a translator backed by the AI module, which means whichever LLM the site has configured, including a locally hosted one through Ollama. That last point is the interesting one: the usual objection to machine translation of unpublished content is that it leaves the building, and a local model removes that objection entirely while keeping the same workflow. Configuration is through TMGMT's own translator collection (`entity.tmgmt_translator.collection`), so there is no separate admin surface; `src/Plugin` supplies the translator plugin. Requirements are `ai ^1.0.4` and `tmgmt ^1.16`, with core `^10 || ^11`; the release is **1.0.0-beta6**. Three things belong in a recommendation: LLM translation is a **draft for review**, and TMGMT's review step is exactly the right place to enforce that; hosted providers bill per token, so job size is a cost; and quality varies sharply by language pair, so evaluate on the actual pairs rather than on a demo.

---

- Machine-translate content with an LLM.
- Use a local Ollama model for translation.
- Keep unpublished content in-house while translating.
- Drive translation from TMGMT jobs.
- Review AI translations before acceptance.
- Compare AI output with a vendor translation.
- Translate a backlog cheaply.
- Provide first-draft translations for editors.
- Use one AI provider across translation and other tasks.
- Route some languages to AI and others to humans.
- Estimate translation cost per job.
- Translate into a low-demand language.
- Keep the existing translation workflow.
- Test an LLM's quality per language pair.
- Reduce turnaround for internal content.
- Translate without sending data to a vendor.
- Support a phased translation programme.
- Add AI translation without new tooling.
