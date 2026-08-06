<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Environment indicator ribbon adds a corner ribbon showing which environment the site is — development, staging, production — extending the `environment_indicator` module's toolbar treatment.

---

The mistake this prevents is specific, common and expensive: doing something on production believing it is staging. Deleting content, running a migration, sending a test email to a real list, clearing a cache during peak, changing configuration that then gets exported — each has been done by a competent person with three near-identical browser tabs open. `environment_indicator` colours the administration toolbar for exactly this reason, and the toolbar is not always where attention is: an editor working in a front-end theme, a developer looking at a rendered page, anyone on a screen where the toolbar has scrolled away. A ribbon sits in a corner of the viewport and stays there. Version **1.1.0** on core `^9 || ^10 || ^11`, requiring `environment_indicator`, with an `access environment indicator ribbon` permission so it is shown to the people who need it. Two things determine whether it works. **The environment must be detected, not configured per environment**: a value read from an environment variable is correct everywhere automatically, while a value in exported configuration is the same on every environment and therefore says "production" on staging, which is worse than no ribbon at all because it is trusted. And **colour alone is not enough** — a ribbon distinguishing environments only by red and green fails for a colour-blind developer, so the environment's **name** must be in the ribbon text.

---

- Show which environment a site is.
- Prevent editing production by mistake.
- Warn developers on a staging site.
- Add a visible production marker.
- Distinguish three similar browser tabs.
- Show the environment outside the toolbar.
- Prevent an accidental content deletion.
- Warn before running a migration.
- Show environment on a front-end page.
- Support a multi-environment workflow.
- Mark a client review environment.
- Show environment to editors.
- Reduce environment confusion.
- Warn on a production-like sandbox.
- Show environment during a deployment.
- Mark a local development site.
- Support a QA team's environments.
- Prevent test emails to real addresses.
