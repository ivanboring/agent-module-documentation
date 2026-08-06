<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Number Formatter (number_formatter) — agent index

Reusable `number_format` **config entities** plus a field formatter that applies one.
Manage at `entity.number_format.collection`. Version **2.1.0**.
Core `^8 || ^9 || ^10 || ^11 || ^12`. Depends on `field`. No permissions of its own.

Plugin: `Plugin/Field/FieldFormatter/NumberFormatter`.

The point over core's number formatters: core stores settings **per field display**, so the same
decimals/separators/prefix/suffix are repeated everywhere and change together only by hand. Here
the format is a config entity — define once, point many fields at it, change in one place. Formats
export and diff like any other config.

`test_dependencies: token` — token support appears in tests only; do not promise it as a feature
without checking the installed release.