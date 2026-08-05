<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Import (project **confi**, module **config_import**) is a developer-facing service for importing and exporting a *chosen subset* of configuration — useful in update hooks and deployments where a full `drush cim` is too blunt.

---

Drupal's own config import is all-or-nothing against the sync directory, which makes it awkward when an update hook needs to bring in exactly three config objects that a module just started shipping. This module wraps that machinery in a service, `config_import.importer` (`ConfigImporterService`), with a small interface: `setDirectory()` / `getDirectory()` to point at a source directory, and `importConfigs(array $configs)` / `exportConfigs(array $configs)` to move a named list of config objects in or out. It is constructed with the full set of collaborators a real import needs — uuid, config storage, config manager, event dispatcher, lock, typed config, module handler and installer, theme handler, file system and the module/theme extension lists — so imports honour dependencies and locking rather than blindly writing config records. A second service, `config_import.param_updater` (`ConfigParamUpdaterService`), updates individual parameters within config. Sites can extend which configs are involved through `hook_config_import_configs_alter(array &$configs)`, documented in `config_import.api.php`. A `ConfigImportServiceProvider` wires everything up. Note the naming: the drupal.org project is `confi`, but the module (and its machine name, service ids and namespace) is `config_import`.

---

- Import a handful of config objects from an update hook.
- Ship new default config to an existing site safely.
- Export selected config objects programmatically.
- Update one parameter inside a config object during deployment.
- Avoid a full config import when only a few items changed.
- Bring in config a module started shipping after install.
- Keep deployment scripts declarative about which config they touch.
- Respect config dependencies while importing a subset.
- Use locking so concurrent imports do not collide.
- Alter the list of configs another module imports.
- Re-import a config object reset by an editor.
- Restore a single view from the sync directory.
- Support multi-site deployments with per-site config subsets.
- Import config from a directory other than the sync directory.
- Script config changes in a repeatable way.
- Reduce risk in deployments to production.
- Apply config fixes without a full site config export.
- Update a setting across many sites with the param updater.
- Keep update hooks readable rather than hand-writing config writes.
- Integrate config import into a custom deployment command.
