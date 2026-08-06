<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Site Studio ACSF supplies the Site Studio configuration needed when running on Acquia Site Factory.

---

Site Factory runs many sites from one codebase, and Site Studio stores a great deal of its state as configuration and generated assets. The combination has specific requirements — where generated styles live, how a site's Site Studio state is initialised when a new site is created from a factory template, how deployments propagate — and getting them wrong produces sites that look unstyled or lose their design system on a release.

This module carries that configuration so it does not have to be rediscovered per platform.

It is narrowly useful: only on Acquia Site Factory, only with Site Studio, both of which are commercial products. On any other stack it has nothing to do.

**The general point worth extracting is about generated assets on a multi-site platform.** Site Studio compiles styles into files, and a platform that treats the codebase as immutable and the file system as per-site needs those compiled assets to end up in the right place at the right time. That is the class of problem this module exists to solve, and it is the thing to verify after any platform change — a site that renders unstyled after a deployment is usually a compiled-asset path problem rather than a configuration one.

Release is **1.0.0-beta4**.

---

- Run Site Studio on Acquia Site Factory.
- Initialise Site Studio state for a new factory site.
- Get compiled styles to the right place.
- Survive a deployment without losing styling.
- Diagnose a site rendering unstyled.
- Check compiled asset paths after a platform change.
- Propagate a design system across factory sites.
- Configure Site Studio per platform once.
- Recognise the module's narrow applicability.
- Plan a Site Studio multisite build.
- Audit an inherited Site Factory site.
- Verify styling after a release.
- Understand generated assets on a multi-site platform.
- Document this module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
