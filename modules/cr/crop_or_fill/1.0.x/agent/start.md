<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Crop or Fill (crop_or_fill) — agent index

**Image effect: crop when orientations match, pillarbox onto a color when they differ.**

- **Version:** 1.0.x  **Core:** ^10.3 || ^11  **Depends:** crop
- **Effect:** `@ImageEffect` `crop_or_fill` extends Crop's `CropEffect` (`src/Plugin/ImageEffect/CropOrFillEffect.php`); adds `bgcolor` (default `#ffffff`).
- **Logic:** no/free-form ratio or same orientation → parent crop; opposite orientation → `applyPillarbox()` onto a colored canvas. Toolkit ops for `gd` and `imagemagick` (+ `PillarboxTrait`).
- **Config:** added per image style at *Configuration → Media → Image styles*. No routes/permissions.
- **Security:** image-processing effect only; no user-facing endpoints. No security findings.
