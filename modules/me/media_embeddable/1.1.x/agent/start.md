<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media: Embeddable (media_embeddable) — agent index

Media type whose **source is a block of HTML**, so a third-party embed becomes a reusable media
entity. Depends on core `media`. Settings at `/admin/config/media/…`;
`administer media embeddable` is **`restrict access: true`**. Version **1.1.2**.
Core requirement `^10 || ^11`.

**Treat that permission as the module's defining characteristic, not an incidental setting.**
A stored, reusable block of arbitrary HTML is a stored, reusable block of **arbitrary JavaScript**.
Whoever may create these entities can execute code in the browser of every visitor to **every page
referencing them** — and it does **not** pass through a text format's filtering the way pasted
markup would. Restrict creation to the people you would trust to deploy code.

**What it genuinely fixes:** an embed pasted into a body field cannot be reused, cannot be found
again, and cannot be updated in one place when the provider changes their code. As a media entity
it is in the library, referenced from fields, searchable, and updated once.

**Also a consent question.** The provider's script sees every visitor — it belongs behind the
consent manager exactly as an analytics tag does.
