# AI Social Posts — manual setup guide

**AI Social Posts** (`ai_social_posts`) gives you a single place in Drupal to
manage social media posts and publish them out to a wide range of platforms.
It provides a **social-post content entity** and then publishes that content to
each network through a **per-platform submodule** — so you enable only the
channels you actually use.

Out of the box it ships submodules for **X**, **LinkedIn** (posts and
articles), **Facebook**, **Instagram** (Reels and Story), **Reddit**,
**TikTok**, **YouTube** (and Shorts), **Bluesky**, **Medium**, **Substack**,
**Hacker News**, a **newsletter** channel, and an **example** module to learn
from — sixteen in all. Content creation is AI-assisted, drawing on the
CKEditor AI agent and the Analyze brand-voice/sentiment tooling it depends on.

Two security points matter here. First, **each platform integration needs that
platform's own API credentials or tokens**, and those tokens can post *as your
accounts* — treat them as sensitive posting credentials and keep them out of
plain configuration (use a Key entity or environment variables). Second,
AI-assisted content generation involves an AI provider key and sends data out to
that provider. And because publishing is an outward-facing action, **confirm
exactly what gets auto-posted and to which accounts** before you turn a channel
on — a misconfiguration posts to the wrong place in public.

This guide is written for a **human** clicking through the admin UI. If you want
terse, token-cheap references for an AI coding agent, read the sibling
[`agent/`](../agent/start.md) docs instead.

## Contents

1. [Installation](installation/index.md) — install the base module with
   Composer, enable it, and turn on only the platform submodules you need.

## Where it lives in the admin menu

The base module registers a **social-post content entity**, which you create and
manage from the site's content administration area (under **Content**). Each
per-platform submodule adds its own settings, where you enter that platform's
API credentials/tokens and choose how posts map to it. Enable a platform
submodule and its configuration surface appears; leave the rest disabled.

## How to use it

1. Enable the base module and only the platform submodules you intend to publish
   to (see [Installation](installation/index.md)).
2. For each enabled platform, obtain that platform's API credentials/tokens and
   store them securely (Key entity or environment variables — never plain
   config), then enter them in that submodule's settings.
3. Create a social-post entity, use the AI-assisted editing to draft the copy,
   and publish it to the connected platform(s).
4. Before going live, **confirm what will auto-post and to which accounts**, and
   test with a low-risk account first. Keep every platform token and the AI
   provider key protected as posting credentials.
