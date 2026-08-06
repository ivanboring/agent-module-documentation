<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Waypoints provides the Waypoints JavaScript library, which fires a callback when an element scrolls into a given position.

---

Scroll-triggered behaviour covers a set of patterns every marketing site eventually wants: a header that becomes compact once the page has scrolled past the hero, a statistic that counts up when it comes into view, a sidebar that sticks within its container and releases at the footer, an infinite-scroll trigger, an element that animates in. Waypoints was the standard library for this for years, and its API — attach a handler to an element and an offset — is straightforward. Version **2.2.0** on core `^10 || ^11`, no dependencies: it declares the library and does nothing until other code attaches it, the same shape as `howlerjs` and `vuejs` documented earlier. **The reason to pause before adopting it is that the platform has replaced it.** `IntersectionObserver` is supported everywhere that matters, does the same job, and does it better in the way that counts: Waypoints works by listening to scroll events and measuring positions, which runs code on the main thread on every scroll frame, while `IntersectionObserver` is asynchronous and computed off the main thread — which on a phone is the difference between a page that scrolls smoothly and one that stutters. Two further points that apply whichever mechanism is used. **Scroll-triggered animation must respect `prefers-reduced-motion`**, because content that moves on its own causes real symptoms for a substantial number of people. And **content revealed on scroll must exist without the script**, or a failed load leaves a blank page — the same trap `wowjs` presents, and the reason "visible by default, enhanced when the script runs" is the safe pattern.

---

- Trigger an action when an element scrolls into view.
- Make a header compact after scrolling.
- Count up a statistic when visible.
- Stick a sidebar within its container.
- Trigger infinite scroll loading.
- Animate a section on scroll.
- Highlight a nav item for the visible section.
- Lazy-load content on scroll.
- Trigger analytics when a section is seen.
- Build a scroll-driven narrative.
- Reveal a call to action on scroll.
- Trigger a sticky footer bar.
- Load images when they approach the viewport.
- Build a scrollspy navigation.
- Trigger a video to play in view.
- Reveal a progress indicator.
- Fire a callback at a scroll offset.
- Build a scroll-based interaction.
