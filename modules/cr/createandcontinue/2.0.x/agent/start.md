<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Create and Continue (createandcontinue) — agent index

Adds a save button to the node form that **creates the node and returns a fresh empty form** of the
same type. No dependencies. Version **2.0.0**. Core requirement `^10 || ^11`.

**The loop it removes:** fill, save, land on the created node, navigate back to the add form, wait,
fill again. The navigation and page load are **pure overhead once per record**, and losing the form
costs more than the seconds — a person entering data works fastest when the interface does not
change under them.

**Two things worth attaching:**
1. **Confirmation still matters.** The created node disappears from view immediately, so the status
   message is the **only feedback** — it must name the node and link to it, or a mistake made forty
   times is discovered at the end.
2. **Ask whether an importer would serve better.** The pattern generalises (terms, media, users,
   custom entities usually have no equivalent button) — but **a spreadsheet and a migration beat
   forty forms whenever the data already exists somewhere**.
