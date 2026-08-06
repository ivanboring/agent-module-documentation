<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Prev Next (prev_next) — agent index

Fast **previous/next node** API, precomputed rather than queried live.
Version **8.x-2.0-beta1** (**beta**). Core `^8 || ^9 || ^10 || ^11`. No dependencies.

The point is scale: computed live, previous/next is a whole-table ordered query per article page,
and it gets slower as the archive grows.

**Two consequences of precomputation:** the relationships must be maintained on **create, delete,
unpublish and date change**, not only on save — check all four; and **access is what a precomputed
neighbour cannot answer generically** — test with an unpublished or restricted node in the sequence
to see whether the link skips it.