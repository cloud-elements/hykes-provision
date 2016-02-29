#!/usr/bin/env bats

function clone-repo() {
  git clone "${HYKES_PROVISION_URL}" "${HYKES_PROVISION_PATH}"
}

function exists-repo() {
  test -d "${HYKES_PROVISION_PATH}"
}

function should-have-env() {
  if [ -z "${HYKES_PROVISION_PATH}" ] || [ -z "${HYKES_PROVISION_URL}" ]; then
    skip 'Environment variables should be available'
  fi
}

# TODO: Remove hard assumption that blueprint is not encrypted
function setup() {
  should-have-env && if ! exists-repo; then clone-repo; fi && cd "${HYKES_PROVISION_PATH}"
}
