<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Telephone Plus (telephone_plus) — agent index

Field type for a phone number **plus a title, an extension and supplementary text**, rendered as
plain text or a **`tel:` link**. Depends on core `field` and `telephone`. Version **2.1.3**.
Core requirement `^9 || ^10 || ^11`.

**Why one field rather than several:** sites model this as a telephone field plus a separate text
field (cannot be rendered consistently) or as free text in a body field (cannot be linked, searched
or exported). Keeping the parts together means the display is configured **once**.

**Three things worth attaching:**
1. **The `tel:` link is the point on mobile** — the difference between a number a visitor **taps**
   and one they memorise and retype. The **`href` must be dialable** (digits and `+`, no spaces or
   brackets) even when the visible text is formatted for reading.
2. **An extension does not belong in the `tel:` href** without pause syntax (`,` or `;ext=`) —
   otherwise the link dials the switchboard and stops.
3. **Numbers are personal data when they belong to a person.** A staff directory publishing direct
   lines is a **disclosure decision** — and a supplementary-information field is exactly what makes
   it easy to get right, carrying *"reception will transfer you"* instead of the individual's number.
