<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Image Sizes selects an image style based on the width of the parent element, for responsive images that adapt to their container, with a defaults submodule.

---

Responsive images should match their container, not just the viewport. Image Sizes chooses an image style based on the parent element's width, so an image in a narrow column gets a smaller derivative than the same image in a wide hero. It has an `image_sizes_defaults` submodule of ready configurations. It is a performance/display feature with no security surface — it selects among image styles. Confirm the style/width mappings produce appropriately-sized images for your layouts.

---

- Pick an image style by container width.
- Serve container-appropriate images.
- Make images responsive to their column.
- Reduce image weight in narrow slots.
- Configure width-to-style mappings.
- Use the defaults submodule.
- Improve responsive images.
- Match image size to layout.
- Optimise image delivery.
- Confirm the mappings.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.
- Use deliberately.
- Review after upgrades.