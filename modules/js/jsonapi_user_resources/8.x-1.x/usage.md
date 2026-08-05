<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
JSON:API User Resources adds user-related endpoints to JSON:API — registration in particular — which core's JSON:API deliberately does not provide.

---

Core's JSON:API exposes entities as resources and follows entity access strictly, which is the right default and leaves a specific gap for decoupled front ends: **there is no way to register**. Creating a user is not an ordinary entity POST — it involves the registration settings, the approval mode, the password policy, the activation email and a set of rules that live in the user module rather than in the entity API — so a front end that needs a signup form has historically had to call a custom controller or fall back to Drupal's own form. This module fills that in, built on **`jsonapi_resources`**, the contrib framework for adding non-entity resources to JSON:API in a way that respects its conventions rather than bolting a REST controller alongside. Version **8.x-1.0-beta2** — a **beta** — on core `^10.1 || ^11`. Because the whole point is an unauthenticated write endpoint, four things have to be checked on the specific site rather than assumed. Whether the endpoint **honours `user.settings.register`**, so a site set to admin-only does not accept registrations through the API. Whether it respects **admin approval**, creating blocked accounts rather than active ones. Whether **flood control** applies, since an unauthenticated create endpoint without rate limiting is an invitation to automated signup. And whether **email verification** is enforced, because an API that returns a usable session on registration without verifying the address is a different security posture from the site's own form.

---

- Register users from a decoupled front end.
- Add a signup endpoint to JSON:API.
- Support a React or Vue registration form.
- Register from a mobile app.
- Avoid a custom registration controller.
- Follow JSON:API conventions for user creation.
- Support headless account management.
- Provide registration to a Next.js front end.
- Create accounts over an API.
- Support an app's onboarding flow.
- Extend JSON:API beyond entity resources.
- Add user endpoints consistently.
- Support a decoupled membership site.
- Register users from a partner system.
- Provide signup to a mobile client.
- Build a headless community site.
- Support a progressive web app's signup.
- Add API-driven account creation.
