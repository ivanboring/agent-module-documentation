<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Displays NASA's Astronomy Picture of the Day (APOD) as a block and on a dedicated page.

---

The module ships a Guzzle-based client (`nasa_client`) that calls `https://api.nasa.gov/planetary/apod`, a controller route `nasa/pic-of-the-day` (permission `access content`) that renders the full detail view (image or video, date, explanation, media type), and a `NasaPodBlock` block for placing the picture anywhere. Templates `nasa-pod-block` and `nasa-pod-detail` format the output; an attached library provides styling.

Setup is minimal: enable the module, then place the block or link to `nasa/pic-of-the-day`. **Note:** the NasaClient methods default the NASA API key to a hardcoded value baked into the source (`getImage`/`getImageDetails` parameter default), rather than reading a site-configured key — a recorded security concern for this project (see the module's local `security.md`). Operators wanting their own quota should supply a key rather than rely on the embedded one.

---

- Show NASA's Astronomy Picture of the Day on a Drupal site.
- Place the `NasaPodBlock` block to display the daily picture in any region.
- Link visitors to the full detail page at `nasa/pic-of-the-day`.
- Display the image, its date, media type, and NASA's explanation text.
- Handle both image and video APOD entries (renders video when media type is video).
- Fetch the picture data from the NASA APOD API via the `nasa_client` service.
- Attach the module's styling library `nasa_pod/nasa_pod_library` to the output.
- Customize the block markup via the `nasa-pod-block.html.twig` template.
- Customize the detail page via the `nasa-pod-detail.html.twig` template.
- Gate the detail route behind the `access content` permission.
- Provide a daily-changing hero/feature block on a homepage.
- Reuse the Guzzle client (base_uri `https://api.nasa.gov`) for APOD calls.
- Supply your own NASA API key to use your own request quota (avoid the hardcoded default).
- Embed astronomy content for education or outreach sites.
- Cache the daily result so repeat visitors do not each trigger an API call.