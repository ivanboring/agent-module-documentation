<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Taxonomy Set Lineage adds a term's ancestors automatically when the term is selected.

---

Hierarchical vocabularies create a recurring problem: an editor tags an article with *Primary schools*, and a listing filtered by *Education* misses it, because nothing said the article was about education. The editor knows the hierarchy; the data does not.

The two usual answers are both bad. Ask editors to select every ancestor, and they will forget. Query the hierarchy at read time, and every listing pays for a recursive lookup.

Materialising the ancestors on save is the third option and generally the right one: the editor picks the specific term, the data records the whole lineage, and every consumer — Views, facets, search indexes, feeds — sees it without knowing the vocabulary is hierarchical.

**Two things follow from materialising, and both need a plan.** The stored lineage is a **copy**, so moving a term in the hierarchy leaves existing content pointing at the old ancestry until something re-saves it — check whether the module reacts to term moves, and if not, that a re-save job exists. And **removing an ancestor is ambiguous**: if an editor deletes *Education* from an article still tagged *Primary schools*, does it come back on the next save? Whichever the module does, editors should know, because a field that silently re-adds what someone removed is a field they stop trusting.

---

- Add ancestor terms automatically.
- Make a specific tag appear in a broad listing.
- Avoid asking editors to select every parent.
- Avoid recursive lookups at read time.
- Let facets see the whole lineage.
- Feed a search index with ancestors.
- Check what happens when a term moves.
- Plan a re-save job after hierarchy changes.
- Decide whether a removed ancestor returns.
- Tell editors what the field does.
- Choose which vocabularies get lineage.
- Audit content tagged before enabling it.
- Backfill lineage on existing content.
- Document the module's behaviour for the team.
- Review it during a site audit.
- Verify its assumptions after an upgrade.
