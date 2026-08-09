<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Action Link — agent index

A framework for **customized links that perform actions** (flag/state toggle, workflow transition, field
update; AJAX; submodules for entity/field/formatter/workflow links). Depends on `declarative_form_ajax`.
Provides permissions. Version **1.0.0-beta1**. Core `^10.3||^11`.

Developer/site-building — action links **change state**: each action must be **access-controlled + CSRF-
protected** (its permissions gate actions; use CSRF tokens; ensure actions aren't forgeable).
