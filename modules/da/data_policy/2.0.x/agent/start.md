<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Data Policy (data_policy) — agent index

Versioned **data policy / privacy statement** entity, an enforced agreement step, and a per-user
per-revision **agreement record**. Submodule `data_policy_export` produces that record — which is
what a **subject access request** asks for. Depends on core `block` and `path_alias`. From the Open
Social ecosystem. Version **2.0.9**. Core requirement `^10.2 || ^11`.

**WARNING — verified on a clean Drupal 11.4.4 install. Enabling this module breaks
`module_installer`.**
`DataPolicyServiceProvider::alter()` replaces the `module_installer` class and appends
`entity_type.manager` and `config.factory` arguments:
```php
$container->getDefinition('module_installer')
  ->setClass(DataPolicyModuleInstaller::class)
  ->addArgument(new Reference('entity_type.manager'))
  ->addArgument(new Reference('config.factory'));
```
Result: `ServiceCircularReferenceException: Circular reference detected for service
"module_installer"`. Consequences observed:
- **every `drush pm:*` command vanishes** ("There are no commands defined in the \"pm\" namespace");
- **no module can be installed or uninstalled** — including data_policy itself;
- the site still serves pages normally, so the breakage is silent until someone tries to install
  something.
- **Recovery is a direct edit of `core.extension`** removing `data_policy`, then a cache rebuild.
- **Security consequence, not just operational:** disabling a module is the standard response to an
  advisory with no fix available. A site in this state cannot do it through normal tooling.

**Why the module exists:** GDPR requires consent to be **demonstrable** — "this person agreed to
this text on this date", which a policy page and a boolean checkbox cannot show.
