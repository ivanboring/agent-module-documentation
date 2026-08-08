<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Backstop Generator — agent index

Generates **backstop.json config files for BackstopJS** visual-regression testing (scenarios/viewports from
the site's URLs + breakpoints). Depends on core `breakpoint`; provides permissions. Config at
`backstop_generator.settings_form`. Version **2.0.2**. Core `^10||^11`.

Developer/testing — produces a config file (reads site structure); gate the permission to developers. No
content-access role beyond permission.
