#!/bin/bash

# entrypoint.sh: Docker-automated build

cd "$(dirname "$0")"

check_env() {
  : ${SOURCE:=_site}
  for key in HOST USER PASS TARGET; do
    if [ -z "${!key}" ]; then
      echo "Missing variable ${key}!" >&2
      exit 1
    fi
  done
}

update() {
  git remote update
  git reset --hard origin/master
  bundle check || bundle install
}

build() {
  # "build" should abort whole process at failure
  JEKYLL_ENV=production bundle exec jekyll build || exit
}

deploy() {
  lftp -c "
  open $HOST
  user $USER $PASS
  mirror --reverse --delete --verbose $SOURCE $TARGET
  bye
  "
}

cleanup() {
  # Keep the container clean
  rm -rf _site
}

check_env
update
build || exit
deploy
cleanup
