#!/bin/bash

set -e

dbt deps

dbt seed --full-refresh

dbt docs generate

aws s3 cp target/catalog.json s3://$DBT_DOCS_BUCKET/catalog.json

aws s3 cp target/manifest.json s3://$DBT_DOCS_BUCKET/manifest.json

aws s3 cp target/index.html s3://$DBT_DOCS_BUCKET/index.html