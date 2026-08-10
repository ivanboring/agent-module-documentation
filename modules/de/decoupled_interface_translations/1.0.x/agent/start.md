<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Decoupled Interface Translations — agent index

Exposes **reading/writing of interface (locale) translations for decoupled front-ends** (sync UI strings).
Depends on core `locale`. Provides permissions. Version **1.0.0**. Core `^8||^9||^10||^11`.

Multilingual/decoupled — **gate the write permission** (strings output to all users; injection risk); reading is
low-sensitivity. No broader access role beyond permissions.
