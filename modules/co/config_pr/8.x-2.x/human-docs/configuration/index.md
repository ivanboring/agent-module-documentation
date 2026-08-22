# Configuration

Configuring Config PR means connecting it to your Git host with an API token and then using
the Pull Request tab to push configuration. **Read the security section before you enter a
token.**

## Who can configure and use it

Config PR provides its own permission for issuing pull requests. Because a pull request
pushes your configuration to a repository using a privileged token, grant that permission
**only to trusted operators**.

## Step 1 — create an API token on your Git host

On your Git host (GitHub, GitLab, or Bitbucket), create an access token that can create
branches and pull/merge requests on the target repository. **Scope it to the least
privilege needed** — ideally limited to the single repository Config PR will push to, rather
than a broad account‑wide token. Copy the token; most hosts show it only once.

## Step 2 — store the token as a secret (do this first)

Treat the Git host token as a secret: it can push to your repository. Do **not** commit it
or paste it into exported configuration.

- **Prefer an environment variable behind a [Key](https://www.drupal.org/project/key)
  entity** where your setup allows it, so the value lives in the environment rather than in
  configuration that could be exported to Git. On DDEV, store it out of version control with
  `ddev dotenv set .ddev/.env --git-token=<value>` and then `ddev restart`; verify it is
  present without printing it via `ddev exec 'test -n "$GIT_TOKEN"'` (exit status 0 means it
  is set). Never commit `.ddev/.env`.
- If the token must be stored in configuration, keep that configuration object **out of your
  exports** (for example with [Config Ignore](https://www.drupal.org/project/config_ignore))
  and **rotate the token** immediately if you suspect it has been exposed.

## Step 3 — connect the repository

Configure the Git provider for the submodule you enabled: the repository URL and the API
token (or the Key that holds it). Config PR checks that the token can authenticate against
the repository before it will create pull requests.

## Step 4 — issue a pull request

1. Make your configuration changes through the Drupal admin UI as normal.
2. Go to the Configuration Management area and open the **Pull Request** tab.
3. **Select the configuration items** you want to keep in the pull request.
4. Confirm the **repository URL**, and give the request a **title** and **description**.
5. Submit. Config PR authenticates, pushes the selected configuration, and creates the pull
   request on your Git host. It can also notify developers that a pull request was created.
6. A reviewer reviews, comments, and merges or rejects the request on the host, exactly as
   with any other code change.

## A note on what you push

Depending on your site, **exported configuration can contain sensitive values**. Before
pushing, review the configuration you have selected, and push to a **private repository**.
Combined with careful token scoping and secret storage, that keeps Config PR's convenience
from becoming an exposure.
