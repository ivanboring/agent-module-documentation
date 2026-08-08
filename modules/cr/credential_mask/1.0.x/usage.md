<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Credential Mask prevents credentials and secret keys from being exported via config-sync processes.

---

Credential Mask keeps **credentials and secret keys out of exported configuration** — during config
export/sync it masks configured sensitive values (defined in `credential_mask.sensitive_config`) so secrets
don't get written into the synced YAML that typically lands in version control. It is configured via that
sensitive-config list, in the Config package.

Use it to stop secrets leaking into your config export / Git. This is a **security-positive** feature: exported
config committed to a repo is a very common secret-leak channel, and masking those keys reduces that exposure.
Use it as **defense-in-depth**, not the sole control — the real fix is to keep secrets out of config entirely
(environment variables / Key module), and you must configure **which** keys are sensitive (anything not listed
is still exported). It has no access-control role. Configure the sensitive-config list.

---

- Keep secrets out of exported config.
- Mask sensitive values on config export.
- Prevent secret leaks into Git.
- Use the sensitive_config list.
- Reduce a common leak channel.
- Mask credentials/keys.
- Use it as defense-in-depth.
- Keep secrets out of config entirely (env/Key).
- Configure which keys are sensitive.
- Have no access-control role.
- Configure the list.
- Handle credential masking.
- Mask config secrets.
- Configure masking.
- Protect exported config.
- Handle the masking.
- Prevent config leaks.
- Mask keys.
- Configure sensitive config.
- Guard secrets in config.
