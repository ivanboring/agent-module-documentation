<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Layout Builder Instant Preview updates a custom block's preview as it is edited, rather than after saving.

---

Editing a block in Layout Builder normally means filling a form, saving, and then looking at the result — and if it is wrong, doing it again. For anything visual that loop is slow enough to change how people work: editors stop iterating and accept the first version that is not obviously broken.

Live preview closes it. The block updates as the form is filled, so the editor sees what they are making.

**Two things to check before putting it on a busy editorial site.** Live preview means rendering on each change, so it is a request per keystroke-ish interaction — check what debouncing is in place, because an unthrottled preview on a complex block turns editing into a load test. And **preview rendering runs the block's real render path**, so anything expensive there — an API call, an uncached view, an image derivative — happens repeatedly during editing rather than once on save.

Neither is a reason to avoid it; both are reasons to try it on the site's heaviest block before rolling it out.

---

- Preview a block as it is edited.
- Stop the save-and-look loop.
- Encourage editors to iterate.
- See visual changes immediately.
- Check preview debouncing.
- Assess request volume during editing.
- Test on the site's heaviest block.
- Watch for API calls in a block's render path.
- Avoid repeated image derivative generation.
- Improve editor confidence.
- Reduce abandoned block edits.
- Combine with Layout Builder editing tools.
- Measure editing performance.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
