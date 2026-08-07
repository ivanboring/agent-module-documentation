<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Contextual Filter Referer supplies a View's contextual filter from the referring page, so context survives an AJAX request.

---

The problem is specific and maddening. A View placed as a block takes its argument from the page it is on — a node id, a term id, a path component. Then the visitor clicks the pager, the View reloads over AJAX, and the request no longer comes from that page: it comes from Views' AJAX endpoint, where the argument is gone. The first page of results is correct and every subsequent one is wrong, which is the sort of bug that gets reported as "the pager is broken".

This module resolves the argument from the referring page instead, so the context survives.

**Deriving context from the referer is the right pragmatic fix and carries the usual caveat**: `Referer` is a client-supplied header, and it can be absent — privacy settings, some proxies, and certain navigation strip it — or forged. For a listing filtered to "articles in this section" that is harmless: a forged referer shows a visitor a different section's public articles, which they could reach anyway. It stops being harmless the moment the argument controls **access** rather than presentation, because then a client-supplied header is deciding what is shown.

So the rule is worth stating: use it for context, never as a filter that is doing the work of an access check. And decide what the View does when there is no referer at all, since an argument with no default produces either everything or nothing, and both are surprising.

---

- Keep a contextual filter across AJAX pagination.
- Fix a pager that loses its argument.
- Filter a block View by the current node.
- Preserve context in an exposed filter submit.
- Derive an argument from the referring page.
- Handle a missing Referer header.
- Set a default when no referer is present.
- Avoid using it where access depends on the argument.
- Keep access checks out of contextual filters.
- Diagnose a View correct on page one only.
- Test with referer-stripping browsers.
- Understand the AJAX endpoint's context loss.
- Audit Views relying on referer context.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
