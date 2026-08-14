<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Drupal Test Assertions is a developer/testing helper that ships a set of reusable PHPUnit assertion traits under `Drupal\Tests\drupal_test_assertions\Assertions`. Test classes `use` these traits to get higher-level, Drupal-aware assertions instead of re-writing the same checks in every project's test suite.

---

It contains no runtime code — no routes, permissions, services, or `.module` file — only trait files under `tests/src/Assertions/`: `UsersTrait`, `RolesTrait`, `FieldsTrait`, `EntityTrait`, `PageTrait`, `LanguageTrait`, `BookTrait`, and `ContentModerationTrait`. Assertions include security-oriented checks such as "anonymous users cannot register accounts" and "unprivileged roles cannot hold restrict-access permissions", plus entity/field/role/language/moderation helpers. The module is enabled only in test environments (or as a dev dependency) and imposes nothing on a production site.

Setup: require it as a dev dependency, then `use` the relevant trait(s) in your test class and call the assertions.

---

- `use` a trait in a functional/kernel test class
- Assert anonymous users cannot create accounts (`assertNoCreateAccountsAllowed`)
- Assert unprivileged roles lack restrict-access permissions
- Assert role configuration with `RolesTrait`
- Assert field presence/config with `FieldsTrait`
- Assert entity state with `EntityTrait`
- Assert page content/response with `PageTrait`
- Assert language configuration with `LanguageTrait`
- Assert book structure with `BookTrait`
- Assert content-moderation state with `ContentModerationTrait`
- Share common assertions across multiple test suites
- Add security regression checks to CI
- Keep test code DRY across projects
- Require it as a dev/composer dependency only
- Compose multiple traits in one test class
- Assert entity access or field values in kernel tests
- Verify moderation transitions in functional tests
- Standardise assertions across a team's modules
