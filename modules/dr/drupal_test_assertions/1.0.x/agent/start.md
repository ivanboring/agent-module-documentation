<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drupal Test Assertions (drupal_test_assertions) — agent index

**Reusable PHPUnit assertion traits for Drupal tests — no runtime code.**

- **Version:** 1.0.x
- **Core:** ^8 || ^9 || ^10 || ^11
- **Package:** Testing.
- **Contents:** traits in `tests/src/Assertions/` — `UsersTrait`, `RolesTrait`, `FieldsTrait`, `EntityTrait`, `PageTrait`, `LanguageTrait`, `BookTrait`, `ContentModerationTrait`. `use` them in a test class.
- **Routes/permissions/services:** none.
- **Security:** No runtime surface; test-only helper. Includes assertions that themselves check security posture (anon registration off, restrict-access perms withheld from anon/authenticated).
