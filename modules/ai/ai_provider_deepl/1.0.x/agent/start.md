<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# DeepL Provider (ai_provider_deepl) — agent index

**DeepL** provider for Drupal's **`ai`** module, aimed at translation. Requires `ai` and **`key`**.
Settings at `/admin/config/…/ai_provider_deepl`. Version **1.0.0-alpha3** — **alpha**.
Core requirement `^10.2 || ^11`.

**The distinction that governs how to think about this: first draft versus published output.**
- **First draft** — a translator working from a good machine draft is substantially faster than one
  starting from nothing, and the draft is **reviewed before anyone reads it**. Defensible.
- **Published raw** — the organisation has committed to whatever the model produced, in a language
  nobody on the team reads, permanently and under its own name.

DeepL is generally regarded as the strongest general-purpose engine for **European language pairs**,
and is a **German** company processing in the **EU** — which matters for the same reasons
`ai_provider_mistral` (same wave) does.

**Three things to attach:**
1. **The content being translated leaves the site.** Unpublished material, personal data in
   examples, anything under embargo — a disclosure to a processor, and it belongs in the assessment.
2. **Terminology is where machine translation fails an organisation.** Its own terms, product names
   and legal phrasing are exactly what a general engine gets wrong. **DeepL supports glossaries** —
   use them rather than accepting the default vocabulary.
3. **Translated content is content** — same review, revision history and ownership. A workflow
   writing machine output straight into a translation has skipped the part that makes it acceptable.
