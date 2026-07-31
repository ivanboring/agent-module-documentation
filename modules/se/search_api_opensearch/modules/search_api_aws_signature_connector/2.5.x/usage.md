<!-- SPDX-License-Identifier: GPL-2.0-or-later -->
Search API OpenSearch AWS Signature Connector adds an `aws_signature` connector to Search API OpenSearch so Drupal can talk to Amazon OpenSearch Service using AWS Signature v4 request signing.

---

This submodule of Search API OpenSearch provides a single OpenSearch connector plugin, id `aws_signature`, that extends the module's `StandardConnector` and signs requests to the cluster with AWS Signature v4. Its connector config (schema `plugin.plugin_configuration.opensearch_connector.aws_signature`) adds `api_key` (AWS access key), `api_secret` (AWS secret key) and `aws_region` on top of the standard `url` and `ssl_verification`; internally it builds an `auth_aws` client option with the region, access key and secret. Because AWS access keys are secrets, both the keys and the region can be left blank in the UI and supplied instead through `settings.php` config overrides (e.g. `$config['search_api.server.<id>']['backend_config']['connector_config']['aws_region']`). The module requires the `aws/aws-sdk-php` library (its `hook_requirements` blocks installation with a clear message if the SDK is missing). You use it by selecting the "AWS Signature" connector on an OpenSearch-backed Search API server. It adds no permissions, no settings page and no plugin types of its own.

---

- Connect a Search API OpenSearch server to Amazon OpenSearch Service (managed AWS).
- Sign OpenSearch requests with AWS Signature v4 using IAM access keys.
- Configure the AWS region for the OpenSearch domain via the connector.
- Provide an AWS access key and secret for authenticated signed requests.
- Keep AWS credentials out of exported config by setting them in settings.php overrides.
- Set only the AWS region in the UI and inject keys per environment via config overrides.
- Use IAM-based access control on a managed OpenSearch cluster instead of basic auth.
- Switch an existing OpenSearch server from the standard connector to AWS-signed access.
- Point a Drupal search index at an AWS OpenSearch domain URL with signed auth.
- Run production search on AWS OpenSearch while keeping the same Search API index config.
- Rotate AWS keys per environment without touching the Search API index configuration.
- Satisfy AWS OpenSearch domains that require SigV4-signed requests for all traffic.
- Use the aws/aws-sdk-php credentials to authenticate the OpenSearch PHP client.
- Deploy the same OpenSearch config to staging/production with different AWS regions.
- Secure the OpenSearch connection to AWS without exposing a public basic-auth endpoint.
- Replace an Elasticsearch-on-AWS setup with OpenSearch Service using signed requests.
- Enable per-region AWS OpenSearch endpoints for multi-region deployments.
- Let AWS IAM policies govern which Drupal environment can read/write the OpenSearch domain.
- Verify SSL to the AWS OpenSearch endpoint while signing requests.
- Centralise AWS OpenSearch access for several Search API indexes on one server.
