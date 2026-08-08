<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Cloner — agent index

A pluggable **entity clone system** for duplicating entities (configurable field/reference handling). Requires
PHP 8.1; provides permissions. `cloner_examples` submodule. Version **3.0.0-alpha2**. Core `^9.5||^10||^11`.

Content-editing — creates new entities from existing ones (governed by normal **create access** + its
permission; gate who can clone). No access role beyond that.
