<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Action Link creates customised links which perform actions on your site.

---

Action Link is a **framework for action-performing links** — customizable links that carry out an action
when clicked (toggle a flag/state, run a workflow transition, update a field), optionally via AJAX, with
submodules for entity links, field links, formatter links and workflow. It depends on Declarative Form Ajax,
provides its own permissions, in its package.

Use it to build action links (like Flag, but general). It is a developer/site-building framework. Security
note: an action link **changes state** when followed, so each action must be **access-controlled and
CSRF-protected** — Action Link's plugins should enforce who may perform the action (its permissions) and use
Drupal's CSRF token on the state-changing link/route; when building custom actions on it, ensure your action
checks access and isn't triggerable by a forged request. It ships permissions to gate actions. Configure the
action links.

---

- Create action-performing links.
- Toggle flags/state via a link.
- Run workflow transitions.
- Update fields via links.
- Support AJAX.
- Depend on Declarative Form Ajax.
- ACCESS-control each action.
- CSRF-protect state-changing links.
- Ensure actions aren't forgeable.
- Provide its own permissions.
- Configure the action links.
- Handle action links.
- Perform actions.
- Configure actions.
- Build action links.
- Gate the actions.
- Handle the framework.
- Add action links.
- Secure the actions.
- Provide action links.
