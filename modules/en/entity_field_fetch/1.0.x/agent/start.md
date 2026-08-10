<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Entity Field Fetch — agent index

A field that **fetches/mirrors field values from OTHER entities** onto a host. Version **1.0.8**. Core
`^8||^9||^10||^11`.

Fields/content-display — **access caveat**: the fetch returns the source entity's field value **without checking
the source's view/field access**, so it shows to anyone who can view the **host**. Do NOT mirror restricted/
unpublished fields onto more-public hosts (the data leaks). No access role of its own.
