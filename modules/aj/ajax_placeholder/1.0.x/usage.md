<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AJAX Placeholder implements a render element that can replace itself via an AJAX callback.

---

AJAX Placeholder provides a **render element that replaces itself via AJAX** — the page renders a
lightweight placeholder immediately, then an AJAX callback fetches and swaps in the real (often expensive or
personalized) content, improving perceived performance and cacheability of the initial response. It is a
developer/render feature.

Use it to defer expensive/uncacheable render output to an AJAX call. It is a developer/API feature; the
callback runs with the current user's privileges and its output should be built/escaped normally, and it has
no content or access role of its own. Use the render element in your code.

---

- Replace an element via AJAX.
- Render a placeholder first.
- Swap in real content later.
- Defer expensive/personalized output.
- Improve perceived performance.
- Improve cacheability.
- Run the callback with current-user privileges.
- Escape callback output normally.
- Have no content/access role.
- Use the render element.
- Handle AJAX placeholders.
- Defer rendering.
- Swap content in.
- Configure the element.
- Load via AJAX.
- Handle the callback.
- Render placeholders.
- Replace elements.
- Use it in code.
- Provide AJAX replacement.
