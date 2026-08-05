<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Instagram Media renders an Instagram feed in a Drupal block, pulling recent posts from the account you configure.

---

The module is block-shaped: `src/Plugin` supplies the block, `src/Service` the API client, `src/Hook` the integration, with templates and a `misc/` directory holding CSS and images. Its one permission, `administer instagram media block`, gates block administration rather than viewing. The dependency is core `block` alone, and the core range is `^9 || ^10 || ^11`. Three things determine whether this fits, and none of them are about the code. Instagram's Basic Display API — the usual route for "show my own recent posts" — has been **deprecated and shut down**, with the replacement paths being the Instagram Graph API for business and creator accounts or oEmbed for individual posts; any feed module in this space needs checking against what the platform currently permits, and a module last released some time ago may be integrating with an endpoint that no longer answers. Second, access tokens for these APIs are **long-lived credentials that expire and need refreshing**, so a feed that works at launch can silently stop weeks later — configure monitoring for it. Third, the token is a secret: on this repo's convention it belongs in an environment variable rather than exported configuration.

---

- Show recent Instagram posts on a site.
- Add a social feed block to a footer.
- Display a brand's Instagram grid.
- Show a campaign hashtag's posts.
- Give a marketing page social proof.
- Place the feed in any region.
- Style the feed with the supplied CSS.
- Show an event's photo stream.
- Keep social content current automatically.
- Add a feed without a third-party widget script.
- Restrict feed configuration by permission.
- Show a photographer's latest work.
- Complement a site's own gallery.
- Drive traffic to a social account.
- Display posts in a themed template.
- Support a restaurant or venue site.
- Show community content on a homepage.
- Refresh feed content on cron.
