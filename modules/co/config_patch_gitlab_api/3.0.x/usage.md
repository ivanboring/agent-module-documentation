<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Config Patch GitLab API takes the configuration diff that Config Patch produces and pushes it to GitLab as a branch, so a change made in the admin UI arrives in the repository as reviewable code.

---

Configuration management in Drupal has a persistent gap: config is code, but it is edited through forms. The usual workflows are to forbid production config changes (and lose the UI's value) or to export and commit by hand (and lose changes when someone forgets). Config Patch closes the loop by generating a patch from the live changes; this module is the output plugin that delivers it — `ConfigPatchGitlabClient` creates a branch on any GitLab instance and pushes the patch to it, with an autocomplete controller for picking the target project and a form for choosing project and branch.

The result is a review workflow that matches how the rest of the codebase is handled: a site builder makes a change, the patch appears as a branch, a developer opens a merge request, and the change is reviewed and deployed rather than discovered later in a diff.

**Read this before configuring it.** The GitLab credential is a **project access token with `api` and `write_repository` scopes** — the module's own field description says so. That token can push to the repository. It is collected in a plain `'#type' => 'textfield'`, stored in configuration, and rendered back as the field's `#default_value` on every visit to the credentials form, so the live token appears in the page HTML for anyone who can open that page. The permission `administer config_patch_gitlab_api` is `restrict access: true`, which limits who that is, but the token still lands in config exports and database dumps. If the site has the Key module, put the token in an environment variable and reference it through a Key; failing that, keep the credentials form's config object out of exports and rotate the token on any suspicion.

The release is **3.0.0-alpha3** — an alpha, on a feature that writes to your repository. Test it against a scratch project first.

---

- Push a configuration change to GitLab as a branch.
- Turn an admin-UI config edit into a merge request.
- Review configuration changes as code.
- Capture production config drift into the repository.
- Let site builders change config without losing it.
- Target a specific GitLab project and branch.
- Pick the target project with autocomplete.
- Work against a self-hosted GitLab instance.
- Keep configuration deployment inside existing review process.
- Avoid manual export-and-commit steps.
- Detect config changed on production but not in code.
- Stage config changes for a release.
- Restrict who may configure the GitLab connection.
- Store the access token outside exported configuration.
- Test against a scratch project before adopting.
- Rotate the project access token safely.