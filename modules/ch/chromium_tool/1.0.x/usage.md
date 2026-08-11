<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Chromium Tool exposes a headless Chromium service for tasks like URL screenshots.

---

Chromium Tool allows you to use Chrome/Chromium as a tool — providing a service layer (browser factory, screenshotter) so other modules/code can drive a headless Chromium to render pages, take screenshots, and perform browser-based tasks. It's a base service, integrating with the AI module.

The screenshot service takes a URL from its caller (the calling code is responsible for restricting URLs — a headless browser fetching arbitrary URLs is SSRF-relevant), and the Chrome executable path is admin-configured (`administer site configuration`). Keep the runner environment trusted. Depends on `ai` and core `image`; supports Drupal 10 and 11.

---

- Provide a headless Chromium service.
- Render pages / take screenshots.
- Serve as a base tool for other modules.
- Drive Chrome/Chromium.
- Integrate with the AI module.
- Take a caller-supplied URL (SSRF-relevant).
- Make callers restrict URLs.
- Configure the Chrome path (admin).
- Keep the runner environment trusted.
- Depend on `ai` and core `image`.
- Support Drupal 10 and 11.
- Support browser tasks.
- Screenshot pages
- Configure the executable
- Provide browser services.
- Support automation.
- Handle Chromium.
- Aid rendering
