#!/bin/bash
set -e

dbt deps

dbt seed --full-refresh

dbt run

dbt test