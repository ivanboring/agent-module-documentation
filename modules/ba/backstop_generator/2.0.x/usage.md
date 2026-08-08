<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Backstop Generator generates backstop.json files for visual-regression testing with BackstopJS.

---

Backstop Generator generates `backstop.json` configuration files for BackstopJS visual-regression
testing — building the scenario/viewport config (from the site's URLs and breakpoints) so BackstopJS can
capture and compare screenshots to catch unintended visual changes. It depends on core Breakpoint, provides
its own permissions, and is configured at `backstop_generator.settings_form`, in the Development package.

Use it to bootstrap visual-regression test config. It is a developer/testing tool that produces a config
file; it reads site structure (URLs, breakpoints) to build scenarios and has no content-access role beyond
its permission. Gate the generator permission to developers/admins. Configure the scenarios and generate the
file.

---

- Generate backstop.json config.
- Support BackstopJS visual regression.
- Build scenario/viewport config.
- Use the site's URLs and breakpoints.
- Depend on core Breakpoint.
- Provide its own permissions.
- Catch unintended visual changes.
- Gate the generator to developers.
- Have no content-access role beyond permission.
- Configure at the settings form.
- Bootstrap test config.
- Produce a config file.
- Read site structure for scenarios.
- Configure the scenarios.
- Generate visual tests config.
- Support regression testing.
- Build test scenarios.
- Configure viewports.
- Generate the config.
- Set up BackstopJS.
