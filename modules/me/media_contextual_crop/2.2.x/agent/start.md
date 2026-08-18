<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Contextual Cropping API (media_contextual_crop) — agent index

API making a crop a property of the **usage** rather than of the media entity.
Version **2.2.0**. Core `^11.4` only (Drupal 10 support dropped; requires a core patch
refactoring `ImageStyleDownloadController`). Depends on `crop` (`^2.3`), `field`.

Two plugin types: `MediaContextualCropPluginManager` (dir `Plugin/MediaContextualCrop`,
cropping mechanisms) and `MediaContextualCropUseCasePluginManager`
(dir `Plugin/MediaContextualCropUseCase`, contexts). `PathProcessor/PathProcessorImageStyles`
makes contextual derivatives addressable; `Controller/ContextualImageStyleDownloadController`
serves them at `/system/files/contextual/styles/{image_style}/{context}/{scheme}` reusing
core's image-derivative token/scheme/access checks.

**API module — nothing visible on its own.** A UI adapter supplies the interface; see
`media_contextual_crop_iwc_adapter` (Image Widget Crop) and `media_contextual_crop_fp_adapter`
(Focal Point).

**Drush:** `media_contextual_crop:migrateToImageFormatter` rewrites media view displays that
use the `contextual_image` formatter back to the plain `image` formatter when their style no
longer multi-crops.

**Install/update:** adds an index `idx_crop_context_cid` on `crop_field_data(context, cid)`
(hook_install + update 10220) to speed up context lookups; update hooks 10202/10210 flush
legacy public derivative folders.

**Two planning points:** derivatives multiply (one image × four contexts × three styles = twelve
files — size storage, confirm pre-generation); and editors need guidance, or the outcome is crops
set for one context and forgotten for the others, which looks worse than no contextual cropping.
