<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Crawlers cache context provides a cache context so rendered output can vary depending on whether the visitor is a detected crawler/bot.

---

Crawlers cache context provides a Drupal cache context keyed on whether the current request is from a
detected crawler/bot — so render output (and caching) can vary for crawlers versus regular visitors. This
lets code/blocks conditionally render differently for search-engine crawlers (e.g. serve a simplified
version, or omit interactive elements) while caching each variant appropriately.

Use it where content should legitimately differ for crawlers. It is a performance/caching primitive
enabling crawler-aware rendering. Note: crawler detection is user-agent-based (a heuristic that can be
spoofed), and varying content for crawlers must be done carefully to avoid **cloaking** (showing search
engines materially different content than users, which search engines penalize) — use it for benign
variations, not to deceive crawlers. It has no access-control role.

---

- Vary output for detected crawlers.
- Provide a crawler cache context.
- Cache crawler vs visitor variants.
- Render differently for bots.
- Serve simplified crawler output.
- Enable crawler-aware rendering.
- Know detection is user-agent-based.
- Avoid cloaking (SEO penalty).
- Use for benign variations only.
- Have no access-control role.
- Cache each variant appropriately.
- Detect crawlers heuristically.
- Condition rendering on crawlers.
- Support crawler-specific caching.
- Vary blocks for crawlers.
- Handle bot detection in cache.
- Provide a caching primitive.
- Not deceive crawlers.
- Render crawler variants.
- Cache by crawler status.
