<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feed Tamper Read Time (feed_tamper_read_time) — agent index

**A Feeds Tamper plugin computing reading time (minutes) from HTML at a configurable WPM.**

- **Version:** 1.0.0 (dir 1.0.x)  •  **Core:** ^9 || ^10 || ^11  •  **Requires:** tamper
- **Plugin:** Tamper `feed_tamper_read_time` ("Read Time Calculator"). Setting: `wpm` (default 200, 50–1000).
- **Logic:** `ReadTimePlugin::tamper()` → extract text via DOMDocument/XPath (drops `<script>`/`<style>`) → word count / WPM → `ceil()` → minutes as string.
- **No routes, permissions, or services.**
- **Security:** Pure read-only transformation of the imported value; HTML is parsed only to extract text for counting. No output rendering, no request surface.
