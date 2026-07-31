<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
# Search API OpenSearch AWS Signature Connector — agent index

Submodule of Search API OpenSearch. Adds one OpenSearch **connector plugin**, id
**`aws_signature`**, that signs requests to Amazon OpenSearch Service with AWS Signature v4. No
settings page, no permissions, no plugin types. Requires the `aws/aws-sdk-php` library
(`hook_requirements` blocks install without it).

## Use it

On an OpenSearch-backed Search API **server** (`search_api.server.<id>`) set
`backend_config.connector` to `aws_signature`. Connector config
(`plugin.plugin_configuration.opensearch_connector.aws_signature`):

```yaml
url: 'https://search-mydomain.eu-west-1.es.amazonaws.com'
ssl_verification: true
api_key: ''        # AWS access key (leave blank + inject via settings.php)
api_secret: ''     # AWS secret key
aws_region: 'eu-west-1'
```

The plugin extends `StandardConnector`; internally it builds an `auth_aws` client option from
`aws_region` + `api_key` + `api_secret` (class
`Drupal\search_api_aws_signature_connector\Plugin\OpenSearch\Connector\AwsSignatureConnector`).

## Secrets

AWS keys are secrets. Leave `api_key`/`api_secret`/`aws_region` blank in the UI and set them in
`settings.php`, e.g.
`$config['search_api.server.<id>']['backend_config']['connector_config']['aws_region'] = 'eu-west-1';`

See the parent module's `configure/backend.md` for the full server/backend model. This site has
no live AWS OpenSearch domain — reason about the connector config, not live requests.
