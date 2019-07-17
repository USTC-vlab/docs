#!/bin/bash

# entrypoint.sh: Docker-automated build

cd "$(dirname "$0")"

git remote update
git reset --hard origin/master
bundle check || bundle update

JEKYLL_ENV=production bundle exec jekyll build --destination /srv/site || exit
