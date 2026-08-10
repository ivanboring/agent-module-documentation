<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Accessible File Manager provides file inventory, usage control and download tracking.

---

Accessible File Manager **provides a file inventory, usage control and download tracking** — an admin UI to
see all managed files, their usage, and download counts, with bulk operations, for governing a site's files. It
depends on core File, Field, Media, Views plus Token and Views Bulk Operations, provides its own permissions, in
the Media package.

Use it to audit/manage files. It is a media/administration tool and it is **properly access-controlled**: every
route is gated by a specific permission (`access accessible file manager`, `access files overview`, `view managed
file download counts`, `administer site configuration`), and it includes a **PrivateHtaccessSecurityGuard** that
maintains the `private://` directory's `.htaccess` (a security-positive that helps keep private files
non-directly-servable). Grant the permissions to trusted admins. It has no unauthenticated surface. Configure the
file manager.

---

- Provide a file inventory/usage manager.
- Track download counts.
- Offer bulk operations.
- Depend on core File/Media/Views + VBO.
- Provide its own permissions.
- Govern site files.
- Gate every route by a specific permission.
- Guard the private:// .htaccess (security-positive).
- Grant the permissions to trusted admins.
- Have no unauthenticated surface.
- Configure the file manager.
- Handle file management.
- Audit files.
- Configure the manager.
- Manage files.
- Track downloads.
- Handle the inventory.
- Control files.
- Restrict the permissions.
- Provide file management.
