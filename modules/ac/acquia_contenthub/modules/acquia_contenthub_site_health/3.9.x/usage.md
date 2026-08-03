The site health submodule (experimental) audits a site for known Drupal/Content Hub incompatibilities and provides a Drush command to repair config entities that have NULL UUIDs before they break syndication.

---

Its primary tool is the Drush command
`acquia:contenthub-fix-config-entities-with-null-uuids`, which finds local configuration
entities whose UUID is NULL and assigns each a randomly generated UUID. NULL config UUIDs are a
common cause of publisher-side dependency-calculation failures (Content Hub keys everything by
UUID), so fixing them pre-empts export errors. The module is aimed at publishers, is marked
experimental ("use with caution"), depends only on `acquia_contenthub`, and has no settings
form, permissions, or config schema — it is a diagnostic/repair utility run from the CLI.

---

- Repair config entities that have NULL UUIDs before they break export.
- Pre-empt publisher dependency-calculation failures caused by missing UUIDs.
- Assign random UUIDs to config entities that lack them.
- Audit a site for known Drupal/Content Hub incompatibilities.
- Run a one-off health-fix from Drush during onboarding of a publisher.
- Clean up legacy config that predates strict UUID requirements.
- Diagnose why specific config entities fail to syndicate.
- Add UUID hygiene to a deployment/pre-flight checklist.
- Fix config UUID issues after a site migration or import.
- Keep the publisher export pipeline from erroring on NULL-UUID config.
- Use as a maintenance step before a first full syndication.
- Support troubleshooting of Content Hub export errors.
- Run safely as a CLI-only repair (no UI side effects).
- Complement publisher/subscriber audit commands with config-level checks.
- Reduce hard-to-trace syndication failures rooted in config UUIDs.
