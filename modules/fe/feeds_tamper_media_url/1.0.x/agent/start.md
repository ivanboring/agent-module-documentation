<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Feeds Tamper Media URL (feeds_tamper_media_url) — agent index

Tamper plugin turning a **file URL** in an imported row into a **media entity**.
Core requirement `^10 || ^11`. No routes, permissions or configuration.

Key facts:
- Whole module: `src/Plugin/` (the Tamper plugin), `.info.yml`, `README.txt`, `LICENSE.txt`.
- Despite the project name it is a **Tamper** plugin, so it works anywhere Tamper plugins are
  consumed — a Feeds importer being the usual case. (Same pattern as
  `feeds_tamper_convert_encoding`, wave 58.) Note the info file declares **no dependencies**, so
  install `tamper`/`feeds` yourself.
- **Two operational points:**
  1. *The URLs come from the feed source*, so importing fetches whatever they point at — a
     server-side request driven by feed contents. On a feed you do not fully control, that is a
     data-flow question worth raising, and a reason to constrain which hosts the importer runs
     against.
  2. *Downloading makes the import as slow and as fragile as the slowest remote host.* Run large
     feeds from Drush rather than a web request.
- The created media's type and field mapping are Feeds/Tamper configuration, not module settings.
