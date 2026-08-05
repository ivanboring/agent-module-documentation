<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Webform Quiz Elements (webform_quiz_elements) — agent index

Quiz-style elements (questions with correct answers, scoring) for **Webform**. Depends on
`webform`. Core requirement `^10 || ^11`.

Key facts:
- **The appeal is reuse:** a quiz becomes a webform, so conditional logic, multi-step, access
  control, handlers and exports all apply unchanged. That is why this exists alongside the
  dedicated quiz modules, which bring their own content types and result storage.
- **Be clear about stakes.** Correct answers are part of the **form definition**, so anyone who can
  inspect the rendered form or its configuration may be able to see them.
  - *Low-stakes* (knowledge check, engagement quiz, self-assessment): fine, and the convenience is
    the point.
  - *Consequential* (certification, recruitment, anything graded): verify where the answer key
    actually lives and where scoring happens before relying on it. Do not assume server-side.
