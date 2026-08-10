<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config PR allows administrators to issue pull requests of configuration changes.

---

Config PR lets administrators **open pull requests of configuration changes** to a Git host — exporting
config changes and creating a PR/MR on GitHub, GitLab or Bitbucket (via provider submodules), so config
changes made in the UI can flow into a code-review/deployment workflow. It depends on core Config and Field,
provides its own permissions, in the Administration package.

Use it to push config changes to Git as PRs. It is a DevOps/administration feature. Security handling: it uses
**Git host API tokens** to create PRs — store those as **secrets** (env/Key, not committed config), and scope
the token to the least privilege needed. Note **exported configuration can contain sensitive values**
depending on your setup, so review what config is pushed and to which (private) repository. Gate its
permission to trusted operators. Configure the Git provider and token.

---

- Open config-change PRs to Git.
- Support GitHub/GitLab/Bitbucket.
- Flow UI config into code review.
- Depend on core Config and Field.
- Provide its own permissions.
- Export config changes.
- Store Git API tokens as secrets.
- Scope the token to least privilege.
- Review sensitive config before pushing.
- Push to a private repository.
- Gate the permission to trusted operators.
- Configure the Git provider and token.
- Handle config PRs.
- Create pull requests.
- Configure the provider.
- Push config.
- Handle the integration.
- Issue PRs.
- Secure the token.
- Provide config pull requests.
