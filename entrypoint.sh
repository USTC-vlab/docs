#!/bin/sh

# entrypoint.sh: Docker-automated build

cd "$(dirname "$0")"

git remote update
git reset --hard origin/master
mkdocs build
