<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Universal Device Detection wraps Matomo's device-detector library as a Drupal service, so code can ask what device, browser, operating system, brand and model a request came from.

---

The module is a service wrapper: `src/Detector` plus `universal_device_detection.services.yml`, with `matomo/device-detector ~6` doing the parsing. There is no configuration, no permission, no route and no block — another module or a theme injects the service and asks its questions. Matomo's library is the serious option in this space, maintained alongside Matomo Analytics with a large and current device database, which is what distinguishes it from the regex-in-a-module approach. Two considerations shape whether server-side detection is the right tool. **Caching**: a response that varies by device must declare a matching cache context, or the page cache will serve one device's variant to another — the failure is silent and only appears under load, so any use of this service needs the cache metadata thought through. **Approach**: for layout, CSS media queries and responsive images are almost always better, because they respond to the actual viewport rather than a guess from a user-agent string that browsers increasingly freeze or reduce. Server-side detection earns its place for analytics, for app-store redirects, and for decisions that genuinely cannot be made in CSS. Core range is `^9 || ^10 || ^11`.

---

- Detect whether a request came from a mobile device.
- Identify the browser and version server-side.
- Distinguish tablet from phone traffic.
- Redirect to an app store by platform.
- Log device breakdown for analytics.
- Detect a TV or console browser.
- Identify device brand and model.
- Serve a different template to bots.
- Vary an email link by platform.
- Report on operating system usage.
- Detect a crawler in custom code.
- Drive a device-specific integration.
- Support a decoupled front end's device hints.
- Inject detection as a service in custom code.
- Choose a video format by device.
- Feed device data into a personalisation rule.
- Replace a hand-rolled user-agent regex.
- Support a site still on Drupal 9.
