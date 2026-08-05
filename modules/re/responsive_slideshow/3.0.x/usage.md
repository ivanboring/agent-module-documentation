<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Responsive Slideshow provides a slideshow built on Bootstrap's own carousel component, for sites using a Bootstrap-based theme.

---

The value is in the qualifier, exactly as it is for `uikit_image_formatter`. A site on a Bootstrap theme already ships Bootstrap's JavaScript and CSS, including a carousel component with its own markup conventions, its own indicators and controls, and its own responsive behaviour. A slideshow module that drives that component adds no library, no additional weight and no styling to override; a slideshow module that brings its own library adds all three and then looks imported. So on a Bootstrap site this is the sensible choice and on any other site it is the wrong one, which is the first thing to establish. Version **3.0.0** on core `^9.4 || ^10 || ^11`, depending on core `image`, configured behind an `administer responsive slideshow` permission. Two things worth attaching. **Bootstrap's carousel has known accessibility limitations** that the framework's own documentation acknowledges — auto-advance without an accessible pause control, and slide transitions that are not announced — so a site with a conformance obligation should disable auto-advance and verify keyboard operation rather than assume the framework has handled it. And the general carousel point stands: **content past the first slide is largely unseen**, so the decision to build one should be made on the merits rather than because the design template had one, and where several teams each want the top of the homepage, a carousel is the compromise that satisfies nobody's metrics.

---

- Add a slideshow to a Bootstrap site.
- Use the theme's own carousel component.
- Show rotating images on a homepage.
- Avoid adding a second slider library.
- Match Bootstrap's markup conventions.
- Build a hero slideshow.
- Show featured content in rotation.
- Add indicators and controls.
- Keep page weight low on a Bootstrap theme.
- Show a photo sequence.
- Add a responsive image slider.
- Build a promotional rotation.
- Show partner logos.
- Add a slideshow block.
- Use existing theme styling.
- Build a campaign banner rotation.
- Show product highlights.
- Add a slideshow without new CSS.
