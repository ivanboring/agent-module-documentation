<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Import (confi) — agent index

A more **granular configuration import** tool than core's all-or-nothing `config:import`.
Version **4.2.0**. Core `^11`. **Machine name `config_import`** (project `confi`).

**Consequential tool:** config import can change permissions, roles, fields, access rules — a
granular importer makes it easier to import the *wrong* thing too. Restrict to trusted admins,
review what an import will change, treat it as deliberate deployment. Blast radius of a bad import
is site-wide.