<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
AWX / Ansible Tower Client lets Drupal trigger jobs on an AWX/Ansible Tower instance via its REST API.

---

AWX / Ansible Tower Client integrates Drupal with an AWX or Ansible Tower automation server by making REST API calls — typically to launch job templates, check status, or drive infrastructure automation from within Drupal. It bridges content/admin actions to Ansible-based operations.

The AWX endpoint and API token are configured in module settings; because launching Ansible jobs can change infrastructure, keep the credentials secure (env-backed) and restrict who can configure/trigger calls. Supports Drupal 10 and 11.

---

- Call the AWX / Ansible Tower REST API.
- Launch Ansible job templates.
- Check job status.
- Drive infrastructure automation from Drupal.
- Bridge Drupal actions to Ansible.
- Configure the AWX endpoint.
- Store the API token securely.
- Keep credentials env-backed.
- Restrict who can trigger calls.
- Support Drupal 10 and 11.
- Integrate with automation servers.
- Trigger jobs on events.
- Manage infrastructure operations.
- Treat job-launch as privileged.
- Connect Drupal to Ansible Tower.
- Support DevOps workflows.
- Automate provisioning tasks.
- Guard the AWX credentials.
