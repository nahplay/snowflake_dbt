set -e

dbt deps

dbt seed --full-refresh

dbt docs generate