<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LLMs.txt Generator (llms_txt_generator) — agent index

**Generates** `/llms.txt` from site content. No dependencies. Core requirement `^9 || ^10 || ^11`.
**Release is 1.0.0-alpha1 — alpha.**
Settings at `/admin/config/search/llms-txt-generator`, permission
**`administer llms txt generator`** (`restrict access: true`).

Key facts:
- **Two llms.txt modules in this campaign — distinguish them:**

  | Module | Approach |
  |---|---|
  | `llmstxt` (wave 62) | hand-written content stored as **configuration** |
  | **this one** | **generated from site content**, so it stays current |

  Choose by whether the file should be curated prose or a live listing.
- **Same two caveats as `llmstxt`:** the convention is a **proposal, not a standard** with partial
  adoption, and it is **advisory** — it expresses a preference and enforces nothing. A site that
  needs to prevent AI scraping needs access control.
- **A third caveat specific to generation:** the point of the file is *curation*. Check what the
  generator includes — a listing of everything provides no more guidance than a sitemap.
