# Configuration

Before you can export content, you need to tell the module which GitLab
repository to target, give it an access token, and decide which roles may trigger
exports. The token is a secret — the sections below cover both the settings form
and how to keep that token out of your codebase.

## Open the settings form

Log in as a user with the **Administer site configuration** permission and open
the module's settings page from the admin area. There you configure:

- **GitLab repository** — the target GitLab project the merge requests are opened
  against (typically the project URL or ID, per your GitLab setup).
- **API token** — a GitLab personal or project access token with rights to create
  branches and merge requests in that repository.
- **Export path** — the path within the repository where the exported content
  packages should be written.

Two permissions govern the module: **Administer site configuration** (core) gates
the settings page, and **Export content to GitLab API**
(`export content to gitlab api`) controls who may run the export action from the
content overview. Grant the export permission to the editor/administrator roles
that should be allowed to contribute content, under **People → Permissions**.

## Store the GitLab token securely

A GitLab access token grants write access to your repository, so never hard-code
it or commit it to version control. Store it in an environment variable and, where
the module accepts one, reference it through a **Key** entity.

1. **Save the token as a DDEV environment variable** (from the host):

   ```bash
   ddev dotenv set .ddev/.env --gitlab-api-token=<your-token>
   ddev restart
   ```

   The flag `--gitlab-api-token` becomes the variable `GITLAB_API_TOKEN`. Keep
   `.ddev/.env` out of version control.

2. **Confirm it's present in the container without printing its value:**

   ```bash
   ddev exec 'test -n "$GITLAB_API_TOKEN"'
   ```

   An exit status of `0` means it is set.

3. **Create a Key entity backed by that variable** (install the Key module first
   if it isn't enabled — `ddev composer require drupal/key` and
   `ddev drush en key -y`):

   ```bash
   ddev drush key:save gitlab_api_token \
     --label='GitLab API Token' \
     --key-type=authentication \
     --key-provider=env \
     --key-provider-settings='{"env_variable":"GITLAB_API_TOKEN","base64_encoded":false,"strip_line_breaks":true}' \
     --key-input=none -y
   ```

   Then select that Key on the module's settings form if it offers a Key field. If
   this release only accepts the token pasted directly into the form, still keep
   the master copy in the environment variable / your secrets manager rather than
   in any committed config, and rotate it in GitLab if it is ever exposed.

## Save

Save the settings form. You can now run the export from **Content**
(`/admin/content`) via the Bulk Operations / Actions dropdown, as described in the
main guide's [How to use it](../index.md#how-to-use-it) section.
