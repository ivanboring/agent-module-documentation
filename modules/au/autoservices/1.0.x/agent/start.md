<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Autoservices (autoservices) — agent index

Registers any class in a module's **`src/Autoservice/`** directory as a container service with
**autowiring**, under its fully qualified class name — no `*.services.yml` entry needed.
Version **1.0.2** (2024). Core requirement `^10 || ^11`.
Its README is explicit: *"it does nothing by itself and it should be installed as a dependency."*

**What it actually adds over core.** Core supports `autowire: true` on a definition, but the
**definition must still exist** — so adding a service stays a two-file operation, and the YAML is
boilerplate restating what the constructor's type hints already say. This removes it.

**The substantive work is the alias set.** Autowiring needs to know which service implements which
interface, and Drupal publishes no such mapping — so the module registers **aliases for many core
services**. That is the part to check when a particular interface fails to resolve.

**The trade, worth making deliberately:** services registered by convention appear in **no YAML
file**, so `drush` service listings and a text search for a service id will not find them, and a
developer who has not met the convention will not know where they came from.
