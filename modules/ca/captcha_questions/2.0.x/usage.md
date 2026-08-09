<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
CAPTCHA Questions requires users to answer a configurable question.

---

CAPTCHA Questions provides a **question-and-answer CAPTCHA** — it requires users to answer a configurable
question (e.g. "What is the capital of France?") to submit a form, blocking bots that can't answer. It ships a
`captcha_questions_dblog` submodule (logging), provides its own permissions, in the Spam control package.

Use it as an anti-spam challenge on forms. This is a **security/anti-abuse-positive** feature (CAPTCHA). Set
expectations: a static Q&A CAPTCHA is **weak against targeted attackers** (a fixed question/answer can be
scripted once known and is easily OCR-free), so it's best for **low-sophistication bot spam**, not determined
adversaries — rotate questions, and combine with stronger controls (rate limiting, honeypot, or a
cryptographic CAPTCHA) where abuse is serious. It integrates via the CAPTCHA module and has no access-control
role beyond its permission. Configure the questions.

---

- Require answering a question to submit.
- Block bots with Q&A.
- Offer a configurable question CAPTCHA.
- Ship a logging submodule.
- Provide its own permissions.
- Serve as an anti-spam challenge.
- KNOW a static Q&A CAPTCHA is weak vs targeted attackers.
- Use it for low-sophistication bot spam.
- Rotate questions / combine with stronger controls.
- Integrate via the CAPTCHA module.
- Have no access-control role beyond permission.
- Configure the questions.
- Handle question CAPTCHA.
- Challenge users.
- Configure challenges.
- Block form spam.
- Handle the CAPTCHA.
- Add a challenge.
- Set the questions.
- Provide a question CAPTCHA.
