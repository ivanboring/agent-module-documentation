<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Mobile Native Share integrates the Web Share API, giving a share button that invokes the device's native share sheet on supported browsers.

---

On mobile, the native share sheet is the expected way to share a page. Mobile Native Share uses the Web Share API to trigger it from a share button, falling back where unsupported. It is a front-end feature with no security surface; the Web Share API requires HTTPS and a user gesture. It shares the current page URL/title, nothing sensitive.

---

- Add a native share button.
- Use the Web Share API.
- Trigger the device share sheet.
- Share a page on mobile.
- Provide native sharing.
- Fall back where unsupported.
- Require HTTPS.
- Share the current URL.
- Improve mobile sharing.
- Add a share action.
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