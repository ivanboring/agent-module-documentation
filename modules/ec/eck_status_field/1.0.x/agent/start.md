<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# ECK Status Field — agent index

Adds a **status/published base field to ECK (Entity Construction Kit) entities** (draft/published on custom
entities). Depends on `eck`. Version **1.0.1**. Core `^8||^9||^10||^11`.

Content-modelling (access-relevant) — a status field is only meaningful if the ECK entity's **access respects
it** (ensure unpublished entities are hidden from unauthorized users). No access role of its own.
