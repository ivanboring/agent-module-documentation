<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Lupus Custom Elements Renderer serves a page's main content as custom-element markup plus metadata, for a front end that renders the components itself.

---

This is the delivery half of the architecture that `custom_elements`, documented in wave 70, describes: Drupal decides what appears on a page and in what order, emits one semantic element per component rather than themed HTML, and a front end owns how each looks. What this adds is the transport — a response carrying the element markup together with the page's metadata, which is what a decoupled front end actually needs, since a component tree without a title, a canonical URL, meta tags and a cache signal is only part of a page. The **`metatag`** dependency is the tell: SEO metadata is part of the payload rather than an afterthought, which is the thing most decoupled architectures get wrong and then retrofit badly. The `lupus_` prefix marks it as part of **Lupus Decoupled**, a stack pairing Drupal with a Nuxt front end, and the module is usable independently of the rest. Version **2.7.0** on core `^9 || ^10 || ^11`. Two things worth holding on to. **Drupal keeps its render pipeline, its caching and its access checks** in this arrangement, which is the whole argument for it over a JSON:API front end that has to reimplement all three — and it means a component rendered for one user must carry the cache contexts that make that safe, exactly as in a coupled site. And **the element and attribute names are an API**: renaming one is a breaking change for the front end, so they need versioning, documentation and an owner, which is the governance question that sinks more of these projects than any technical limitation.

---

- Serve content as custom elements.
- Feed a Nuxt front end from Drupal.
- Keep SEO metadata in a decoupled payload.
- Render components in the front end.
- Keep Drupal's access checks in a decoupled site.
- Support progressive decoupling.
- Serve a component tree with metadata.
- Keep editorial layout control in Drupal.
- Avoid reimplementing rendering in JavaScript.
- Support a Lupus Decoupled stack.
- Serve canonical URLs with content.
- Keep caching in Drupal.
- Render a page's components remotely.
- Support a design-system front end.
- Serve meta tags to a headless client.
- Avoid a JSON:API front-end rewrite.
- Deliver structured page output.
- Support a decoupled preview.
