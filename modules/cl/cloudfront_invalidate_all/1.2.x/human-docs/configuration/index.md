# Configuration

There are three parts: tell the module which CloudFront distribution to clear,
make sure AWS credentials are available from your environment, and (optionally)
adjust which cache tags are ignored.

## Set the distribution ID

The module does not have a field for AWS keys, but it does need to know your
**distribution ID**. The usual approach is to set it in `settings.php`, injected
from an environment variable:

```php
$config['cloudfront_invalidate_all.settings']['distribution_id'] = getenv('DISTRIBUTION_ID');
```

You can also hard‑code the ID there, or save it to configuration — but reading it
from an environment variable keeps it out of committed config and lets each
environment target its own distribution.

## Provide AWS credentials via your environment

Credentials are **never entered in Drupal**. The module assumes your setup already
has AWS access through one of the standard mechanisms:

- The **AWS metadata service** — an IAM role attached to the EC2/ECS instance
  (the most secure option, since no keys are stored anywhere).
- **Environment variables** — the standard AWS SDK variables.

> **Least privilege.** Scope the IAM permissions to just
> `cloudfront:CreateInvalidation` on the one distribution this site clears. A token
> or role that can only create invalidations on a single distribution limits the
> blast radius if it is ever exposed. Store any AWS access key/secret as secrets
> (environment/IAM/Key), never in code or config.

## Tune the cache‑tag black list

Many of Drupal's cache‑invalidation tags are irrelevant to CloudFront and should
*not* trigger a full CDN clear. The module ships with a comprehensive
pre‑configured **black list** of such tags, and you can adjust it on the module's
**settings form** to add or remove tags for your site. This is your main lever for
controlling how often the wildcard invalidation actually fires.

## How it behaves

Once the distribution ID is set and AWS credentials are available, the module
issues a wildcard `/*` invalidation against the distribution whenever Drupal
invalidates its cache (except for tags on the black list). Because a wildcard
invalidation clears everything and carries an AWS cost at high frequency, keep the
black list tuned — and remember this approach only suits small sites. For anything
larger, move to the Purge module with `cloudfront_purger`.
