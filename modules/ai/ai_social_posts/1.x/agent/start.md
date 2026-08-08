<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Social Posts (ai_social_posts) — agent index

Content entity for **social posts**, published to many platforms (X, LinkedIn, Facebook, Instagram,
Reddit, TikTok, YouTube, Bluesky, Medium, Substack, …) via **16 per-platform submodules**. Version **1.0.0**.

**Security:** each platform needs API **tokens that can post as your accounts** — keep out of plain
config (Key/env), protect as posting credentials. AI-assisted content uses an AI provider key +
sends data out. Publishing is outward-facing — **confirm what auto-posts and to which accounts**.
Enable only the platform submodules you use.