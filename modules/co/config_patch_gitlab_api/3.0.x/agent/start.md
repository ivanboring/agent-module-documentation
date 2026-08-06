<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Config Patch GitLab API (config_patch_gitlab_api) — agent index

Output plugin for **config_patch**: creates a branch on GitLab and pushes the config diff to it.
Configure at `config_patch_gitlab_api.credentials`. Version **3.0.0-alpha3** (**alpha**).
Core `^10 || ^11`. Depends on `config_patch:config_patch`.

Permission: `administer config_patch_gitlab_api` — **`restrict access: true`**.

Classes: `Gitlab/ConfigPatchGitlabClient` + factory,
`Form/ConfigPatchGitlabApiCredentialsForm`, `Form/ConfigPatchGitlabApiProjectBranchForm`,
`Controller/ProjectsAutoCompleteController`.

**Credential warning to state every time.** The token required is a GitLab **project access token
with `api` and `write_repository` scopes** — it can push to the repository. It is collected in a
plain `'#type' => 'textfield'`, stored in configuration, and re-rendered as `#default_value` on
every visit, so the live token is in the credentials page HTML. It also lands in config exports
and database dumps. Prefer an environment variable behind a **Key** entity; otherwise exclude the
config object from exports and rotate on suspicion.

Alpha release on a feature that **writes to your repository** — test against a scratch project.