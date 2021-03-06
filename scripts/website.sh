#!/usr/bin/env bash

# This downloads a set of key-value env variables, but blocks any requests that aren't from GitHub Actions
curl -g https://us-central1-clarity-design-system.cloudfunctions.net/actions -o .env
# dotenv loads up the env variables into the shell, then deploys through Netlify
npx dotenv -- npx netlify deploy --dir=./dist/website --message="Website - $GITHUB_REF@$GITHUB_SHA"