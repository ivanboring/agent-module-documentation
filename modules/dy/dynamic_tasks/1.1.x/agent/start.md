<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Dynamic Local Tasks — agent index

Lets admins **create dynamic local tasks (tabs) for any route** via configuration (custom tabs without code).
Config at `entity.local_task.collection`; provides permissions. Version **1.1.5**. Core `^9||^10||^11`.

Admin/UI — adds local-task links; tabs point to routes that enforce their own access (a tab doesn't grant
access). No access role beyond permission.
