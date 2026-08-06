<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Track records changes to configuration as revisions, so a site has a history of what changed and when.

---

Configuration in Drupal has no history. A view stops returning results, a permission is missing, a field display is wrong — and there is no way to answer "what changed and when" from inside the site. On a project with configuration in version control the answer is in git; on a site where configuration is edited in production, which is most sites, there is no answer at all.

This module keeps revisions of config entities and simple configuration, which turns that question into a lookup.

**The value is highest exactly where config management is weakest**: a site with several administrators, no config export discipline, and changes made directly in the UI. It does not replace exported configuration — it is a record, not a deployment mechanism — but it means an unexplained change is investigable rather than a mystery.

**Two things to plan.** Configuration includes things that are sensitive by nature, and a revision store keeps them: API keys held in config, mail settings, access rules. Who can read the revision history should be a deliberate decision, because it is effectively read access to every config value the site has ever held. And **revisions grow** — configuration changes are small but constant on an active site, so check whether there is pruning and what the storage looks like after a year.

---

- Find out what configuration changed.
- See when a setting was altered.
- Investigate a view that stopped working.
- Track permission changes over time.
- Audit configuration on a shared site.
- Answer a question git cannot on a UI-edited site.
- Compare two configuration revisions.
- Restrict who reads configuration history.
- Treat the revision store as sensitive.
- Consider API keys held in config revisions.
- Plan pruning of configuration revisions.
- Check storage growth after a year.
- Complement exported configuration.
- Explain an unexplained setting change.
- Support a change-control process.
