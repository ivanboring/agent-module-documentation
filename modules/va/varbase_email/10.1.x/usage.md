<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varbase Email gives a Varbase site a themed HTML email template, so transactional mail leaving the site looks designed rather than like raw Drupal output.

---

The module itself is almost entirely a template plus the modules needed to render it: `templates/varbase_emails.html.twig` is the single Twig file that wraps outgoing messages, `css/theme` holds its styles, and `src/Hook` contains the handlers that attach it. Its `info.yml` declares **no Drupal module dependencies at all** — the coupling is in `composer.json`, which requires Symfony Mailer (`~1 || ~2`), Easy Email (`~3`), Ace Editor, Pathologic and Token Filter, along with a set of CKEditor 5 plugin packages (emoji, bidi, paste filter, advanced link, media embed) and Blazy/Slick for media in mail. Pathologic matters more than it looks: email is rendered outside a normal page request, so relative URLs in body text would otherwise break, and Pathologic rewrites them to absolute. There is an `includes/updates/` directory with an `updates.inc`, the pattern Varbase modules use to apply configuration changes across releases. As with the rest of the family, `core_version_requirement` is pinned to `~11.4.0` and the `vardot/varbase-patches` composer plugin must be allowed.

---

- Send branded HTML email from a Drupal site.
- Replace Drupal's plain-text mail output with a designed template.
- Fix relative links that break once content is emailed.
- Use Symfony Mailer as the delivery layer.
- Author reusable email bodies with Easy Email.
- Insert tokens into email templates.
- Keep email styling consistent across a Varbase site.
- Edit email templates with a syntax-highlighted editor.
- Support right-to-left languages in email.
- Include emoji in outgoing messages.
- Paste formatted content into an email body safely.
- Embed media in an email template.
- Match transactional mail to a site's visual identity.
- Apply template changes across releases via update hooks.
- Give marketing a template editors cannot break.
- Preview an email before it is sent.
- Reduce spam-filter penalties from unstyled mail.
- Standardise mail appearance across several Varbase sites.
- Migrate from core mail formatting to Symfony Mailer.
