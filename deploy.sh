#!/usr/bin/env bash

[[ "${TRACE}" ]] && set -x
set -eou pipefail
shopt -s nullglob

main() {
  printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

  hugo

  cd public

  git add .

  git commit -m "$*"

  git push origin master
}

main "$@"
