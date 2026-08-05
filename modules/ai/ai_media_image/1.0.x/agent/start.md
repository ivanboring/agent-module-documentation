<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# AI Media Image (ai_media_image) — agent index

Adds **"Generate Image with AI"** to media image creation, producing a media entity from a text
prompt. Depends on the **`ai`** module and core `media_library`.
Core requirement `^10.2 || ^11`. **Release is 1.0.0-alpha4 — alpha.**

| Surface | Detail |
|---|---|
| Settings | `/admin/config/ai/ai_media_image`, permission **`administer ai`** (AI module's) |
| Editorial permission | **`generate image with ai`** — who sees the option on media forms |

Key facts:
- The **provider and API key live in the `ai` module**, not here. Model choice, credentials and
  quota are configured once there; this module only consumes them.
- **`generate image with ai` is a spending permission.** Each generation costs money at the
  provider. Treat granting it as a budget decision, not only an editorial one.
- **Three things to raise before adoption**, none of them code issues:
  1. *Cost per call*, as above.
  2. *Rights and retention* — provider terms differ on who owns generated output and whether
     prompts are retained for training. A legal question, not a module setting.
  3. *Alt text* — generated images arrive with none, and there is no source or photographer to
     describe. The accessibility obligation is unchanged and arguably harder.
- Generated results are ordinary media entities, so everything downstream (image styles, media
  library, usage tracking) works normally.
