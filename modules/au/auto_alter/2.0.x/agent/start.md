<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Automatic Alternative Text (auto_alter) — agent index

Generates image **alt text** via a vision service (Microsoft Cognitive Services Computer Vision or
Alttext.ai). Depends on core `image`. Core requirement `^9 || ^10 || ^11`.
Settings at `admin/config/media/auto_alter`, permission
`administer Automatic Alternative Text`. Submodule: `auto_alter_translate`.

Key facts:
- Providers are pluggable (`DescribeImageServiceInterface`, `src/Plugin/`, plugin manager); the
  credentials layer is `src/AutoAlterCredentials.php`. API keys are secrets — keep them in an
  environment variable per this repo's convention, not in exported config.
- **Three things to say when recommending it:**
  1. *Generated alt text is a draft, not a decision.* Vision services describe **what is in** an
     image; good alt text conveys **why it is there**. A decorative image should have empty alt,
     not a description — an automated describer will never conclude that. Keep a human in the loop.
  2. *It is billed per image*, so access to generation is a spending control.
  3. *Images are sent to a third party.* For unpublished, embargoed or sensitive imagery that is a
     data-flow decision, not a technical one.
- Compare `ai_media_image` (wave 63): that one *creates* images from prompts via the `ai` module;
  this one *describes* existing images via its own provider layer. Different problems, both AI,
  both per-call cost.
