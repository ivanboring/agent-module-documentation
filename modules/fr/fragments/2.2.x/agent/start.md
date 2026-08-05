<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Fragments (fragments) — agent index

Content entity type for **reusable content**: fielded, bundleable, **no route of its own**,
designed to be referenced. Fragment types at `/admin/structure/fragment_type`. Permissions include
`access fragments overview` and `administer fragment types`, both `restrict access: true`.
Version **2.2.0**. Core requirement `^10.3 || ^11`.

**Why it exists — the three existing answers are each a compromise:**
| | reusable | fielded | no URL/listing |
|---|:--:|:--:|:--:|
| **block content** | yes | yes | yes, but placement is *configuration* |
| **paragraphs** | awkward — owned by the parent | yes | yes |
| **nodes** | yes | yes | no — URL, listings, publishing apparatus |
| **fragments** | yes | yes | yes |

**Two things to settle when adopting it:**
1. **Where a fragment's access comes from.** A routeless entity still renders inside other
   entities — decide whether an **unpublished** fragment inside a **published** node is visible,
   and confirm JSON:API and search consumers agree.
2. **Reuse is the point and the failure mode.** Editing a fragment changes it everywhere. Editors
   need to see **what references it** before changing it.
