<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# GlobalLink Connect (globallink) — agent index

**TMGMT translator plugin** for GlobalLink / translations.com. Version **8.x-2.7**.
Core `^8.8 || ^9 || ^10 || ^11` (unusually wide — carried forward, not rewritten).
Depends on `tmgmt` and `tmgmt_file`. No routes or permissions of its own — it plugs into TMGMT's UI.

**Also requires the vendor library** `translations-com/globallink-connect-api-php`, installed via
Composer.

Only useful if the site's translation work is already contracted to translations.com.

Credentials live in **TMGMT translator settings**, which are configuration entities — check what a
config export contains before committing, and prefer env vars where the deployment allows.

`GlobalLinkTranslator` maps TMGMT job settings (`due`, `required_by`, `urgent`, `comment`,
submitter) onto GlobalLink project fields; the vendor-side project must match. Most setup problems
are in that mapping.