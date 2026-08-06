<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Contextual Cropping API (media_contextual_crop) — agent index

API making a crop a property of the **usage** rather than of the media entity.
Version **2.1.9**. Core `^10 || ^11`. Depends on `crop`, `field`.

Two plugin types: `MediaContextualCropPluginManager` (cropping mechanisms) and
`MediaContextualCropUseCasePluginManager` (contexts). `PathProcessor/PathProcessorImageStyles`
makes contextual derivatives addressable.

**API module — nothing visible on its own.** A UI adapter supplies the interface; see
`media_contextual_crop_iwc_adapter` (Image Widget Crop).

**Two planning points:** derivatives multiply (one image × four contexts × three styles = twelve
files — size storage, confirm pre-generation); and editors need guidance, or the outcome is crops
set for one context and forgotten for the others, which looks worse than no contextual cropping.