<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Launch Checklist provides a pre-launch checklist inside Drupal, built on Checklist API, so the things that must be true before a site goes live are tracked where the work happens.

---

Every agency has this list and most keep it in a document that is copied per project and diverges immediately. The items are unglamorous and each one has caused a real incident: robots.txt still disallowing everything, the staging site indexed because nobody removed the block, analytics not installed, the sitemap not submitted, error display left on, cron not configured, the admin password still the one from the install, email pointing at a catch-all, favicon missing, 404 and 403 pages unset. Putting the list in the site means it is visible to whoever is working on that site rather than to whoever remembers the document exists, and **Checklist API records who ticked each item and when**, which turns a list into an audit trail — the part that matters when a launch goes wrong and the question is what was checked. Version **1.1.13** on `^9.3 || ^10 || ^11`, in the SEO package. Two things worth attaching. **A checklist is a memory aid, not a test** — ticking "analytics installed" records a claim, and a site that has checked every box can still be broken, so the items worth having are the ones a person genuinely verifies rather than the ones they tick on the way past. And **the list should be edited to the organisation rather than accepted as shipped**: a generic launch checklist is a starting point, and the items that catch real problems are the ones added after the last launch went wrong, which is why the value compounds only if someone maintains it.

---

- Track pre-launch tasks in the site.
- Record who checked each launch item.
- Avoid launching with robots.txt blocking.
- Check analytics is installed before launch.
- Verify error display is off.
- Confirm cron is configured.
- Check the sitemap is submitted.
- Track SEO readiness before go-live.
- Support an agency's launch process.
- Verify email is configured correctly.
- Check 404 and 403 pages are set.
- Record launch sign-off.
- Support a client handover.
- Track remaining pre-launch work.
- Verify caching is enabled.
- Check the favicon and metadata.
- Support a repeatable launch process.
- Audit a site before go-live.
