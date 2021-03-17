#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://stg-api.stackbit.com/pull/60521d3a1f08d3001863089d

# build site
npm run build

echo "stackbit-build.sh: finished build"
