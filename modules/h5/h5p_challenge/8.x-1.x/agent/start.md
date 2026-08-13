<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# H5P Challenge (h5p_challenge) — agent index

**Turns any H5P content into a code-joined scoring challenge with xAPI results, leaderboards, CSV export and email notices.**

- **Version:** 8.x-1.x  •  core: `^10.2 || ^11`  •  php 8.1  •  depends on `h5p:h5p`  •  package: H5P
- **Configure:** `/admin/config/system/h5p_challenge` (perm *access administration pages*). Reports: `/admin/reports/h5p_challenge`.
- **Gameplay JSON routes (`_access: TRUE`):** `h5p_challenge/create-new.json`, `start-playing.json`, `set-finished.json`, `settings.json`, `{challenge}/results`, `{challenge}/results/csv`.
- **User routes:** `h5p_challenge/mine` (`_user_is_logged_in`); `{challenge}/end` & `{challenge}/delete` (`_custom_access`).
- **Service:** `h5p.challenge.default` (`H5PChallengeService`). Tables: `h5p_challenge`, `h5p_challenge_points`.
- **Submodule:** `h5p_challenge_rest` (needs `rest`) — read REST resources, e.g. `api/h5p_challenge/challenge/{uuid}/results` (paginated, from/until).

**Security:** gameplay endpoints are intentionally anonymous (`_access: TRUE`) and reCAPTCHA-guard challenge creation (server-side siteverify). They require a non-empty `token` GET param, BUT the real xAPI token check `\H5PCore::validToken('result',$token)` is **commented out** in the controller (`src/Controller/H5PChallengeController.php:90,238,312`), so any non-empty token passes → scores can be submitted for a known challenge/player UUID (integrity, not disclosure). `unserialize()` at `src/FetchClass/H5PChallenge.php:210` and `H5PChallengePoints.php:88` reads the module's own `serialize()` of validated int/array scalars — no object injection. Admin/config/report routes permission-gated.

See [configure/settings.md](configure/settings.md) and [api/endpoints.md](api/endpoints.md)
