<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Contextual Crop — IWC Adapter (media_contextual_crop_iwc_adapter) — agent index

Adapter letting **Image Widget Crop** supply the UI for **Media Contextual Cropping**.
Version **2.0.4**. Core `^10 || ^11`.
Depends on `media_contextual_crop`, `image_widget_crop`.

**The value of an adapter, stated plainly:** a site already using Image Widget Crop keeps **one**
cropping experience and one set of crop types instead of editors learning two. A site not already
using it does not need this.

**Practical note:** contextual crops multiply derivatives — one image × four contexts × three image
styles = twelve files. Size storage accordingly, and check derivative generation is not happening
per request on a page full of them.