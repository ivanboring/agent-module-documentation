<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Exports content to a GitLab repository via the GitLab API (commits / merge requests).

---

Content Patch GitLab API provides content export via the GitLab API — serialising content entities to YAML and pushing them to a GitLab project (creating commits and merge requests through the GitLab REST API), so content changes can be captured as patches in version control for review/deployment.

The GitLab URL, project id and access token are admin-configured; export is gated by `administer site configuration` and `export content to gitlab api` permissions. Store the GitLab token securely (env-backed). Depends on core `serialization`; supports Drupal 10.5+ and 11.2+.

---

- Export content via the GitLab API.
- Serialise content to YAML.
- Create GitLab commits.
- Open merge requests.
- Capture content as patches.
- Support review/deployment.
- Gate export by permissions.
- Store the GitLab token securely.
- Depend on core `serialization`.
- Support Drupal 10.5+ and 11.2+.
- Configure the GitLab connection.
- Push content to GitLab
- Handle content export
- Version content
- Support Drupal.
