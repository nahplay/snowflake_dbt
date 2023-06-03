#!/bin/bash

export GIT_BRANCH=$(git rev-parse --abbrev-ref HEAD)

docker-compose up -d --build
docker exec -it dbt_snowflake bash