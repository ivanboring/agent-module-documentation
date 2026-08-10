<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Simple AVS provides a simple, cookie/session-based age verification gate with themable overlay.

---

Simple AVS provides a **cookie/session-based age-verification gate** — a themable "confirm you are over
N" overlay shown before content, for sites that need an age prompt. It provides its own permissions, in the Age
Verification package.

Use it to show an age-verification prompt. Understand its nature clearly (reviewed). Its token mechanism is
sound (`bin2hex(random_bytes(16))`, one-time consumed from the session, no timing/`==` weakness). **But the
gate is purely advisory client-side UX — it is NOT access control.** The page content is rendered in full HTML
and the gate is only a **JS overlay** (attached via `hook_page_attachments`), so disabling JavaScript reveals
everything; and the "yes, I'm old enough" path is **self-asserted** — the controller marks the session passed
with **no actual age check** (and the date-of-birth path trusts an attacker-supplied DOB). So it satisfies a
"we showed an age prompt" requirement but must **never** be relied on to protect content from
under-age/unauthorized access — use real access control (and server-side content gating) for that. It has no
real access-control role. Configure the age gate.

---

- Show an age-verification prompt.
- Use a cookie/session gate.
- Provide a themable overlay.
- Generate a sound one-time token.
- TREAT it as advisory UX, NOT access control.
- Know content is full HTML behind a JS overlay.
- Know the yes path does no age check.
- Know the DOB is attacker-supplied.
- NEVER rely on it to protect content.
- Use real access control for protection.
- Provide its own permissions.
- Configure the age gate.
- Handle age verification.
- Show the prompt.
- Configure the overlay.
- Gate by age (advisory).
- Handle the gate.
- Prompt for age.
- Not treat as access control.
- Provide an age prompt.
