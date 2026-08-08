<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Big Pipe Paragraphs renders paragraphs via BigPipe, streaming them into the page after the initial response for faster perceived performance.

---

Big Pipe Paragraphs uses Drupal's BigPipe to load paragraphs progressively — the page's initial HTML
is sent quickly and the paragraph content streams in afterwards, improving perceived load time on
paragraph-heavy pages. It depends on core BigPipe and Dynamic Page Cache, the Paragraphs module, and
the Preprocess module.

Use it where long stacks of paragraphs slow down first render and you want the shell to appear fast
while paragraphs fill in. It is a performance/rendering feature; it changes how paragraphs are
delivered, not their content or access — each paragraph still renders with its normal access and
cacheability. Best suited to pages where below-the-fold paragraphs can load slightly later.

---

- Load paragraphs progressively with BigPipe.
- Stream paragraphs after initial HTML.
- Improve perceived page-load time.
- Speed up paragraph-heavy pages.
- Depend on core BigPipe.
- Use Dynamic Page Cache.
- Depend on Paragraphs and Preprocess.
- Render the page shell fast.
- Fill paragraphs in afterwards.
- Defer below-the-fold paragraphs.
- Keep paragraph access unchanged.
- Preserve paragraph cacheability.
- Change delivery, not content.
- Reduce time to first render.
- Optimise long paragraph stacks.
- Stream content into the page.
- Enhance front-end performance.
- Apply to paragraph fields.
- Improve Core Web Vitals.
- Load paragraphs asynchronously.
