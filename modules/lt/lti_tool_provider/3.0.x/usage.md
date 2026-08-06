<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
LTI Tool Provider makes Drupal an LTI tool, so a learning management system — Moodle, Canvas, Blackboard — can launch into it with the learner already authenticated and their role carried across.

---

LTI is how educational systems federate. A course in the LMS contains a link; a student clicks it; the LMS signs a launch request carrying who they are, which course they are in and what role they hold; the tool trusts that signature and shows them the right thing without a second login. For a university or training provider running Drupal alongside an LMS, that is the difference between a resource students actually reach and one behind a separate account. The submodules cover what a real integration needs: `lti_tool_provider_provision` creates local accounts, `lti_tool_provider_roles` maps LTI roles onto Drupal roles, `lti_tool_provider_attributes` carries profile data, and `lti_tool_provider_content` links launches to content. Version **3.0.0** on core `^10.3 || ^11`, requiring **`key`** for credential storage. **An installation note**: 3.0.0 requires the PHP **`ext-oauth`** extension, so `composer require` fails on an image without it — in DDEV, `ddev config --webimage-extra-packages='php${DDEV_PHP_VERSION}-oauth'` and a restart. **The security weight is the launch signature**, and it is the whole of the trust model: a launch request asserts an identity and a role, and if the signature check is weak then anyone who can reach the endpoint can claim to be an instructor. Three things follow. **Verify the signature validation and the consumer secret handling** on the specific release rather than assuming. **Role mapping is a privilege decision** — mapping the LTI `Instructor` role onto a Drupal role with content permissions means the LMS decides who gets them. And **replay protection matters**: LTI 1.x launches carry a nonce and timestamp precisely so a captured launch cannot be replayed, and a provider that does not track nonces accepts one.

---

- Launch Drupal content from Moodle.
- Integrate a course with Canvas.
- Authenticate learners from an LMS.
- Carry a student's role into Drupal.
- Provision accounts from LTI launches.
- Map LTI roles to Drupal roles.
- Embed a Drupal tool in a course.
- Avoid a second login for students.
- Support a university's LMS integration.
- Launch an assessment tool.
- Carry course context into Drupal.
- Support Blackboard integration.
- Provide a resource inside a course.
- Federate identity from an LMS.
- Support a training provider's platform.
- Launch a simulation from a course.
- Pass profile attributes from the LMS.
- Support an educational content platform.
