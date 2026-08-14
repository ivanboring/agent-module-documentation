<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Class Replacement Manager (crema) is a proof-of-concept that lets a module "replace" an
existing PHP class with its own implementation by declaring the mapping in the module's
`info.yml`.

---

It works by inserting a custom class loader (`CremaClassLoader`) ahead of Composer's, via a
`ServiceProvider` (`CremaServiceProvider`), so that when the original class is requested a
"camouflaged" replacement is loaded instead. A `ClassCamouflage` helper and a Twig-style token
parser (`ClassCamouflageTokenParser` / `TokenParserShim`) rewrite/relocate the class so the
replacement can extend or stand in for the original under its original fully-qualified name.
There is no UI, route, permission, or service configuration — behaviour is driven entirely by
`info.yml` declarations in the consuming module.

As the description states, this is a PoC/experimental primitive for developers exploring class
overriding without patching or subclassing. It manipulates the autoloader globally, so it is a
low-level tool to use with care and not a typical production feature.

---

- Replace a PHP class without patching core/contrib.
- Declare class replacements in a module's info.yml.
- Insert a custom class loader ahead of Composer's.
- Camouflage a replacement under the original class name.
- Prototype class-override behaviour in development.
- Stand in a custom implementation for a framework class.
- Explore autoloader-level overriding as a PoC.
- Avoid subclassing when a same-name override is needed.
- Study how a service-provider-driven class loader works.
- Test a replacement class before committing to a patch.
- Swap an implementation without touching the original file.
- Demonstrate autoloader-driven overriding to a team.
- Keep the override scoped to a single module's info.yml.
- Roll back an override by removing the info.yml declaration.
- Evaluate class-camouflage as an alternative to hooks.
- Experiment with same-FQCN overrides in a sandbox.
