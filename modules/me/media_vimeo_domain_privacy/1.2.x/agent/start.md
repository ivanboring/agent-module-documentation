<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Media Vimeo Domain Privacy (media_vimeo_domain_privacy) — agent index

Makes core's media system work with Vimeo videos set to **domain-level privacy**. Depends on core
`media`. Version **1.2.0**. Core requirement `^8.8 || ^9 || ^10 || ^11`.

**The specific incompatibility it fixes:** core's remote video source uses **oEmbed**, and Vimeo's
oEmbed endpoint **refuses metadata for a domain-restricted video to an unauthenticated caller** —
the server making that request is not the browser on the allowed domain. So adding the video fails
where Drupal tries to fetch its title and thumbnail.

**Two things about the mechanism rather than the module:**
1. **Domain privacy is a deterrent, not an access control.** It is enforced by a **request header a
   determined person can set**, and the video URL still exists. It keeps a video off other people's
   sites; it does not keep it from someone who wants it. Vimeo's stronger options are **password
   protection** and **unlisted-with-hash** links — if the material is genuinely confidential, a
   domain allow-list is not the answer.
2. **An embedded player is still a third-party request** with cookies and a view reported to Vimeo.
   The consent question applies exactly as for a public video.
