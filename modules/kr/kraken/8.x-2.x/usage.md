<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Kraken.io is an Image Optimize (`imageapi_optimize`) processor that sends images to the Kraken.io web service for compression, including lossy mode and WebP output.

---

Image Optimize lets a site build pipelines of processors that run over derivative images. Most processors shell out to a local binary — jpegoptim, pngquant. This one offloads to a paid web service instead, which is the right trade when you want aggressive, format-aware compression (and WebP) without installing and maintaining binaries on every environment.

Configuration lives on the processor inside an Image Optimize pipeline: a Kraken.io API key and secret, plus lossy and WebP toggles. That location is also the one caveat worth stating. **The key and secret are stored in the pipeline's configuration and rendered back into the processor form as plain text fields** — so they travel into a config export (and usually git), and they appear in the settings page HTML in clear. Kraken.io credentials are lower-stakes than infrastructure keys — the worst case is someone spending your optimization quota — but a service secret in exported config is still a secret in git, and the fix (a `password` field, a Key entity) is the same as everywhere else.

Operationally, every optimized derivative is a round trip to a third party, so first-render latency depends on Kraken.io and images leave your infrastructure to be processed. For a public image that is usually fine; for anything sensitive it is a data-egress decision.

---

- Optimize images through Kraken.io.
- Offload compression to a web service.
- Produce WebP derivatives.
- Use lossy compression for smaller files.
- Add Kraken to an Image Optimize pipeline.
- Avoid installing local optimization binaries.
- Compress images aggressively.
- Configure the processor per pipeline.
- Store the Kraken.io API key and secret.
- Prefer a password field for the secret.
- Keep the secret out of exported config.
- Keep the secret out of git.
- Budget for third-party round-trip latency.
- Accept that images egress to Kraken.io.
- Restrict image optimize administration.
- Toggle WebP output per pipeline.
- Enable request logging for debugging.
- Weigh a paid service against local binaries.
- Optimize only public images through it.
- Combine with responsive image styles.