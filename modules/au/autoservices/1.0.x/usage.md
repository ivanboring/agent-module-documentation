<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Autoservices registers any class under a module's `src/Autoservice/` directory as a container service with autowiring enabled, so a service needs no `*.services.yml` entry at all.

---

Symfony has had autowiring since 3.3 and Drupal has adopted it only partly: core supports `autowire: true` on a service definition, but the definition still has to exist, so adding a service remains a two-file operation — write the class, then describe it in YAML with each argument listed in the right order. The YAML is boilerplate that restates what the constructor's type hints already say, and it is where the mistakes happen: an argument in the wrong position, a service id typed from memory, a constructor changed without the YAML following. This module removes it. Drop a class in `src/Autoservice/`, type-hint the constructor with interfaces, and the service is registered under its fully qualified class name. Autowiring needs to know which service implements which interface, and Drupal does not publish that mapping, so the module also registers **aliases for many core services** — that alias set is the substantive work here, and the part to check if a particular interface fails to resolve. Version **1.0.2** (2024) on `^10 || ^11`; its own README is explicit that it does nothing alone and should be installed as a dependency. Weigh one thing before adopting it across a codebase: services registered by convention do not appear in a YAML file, so `drush` service listings and a text search for a service id will not find them, and a developer who has not met the convention will not know where they came from. That is the usual trade for convention over configuration, worth making deliberately rather than by accident.

---

- Register a service without YAML.
- Autowire constructor dependencies.
- Reduce services.yml boilerplate.
- Avoid argument-order mistakes.
- Add a service by dropping in a class.
- Use Symfony conventions in Drupal.
- Speed up module scaffolding.
- Alias core services for autowiring.
- Refactor a constructor without editing YAML.
- Support a code-first team.
- Reduce merge conflicts in services.yml.
- Register several small services quickly.
- Prototype a service layer.
- Provide autowiring to a dependent module.
- Simplify a custom module's structure.
- Adopt modern PHP service patterns.
- Reduce container configuration errors.
- Onboard Symfony developers faster.
