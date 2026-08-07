<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Taxonomy Set Lineage (taxonomy_set_lineage) — agent index

Adds a term's **ancestors** automatically when the term is selected, in chosen vocabularies.
Version **2.0.3**. Core `^10 || ^11`.

Solves the recurring hierarchy problem — an article tagged *Primary schools* missing from an
*Education* listing — without asking editors to select every parent or making every listing pay for
a recursive lookup.

**Two consequences of materialising, both needing a plan:** the stored lineage is a **copy**, so
moving a term leaves existing content on the old ancestry until something re-saves it (check whether
the module reacts to term moves; if not, a re-save job); and **removing an ancestor is ambiguous** —
if an editor deletes *Education* from an article still tagged *Primary schools*, does it come back
on save? Whichever it does, **editors must know**, because a field that silently re-adds what
someone removed is a field they stop trusting.