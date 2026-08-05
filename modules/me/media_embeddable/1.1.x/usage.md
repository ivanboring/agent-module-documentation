<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Media: Embeddable adds a media type whose source is a block of HTML, so a third-party embed becomes a reusable media entity rather than a snippet pasted into body text.

---

Editors are given embed codes constantly — a video from a platform core's oEmbed does not cover, a map, a form from a survey tool, a booking widget, a data visualisation. Pasting that HTML into a body field puts markup into content where it cannot be reused, cannot be found again, and cannot be updated in one place when the provider changes their code. Making it a **media entity** fixes all three: it sits in the media library, it is referenced from fields, it has a name and can be searched for, and updating it updates every page using it. Version **1.1.2** on core `^10 || ^11`, depending on core `media`, with `administer media embeddable` marked `restrict access: true`. That restriction is the essential part and should be treated as the module's defining characteristic rather than an incidental setting: **a stored, reusable block of arbitrary HTML is a stored, reusable block of arbitrary JavaScript**, so whoever can create these media entities can execute code in the browser of every visitor to every page referencing them. That is site takeover in the wrong hands, and it does not go through a text format's filtering the way pasted markup would. Two practical consequences: keep creation of this media type to the same people you would trust to deploy code, and remember that **third-party embeds are a consent question** — the provider's script sees every visitor, so it belongs behind the consent manager exactly as an analytics tag does.

---

- Embed a third-party widget as media.
- Reuse an embed code across pages.
- Update an embed in one place.
- Add a map to several pages.
- Embed a survey form.
- Store a booking widget as media.
- Add a data visualisation embed.
- Embed video from an unsupported platform.
- Keep embeds out of body fields.
- Find an embed in the media library.
- Reference an embed from a field.
- Manage embeds under editorial workflow.
- Replace an expired provider snippet globally.
- Embed a calendar widget.
- Add a chat widget to selected pages.
- Reuse a partner's embed.
- Track which pages use an embed.
- Standardise third-party embeds.
