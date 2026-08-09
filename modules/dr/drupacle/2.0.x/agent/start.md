<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Drupacle — agent index

An **Oracle database connection tool** for Drupal (connect to / query an external Oracle DB). Provides
permissions. Version **2.0.4**. Core `^8||^9||^10||^11`.

Developer/integration — holds **Oracle credentials** (store as secrets, not committed config); restrict query
permissions; use **parameterized queries** (avoid SQL injection). No Drupal access role beyond permission.
