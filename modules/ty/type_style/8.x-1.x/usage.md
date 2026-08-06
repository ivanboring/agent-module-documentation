<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Type Style adds configuration for styling entity bundles distinctly — a colour or visual marker per content type, moderation state or other bundle.

---

On a site with twenty content types, an editor's working day involves telling them apart constantly: in the content listing, in a reference autocomplete, in a moderation queue, in search results, on the page they have just opened. Text alone does that poorly, because a label is read and a colour is recognised — which is why every issue tracker colours its ticket types and every calendar colours its event categories. Giving each bundle a visual identity in the administrative interface is a small change that makes a large content model navigable, and the `type_style_moderation` submodule extends the same idea to workflow states, where the distinction people most need at a glance is draft versus published. Version **8.x-1.2** on `^8` through `^11`, with a `type_style_example` submodule. Two things determine whether it helps or hinders. **Colour alone fails a substantial minority** — around one in twelve men has some form of colour vision deficiency, and red-versus-green is the pair most often chosen and least often distinguishable — so a bundle's marker needs a second channel, whether a label, an icon or a shape, and that is a requirement rather than a refinement. And **a palette needs an owner**: eight thoughtfully chosen colours make a listing readable, and twenty arbitrary ones make it noise, so the value depends on someone deciding the set rather than each content type being given a colour when it is created.

---

- Colour-code content types in listings.
- Distinguish draft from published visually.
- Mark event types in a moderation queue.
- Give each bundle a visual identity.
- Improve a large content model's usability.
- Distinguish types in an autocomplete.
- Colour moderation states.
- Help editors scan a content listing.
- Mark a restricted content type.
- Distinguish media types visually.
- Improve editorial orientation.
- Mark taxonomy vocabularies distinctly.
- Colour a workflow state.
- Improve a busy admin interface.
- Distinguish paragraph types.
- Mark content types in search results.
- Support a large editorial team.
- Improve scanning of a moderation dashboard.
