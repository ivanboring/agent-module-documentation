<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AI Playwright gives AI agents a screenshot/text/console view of the site's own pages via headless Chromium.

---

AI Playwright gives Drupal AI Agents 'eyes' on a rendered page: a Playwright headless-Chromium tool that opens a page of this site and returns a screenshot, title, visible text and console errors, so the Drupal Canvas AI assistant can see and verify what it builds. It is config-driven and framework-agnostic.

It renders pages of this site (config-driven base) via a headless browser subprocess; usage is gated by `use ai playwright` and admin by `administer ai playwright`. Keep the Playwright/runner environment trusted. Depends on `ai`, `ai_agents`, and core `file`; requires Drupal 11.2+.

---

- Render pages in headless Chromium.
- Return screenshot/title/text/console.
- Give AI agents page 'vision'.
- Verify what the assistant builds.
- Open pages of this site (config-driven).
- Be framework-agnostic.
- Gate usage with `use ai playwright`.
- Gate admin with `administer ai playwright`.
- Keep the runner environment trusted.
- Depend on `ai`, `ai_agents`, core `file`.
- Require Drupal 11.2+.
- Support the Canvas AI assistant.
- Capture rendered output
- Configure the runner
- Support agent verification.
- Run Playwright.
- Screenshot pages.
- Support AI agents
