<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Augmentor: Google Cloud Vision integrates Google Cloud Vision as an Augmentor provider (image analysis: labels, OCR, safe-search).

---

Augmentor: Google Cloud Vision **integrates Google Cloud Vision as an Augmentor provider** — running images
through Google's Vision API for labels, text (OCR), safe-search, etc., usable in Augmentor AI-augmentation
workflows. It depends on the Augmentor module, in the Augmentor package.

Use it to analyze images with Google Vision. It is an AI/integration feature. Security/data handling: it **sends
images to the Google Cloud Vision API** (external egress — confirm acceptable, especially for private/sensitive
images) and authenticates with **Google Cloud credentials** (store as secrets — env/Key — over HTTPS). It has no
access-control role. Configure the Google Cloud credentials.

---

- Analyze images with Google Vision.
- Get labels/OCR/safe-search.
- Run in Augmentor workflows.
- Depend on the Augmentor module.
- Send images to Google Cloud Vision (egress).
- Confirm acceptable for sensitive images.
- Store Google Cloud credentials as secrets (env/Key, HTTPS).
- Have no access-control role.
- Configure the credentials.
- Handle image analysis.
- Analyze images.
- Configure the provider.
- Run vision.
- Handle the integration.
- Detect labels.
- Configure Google.
- Handle OCR.
- Score images.
- Secure the credentials.
- Provide Vision analysis.
