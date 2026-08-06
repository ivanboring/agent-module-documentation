<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# LTI Tool Provider (lti_tool_provider) — agent index

Makes Drupal an **LTI tool** so an LMS (Moodle, Canvas, Blackboard) can launch into it with the
learner authenticated and their role carried across. Submodules: `_provision` (account creation),
`_roles` (LTI→Drupal role mapping), `_attributes` (profile data), `_content` (launch→content).
Requires core `options` and **`key`**. Version **3.0.0**. Core requirement `^10.3 || ^11`.

**Installation note:** 3.0.0 requires the PHP **`ext-oauth`** extension — `composer require` fails
without it. In DDEV: `ddev config --webimage-extra-packages='php${DDEV_PHP_VERSION}-oauth'`, then
`ddev restart`.

**The security weight is the launch signature, and it is the whole trust model.** A launch request
**asserts an identity and a role**; if the signature check is weak, anyone who can reach the
endpoint can claim to be an **instructor**.

**Three things follow:**
1. **Verify signature validation and consumer-secret handling** on the specific release rather than
   assuming.
2. **Role mapping is a privilege decision.** Mapping LTI `Instructor` onto a Drupal role with
   content permissions means **the LMS decides who gets them**.
3. **Replay protection matters.** LTI 1.x launches carry a **nonce and timestamp** precisely so a
   captured launch cannot be replayed — a provider that does not track nonces accepts one.

Routes use `_custom_access` with a dedicated `lti_auth_v1p0` authentication provider and
`no-cache`, which is the right shape.
