<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Devel Accessibility (devel_a11y) — agent index

Devel add-on that logs/visualises Drupal's accessibility JavaScript. Requires `devel`; core
`^11.2 || ^12`. No permissions of its own — the settings form uses Devel's
`access devel information`.

Key facts:
- Route `devel_a11y.settings` — `/admin/config/development/devel/a11y`
  (`Form\Settings`, permission **`access devel information`**). `configure` in info.yml points
  here.
- Config `devel_a11y.settings` (schema shipped), defaults **all on**:

  ```yaml
  aural:
    announce:
      log: true              # log every Drupal.announce() call to the console
  keyboard:
    tabbingmanager:
      log: true              # log tabbing-manager activity
      visualize: true        # draw the current tabbing constraint on screen
  ```

- Assets: `js/announce.log.js`, `js/tabbingmanager.log.js`, `js/tabbingmanager.visualize.js`,
  `css/tabbingmanager.visualize.css`, declared in `devel_a11y.libraries.yml`.
- Hooks are OO classes registered as services: `src/Hook/Attachments.php`
  (`#[Hook('page_attachments')]`) attaches the enabled libraries; `src/Hook/Help.php`
  (`#[Hook('help')]`).

```bash
drush en devel devel_a11y -y
drush cget devel_a11y.settings
drush cset devel_a11y.settings keyboard.tabbingmanager.visualize false -y
```

Notes:
- The aids attach on **every** page for users who can reach them, so leave the module disabled on
  production (as with Devel itself).
- `Drupal.announce()` logging is console-only; there is no server-side record.
