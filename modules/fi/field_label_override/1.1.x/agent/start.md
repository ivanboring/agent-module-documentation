<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Field Label Override (field_label_override) — agent index

Overrides a field's **label per entity view display**, rather than once on the field configuration.
Package `Fields`. Version **1.1.0**. Core requirement `^10 || ^11`.

**The problem:** a field's label is set once and used everywhere, which stops being right as soon as
the field appears in different contexts. `field_start_date` may want "Start date" on the full node,
**"From"** in a compact card, **"Event begins"** in a listing where the label carries the meaning,
and nothing at all in a teaser.

**The workarounds all move an editorial decision into code:** a preprocess function per view mode, a
duplicate field with different wording, or hiding the label and putting it in the template. As a
**display setting** it is exportable and visible in **Manage Display**.

**Two things worth attaching:**
1. **A label is content in a multilingual site.** An override must be **translatable** the way the
   field's own label is — otherwise one language's wording appears in all of them, the commonest
   failure of configuration-level text on translated sites.
2. **The label is what a screen reader announces before the value.** An override chosen for **visual
   compactness** — "From" instead of "Start date" — is shorter **for everyone**, including the person
   with no surrounding layout to supply context. Keep the accessible name fuller than the visible
   one where the two can differ.
