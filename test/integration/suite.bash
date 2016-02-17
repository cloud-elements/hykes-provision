#!/usr/bin/env bats

function only-with-env() {
  if [ -z "${HYKES_PROVISION_PATH}" ]; then skip 'Environment variables should be available'; fi
}

function setup() {
  only-with-env
  build/bin/hykes-provision init "${HYKES_PROVISION_PATH}"
}
