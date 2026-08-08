<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Upload Size Per Role sets the maximum file-upload size per user role, so different roles get different upload limits.

---

A blanket upload limit does not fit every role — trusted editors may need larger uploads than ordinary users, while keeping limits tight for the general public. Upload Size Per Role sets max upload size per role. It is a resource/abuse control: raising limits for trusted roles is fine, but the security-relevant direction is keeping limits low for untrusted roles, since large uploads consume storage and processing and can be an abuse vector. Confirm the per-role limits are set with untrusted roles bounded tightly, and remember this governs size, not file type — pair it with extension/type restrictions for the full upload-safety picture.

---

- Set upload size per role.
- Give editors larger uploads.
- Keep public upload limits low.
- Bound untrusted uploads.
- Configure per-role limits.
- Prevent large-upload abuse.
- Raise limits for trusted roles.
- Restrict anonymous uploads.
- Pair with extension limits.
- Control upload resource use.
- Set a tight default.
- Manage upload quotas by role.
- Enable when needed.
- Keep disabled otherwise.
- Restrict administration.
- Confirm on your site.
- Test before production.
- Review configuration.
- Pair with related modules.
- Verify theme fit.
- Match your use case.
- Confirm compatibility.