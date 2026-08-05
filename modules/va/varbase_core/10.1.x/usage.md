<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Varbase Core is the component bundle at the centre of the Varbase distribution: it pulls in and pre-configures the roughly one hundred contrib modules a Varbase site is expected to have, and ships eight submodules that each own one area of that configuration.

---

Varbase Core is not a feature module — it is a *composition*. Its `composer.json` requires around 100 contrib projects (ECA and BPMN.iO for automation, Gin and Gin Login for the admin theme, Webform, Content Lock, Password Policy, SecKit, Security Review, CAPTCHA, reCAPTCHA, Honeypot, Antibot, Shield, Flood Control, Better Exposed Filters, Field Group, Display Suite, Views Bootstrap, Entityqueue, Inline Entity Form, Trash, Project Browser, Automatic Updates and more), and its `install:` list enables about 60 of them at install time. Its own PHP is small: a settings index at `/admin/config/varbase` that just renders the Varbase menu block, one general settings form, a `src/Drush` command namespace, and `src/Hook` handlers. A single permission — `access varbase settings` — gates both routes. The real content is in `config/`, which is split into `install`, `optional`, `managed` and a `permissions` directory, plus eight submodules: **varbase_admin** (admin configuration), **varbase_page** (Basic page content type), **varbase_security** (password policy, username-enumeration prevention, SecKit, Security Review), **varbase_internationalization**, **varbase_webform**, **varbase_tour**, **varbase_default_content** and **varbase_development** — which its own description warns must be disabled in production. Core requirement is pinned tightly to `~11.4.0`, so the module tracks a single core minor rather than a range.

---

- Stand up a Varbase site with its expected module set already present.
- Get an opinionated Drupal configuration instead of assembling one.
- Enable ECA-based automation out of the box.
- Ship a hardened security baseline (password policy, SecKit, Security Review).
- Provide editors with the Gin admin theme pre-configured.
- Add a Basic page content type with Varbase's field setup.
- Group all distribution settings under one admin page.
- Manage which configuration is ignored on deployment.
- Enable multilingual support as a single switch.
- Provide guided tours to new editors.
- Load starter default content for a new site.
- Turn on developer tooling only in non-production environments.
- Gate distribution settings behind one permission.
- Keep webform features consistent across Varbase sites.
- Adopt Varbase's module choices without installing the full profile.
- Pin a site to a specific Drupal core minor deliberately.
- Give a team a shared baseline across many sites.
- Reduce per-project module selection work.
- Layer additional Varbase feature modules on a common core.
