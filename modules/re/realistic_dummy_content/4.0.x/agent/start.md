<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Realistic Dummy Content (realistic_dummy_content) — agent index

Generates **plausible** demo content from a directory of supplied images and text, rather than
lorem ipsum. Submodule `realistic_dummy_content_api` provides the mechanism. Package `Development`,
tagged `developer`. Version **4.0.0-beta1** — beta. Core requirement `^10 || ^11`.

**Its own description says: "Do not enable on production sites." That is the operative
instruction.** A content generator on a live site is one mistaken command away from thousands of
entities that then have to be identified and removed. **Keep it in `require-dev`** so it cannot be
enabled where it does not belong, and pair it with a way to remove what it created. Content
generators are a standing item on any inherited-site audit.

**Why plausible content beats placeholder content — this is the argument to make:**
- a design reviewed against `Bfjkl Qwerty Xzcv` and a grey box is **a design nobody has seen**. Real
  headlines are longer than the mock, real photographs are the wrong aspect ratio, real names break
  the column — all discovered after launch, when the content arrives;
- a stakeholder shown placeholder text is asked to **imagine** the product; one shown plausible
  content is **looking at it**.

Because the source material is supplied per site, the content resembles **this** site's content
rather than generic filler.
