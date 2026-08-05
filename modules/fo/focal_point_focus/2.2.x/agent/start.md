<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Focal Point Focus (focal_point_focus) — agent index

Applies an image's Focal Point as CSS **`object-position`**. Depends on `focal_point`.
Core requirement `^10 || ^11`.

Key facts:
- **The gap it fills:** Focal Point drives *derivative* cropping, which needs the output size known
  in advance. Where an image fills a flexible container with `object-fit: cover`, the **browser**
  crops — from the centre, ignoring the focal point — so subjects get cut off exactly as the
  focal point was set to prevent. This carries the point through to CSS.
- **Practical payoff:** one derivative serves many container shapes correctly, so fewer image
  styles and less derivative storage than generating a crop per aspect ratio.
- The three levers for editor-controlled cropping, all documented in this campaign, operate at
  different points: **`focal_point`** (where the subject is),
  **`image_scale_and_crop_without_upscale`** (wave 63 — never enlarge), and **this** (browser-side
  positioning).
