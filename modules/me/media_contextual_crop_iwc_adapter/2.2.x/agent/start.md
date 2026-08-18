<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Contextual Crop — IWC Adapter (media_contextual_crop_iwc_adapter) — agent index

Adapter letting **Image Widget Crop** supply the UI for **Media Contextual Cropping**.
Version **2.2.0**. Core `^11`.
Depends on `media_contextual_crop` and `image_widget_crop`
(composer: `image_widget_crop ^2.4 || ^3.0`, `media_contextual_crop ~2.2.0`).

**The value of an adapter, stated plainly:** a site already using Image Widget Crop keeps **one**
cropping experience and one set of crop types instead of editors learning two. A site not already
using it does not need this.

**What it ships:** one `MediaContextualCrop` plugin (id `image_widget_crop`, target field
`image_crop`, image-style effect `crop_crop`) in
`src/Plugin/MediaContextualCrop/ImageWidgetCrop.php`, plus `hook_form_alter` /
`#after_build` in the `.module` file that reword the crop-reuse message and remove the Reset
button from the embedded IWC widget, and one CSS library `editor_media_dialog_fix` that fixes the
vertical-tabs layout inside the editor media dialog. No config UI (`configure: null`), no
permissions, no Drush, no config schema.

**New in 2.2 (vs 2.0):** core requirement narrowed to `^11` (Drupal 10 dropped); explicit
Composer constraints added; `saveCrop()` now short-circuits and returns the existing crop id when
the submitted geometry (x/y/width/height) matches the stored crop, avoiding a redundant save.

**Practical note:** contextual crops multiply derivatives — one image × four contexts × three image
styles = twelve files. Size storage accordingly, and check derivative generation is not happening
per request on a page full of them.
