<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Token Defaults supplies a fallback value for tokens that resolve to nothing, so a template using `[node:field_summary]` does not silently produce an empty string.

---

Tokens are everywhere in a Drupal site's configuration — meta descriptions, path patterns, email bodies, scheduled messages — and they fail quietly. A meta description built from a summary field is empty for every node whose author left that field blank, and nothing reports it; the page simply has no description, and the omission is discovered months later in an SEO audit, if at all. The same silence affects a path pattern producing a bare alias and an email whose greeting has no name in it. This module lets an administrator define what an unresolved token should produce instead — a site-wide default, another token, a fixed string — turning a quiet gap into a predictable value. Defaults are **configuration entities** listed at `/admin/config/search/token_default`, with settings behind `administer token defaults`; it depends on `token`, version **2.0.0-rc2** (a release candidate) on `^8` through `^11`. Two things to think through. **A fallback hides the gap rather than fixing it**, so if the underlying problem is that editors are not filling in a required field, a default makes the symptom invisible while the content stays thin — decide which of those you actually want. And **defaults chain**: a fallback that is itself a token can resolve to nothing too, so keep the last link in any chain a literal string, and test with genuinely empty content rather than with a well-populated example node.

---

- Provide a fallback meta description.
- Avoid empty tokens in path patterns.
- Give an email a default greeting.
- Fall back to the site name.
- Prevent blank meta tags.
- Use the title when a summary is empty.
- Provide a default alt text token.
- Avoid empty scheduled messages.
- Fix silent token failures.
- Provide a default social share description.
- Ensure a path alias is never bare.
- Give a newsletter a fallback subject.
- Provide a default image token.
- Improve SEO consistency.
- Avoid empty strings in generated text.
- Set a fallback for a missing field.
- Standardise token behaviour site-wide.
- Diagnose which tokens resolve to nothing.
