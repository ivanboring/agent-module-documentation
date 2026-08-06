<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Launch Checklist (launch_checklist) — agent index

Pre-launch checklist **inside Drupal**, built on **Checklist API**. Package `SEO`.
Version **1.1.13**. Core requirement `^9.3 || ^10 || ^11`.

**Why in the site rather than in a document:** every agency has this list, kept in a document copied
per project and diverging immediately. In the site it is visible to **whoever is working on that
site**, not to whoever remembers the document exists — and **Checklist API records who ticked each
item and when**, which turns a list into an **audit trail**. That is the part that matters when a
launch goes wrong and the question is what was checked.

The items are unglamorous and each has caused a real incident: robots.txt still disallowing
everything; the staging site indexed; analytics not installed; sitemap not submitted; error display
on; cron unconfigured; the install-time admin password; email pointing at a catch-all; 404 and 403
pages unset.

**Two things worth attaching:**
1. **A checklist is a memory aid, not a test.** Ticking "analytics installed" records a **claim** —
   a site with every box checked can still be broken. The items worth having are the ones someone
   genuinely **verifies**.
2. **Edit the list to the organisation.** A generic checklist is a starting point; the items that
   catch real problems are **the ones added after the last launch went wrong**. The value compounds
   only if someone maintains it.
