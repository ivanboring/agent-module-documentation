<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Crawlers cache context — agent index

Cache context keyed on **detected crawler/bot** — render output/caching can vary for crawlers vs visitors.
Version **8.x-1.1**. Core `^8||^9||^10||^11`.

Performance/caching primitive. Detection is **user-agent heuristic** (spoofable); **avoid cloaking** (SEO
penalty for showing crawlers materially different content) — benign variations only. No access role.
